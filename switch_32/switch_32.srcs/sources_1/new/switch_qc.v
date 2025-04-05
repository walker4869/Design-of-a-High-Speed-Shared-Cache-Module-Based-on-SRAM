`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/04 14:04:41
// Design Name: 
// Module Name: switch_qc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module switch_qc(
input					clk,
input					rstn,
//ָ��д��˿�
input		  [15:0]	q_din,	//��Ҫд��ָ����е�ָ�룬��16λ�͵�15λ�ֱ�Ϊβ��Ԫ������Ԫָʾλ
input					q_wr,	//ָ��дʹ���ź�
output					q_full, //����ָ��FIFO���ź�
//ָ������˿�
output					ptr_rdy,	//����������������֡�����Խ���ָ���ȡ
input					ptr_ack,	//ָ����ź�
output		  [15:0]	ptr_dout	//��Ҫ�������һ����Ԫ��Ӧ��ָ�룬��16λ�͵�15λ�ֱ�Ϊβ��Ԫ������Ԫָʾλ
    );

reg	  [15:0]	ptr_din;
reg				ptr_wr;
reg				q_rd;
wire  [15:0]	q_dout;
wire			q_empty;
//����ָ��FIFO�����ڶ�д���ָ����л���
sfifo_w16_d32 u_ptr_wr_fifo (
  .clk(clk),
  .srst(!rstn), 
  .din(q_din[15:0]), 
  .wr_en(q_wr), 
  .rd_en(q_rd),
  .dout(q_dout), 
  .full(q_full),
  .empty(q_empty),
  .data_count()
);		
/* wr_state���ڽ�������д������
 * rd_state���ڽ���ָ���ȡ����
 * mstate���ڽ�������ά��
 * 
 * ����������Ϊ����洢��SRAM�У�����ͬʱ������洢�����ж�д����
 * ���д��Ͷ�������Ҫʹ������-Ӧ��ʽ����
*/
reg	  [1:0]		wr_state;
reg				ptr_wr_ack; // ָ��дӦ���ź�
always@(posedge clk or negedge rstn)
	if(!rstn)begin
		ptr_din<=#2  0;
		ptr_wr<=#2  0;
		q_rd<=#2  0;
		wr_state<=#2  0;
		end
	else begin
		//��״̬��������ָ��FIFO�ж�ȡָ�룬������-Ӧ��ʽͨ��mstateд������
		case(wr_state)			
		0:begin					
			if(!q_empty)begin
				q_rd<=#2  1;
				wr_state<=#2  1;//���գ��ɶ�
				end
		  end
		1:begin
			q_rd<=#2  0;//���ɶ�
			wr_state<=#2  2;
		  end
		2:begin
			ptr_din<=#2  q_dout[15:0];	//����Ԫ�Ŀ���֡����	
			ptr_wr<=#2  1;
			wr_state<=#2  3;
			end
		3:begin
			if(ptr_wr_ack)begin	
				ptr_wr<=#2  0;
				wr_state<=#2  0;
				end
			end
		endcase
		end




reg				ptr_rd;  //ָ���������Ĵ�����rd_state������mstate��������ָ���������
reg	  [15:0]	ptr_fifo_din; //ָ��Ĵ��������ڼĴ�����������ָ��
reg				ptr_rd_ack;	//ָ�����Ӧ��Ĵ�����mstate������rd_state���Ͷ���Ӧ��

reg	  [15:0]	head; //����ͷ�Ĵ���
reg	  [15:0]	tail; //����β�Ĵ���
reg	  [15:0]	depth_cell; //��Ԫ��ȼ�����
reg   			depth_flag; //����֡��ȱ�ʶ�Ĵ�����depth frame����0ʱdepth flagΪ1������depth_flagΪ0
reg	  [15:0]	depth_frame; //����֡��ȼ�����

reg	  [15:0]	ptr_ram_din;
wire  [15:0]	ptr_ram_dout;
reg				ptr_ram_wr;
reg   [9:0]		ptr_ram_addr;

reg	  [3:0]		mstate;

always@(posedge clk or negedge rstn)
	if(!rstn)	begin
		mstate<=#2  0;
		ptr_ram_wr<=#2  0;
		ptr_wr_ack<=#2  0;
		head <=#2  0;	
		tail <=#2  0;	
		depth_cell <=#2  0;	
		depth_frame<=#2  0;
		ptr_rd_ack<=#2  0;
		ptr_ram_din<=#2  0;
		ptr_ram_addr<=#2  0;
		ptr_fifo_din<=#2  0;
		depth_flag<=#2 0;
		end
	else begin
		ptr_wr_ack<=#2  0;	
		ptr_rd_ack<=#2  0;	
		ptr_ram_wr<=#2  0;	
		case(mstate)					
		0:begin							
			if(ptr_wr)begin
				mstate<=#2  1;
				end
			else if(ptr_rd)
				begin					
				ptr_fifo_din<=#2  head;
				ptr_ram_addr[9:0]<=#2  head[9:0];
				mstate<=#2  3;
				end
		  end
		  /*״̬1,2��������д��*/
		1:begin
			//�����ǰ���зǿգ���ָ����ӵ�����β��
			if(depth_cell[9:0])	begin	
				ptr_ram_wr<=#2  1;
				ptr_ram_addr[9:0]<=#2  tail[9:0];
				ptr_ram_din[15:0]<=#2  ptr_din[15:0];
				tail<=#2  ptr_din;
				end
			//�����ǰ���пգ���ָ����ӵ�����β��
			else begin
				ptr_ram_wr<=#2  1;			
				ptr_ram_addr[9:0]<=#2  ptr_din[9:0];
				ptr_ram_din[15:0]<=#2  ptr_din[15:0];
				tail<=#2  ptr_din;
				head<=#2  ptr_din;
				end	
			//��Ԫ��ȼ�������ֵ��1�������ǰ��ԪΪ����֡β��Ԫ��ptr_din[15]Ϊ1����������֡��ȼ�������1
			depth_cell<=#2 depth_cell+1;
			if(ptr_din[15])	begin		
				depth_flag<=#2 1;
				depth_frame<=#2 depth_frame+1;
				end
			ptr_wr_ack<=#2  1;				
			mstate<=#2  2;
			end
		2:begin
			ptr_ram_addr<=#2  tail[9:0];
			ptr_ram_din	<=#2  tail[15:0];
			ptr_ram_wr<=#2  1;
			mstate<=#2  0;
		  end
		/*״̬3,4�����������*/
		3:begin
			ptr_rd_ack<=#2  1;				
			mstate<=#2  4;
		  end
		4:begin
			//����һ��ָ��󣬸���head������Ԫ��������ֵ��1. 
			//�����ָ��ָ�����һ������֡β��Ԫ��head[15]Ϊ1����������֡��ȼ�������1
			//�����ֵ��1��Ϊ0����depth_flag����
			head<=#2  ptr_ram_dout;
			depth_cell<=#2 depth_cell-1;
			if(head[15]) begin
				depth_frame<=#2  depth_frame-1;
				if(depth_frame>1) depth_flag<=#2 1;
				else depth_flag<=#2 0;
				end
			mstate<=#2  0;
		  end
		endcase
		end
/*rd_stateָ���Ƕ�������״̬��
 * �ڴ洢���ָ���FIFO����������������������֡��Ӧ��ָ��ʱ��
 * �����������ǰ��ͷָ�벢������fifo�У������й������еĶ���״̬����ȡ
*/		
reg   [2:0]	rd_state;
wire		ptr_full;
wire		ptr_empty;
assign ptr_rdy=!ptr_empty;	

always@(posedge clk or negedge rstn)
	if(!rstn)
		begin
		ptr_rd<=#2  0;	
		rd_state<=#2  0;
		end
	else
		begin
		case(rd_state)					
		0:begin							
			if(depth_flag && !ptr_full)begin
				rd_state<=#2  1;
				ptr_rd<=#2  1;
				end
		  end
		1:begin
			if(ptr_rd_ack)begin
				ptr_rd<=#2  0;
				rd_state<=#2  2;
				end
			end
		2:rd_state<=#2  0;
		endcase
		end
//ָ������洢��
sram_w16_d512 u_ptr_ram (
  .clka(clk), 			
  .wea(ptr_ram_wr),     
  .addra(ptr_ram_addr[8:0]), 
  .dina(ptr_ram_din),   
  .douta(ptr_ram_dout) 
);		
//�������ָ���FIFO������fall_throughģʽ
sfifo_ft_w16_d32 u_ptr_fifo0 (
  .clk(clk),
  .srst(!rstn), 					
  .din(ptr_fifo_din[15:0]), 	
  .wr_en(ptr_rd_ack), 	
  .rd_en(ptr_ack), 	
  .dout(ptr_dout[15:0]), 		
  .full(ptr_full), 		
  .empty(ptr_empty),
  .data_count()  
);
endmodule
