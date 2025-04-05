`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/03 21:45:17
// Design Name: 
// Module Name: switch_pre
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


//���ܣ�������֡�ָ�ɶ��64�ֽڵ���Ԫ����չλ��
module switch_pre(
input					clk,
input					rstn,
//��frame_process���������֡��
input					sof, // ֡��ʼ�ź�
input					dv,  // ������Ч�ź�
input		  	[7:0]	din, // 8λ�����������
//����λ��任����switch_core�ӿڵ��źţ����ü򵥶��нṹ���ӿڻ�����λ�ں�
output	reg		[127:0]	i_cell_data_fifo_dout, // ���������128λ��
output	reg		 		i_cell_data_fifo_wr,   // �������дʹ��
output	reg		[15:0]	i_cell_ptr_fifo_dout,  // ָ�����
output	reg				i_cell_ptr_fifo_wr,	   // ָ�����дʹ��
input					i_cell_bp			   // �󼶻�����ѹ��ָʾ������			
    );
reg	  	[7:0]	word_num;	//��¼д��󼶵�·��128λ���ݵĸ�������word_numѭ��������λ����4�����Ϳ��Եõ�д��󼶵�·����Ԫ����
reg	  	[4:0]	state;
reg		[3:0]	i_cell_portmap;	 	// ��Ԫ�˿�ӳ�䣨��¼�������ݵ��ض�λ��		

//������һ֡��״̬������Ӧ��ָ��д��ӿڶ��У���ʱд��Ĳ���֡���ȣ����ǵ�ǰ֡��Ӧ����Ԫ����
//ÿ����128λ���ݣ��������ݻ�����д��һ��
always@(posedge clk or negedge rstn)
	if(!rstn)
		begin
		// �첽��λ����ʼ�����мĴ���
		word_num<=#2  0;  //�����д���ĺ����ǣ��ڵ�ǰʱ��֮��� 2 ��ʱ�䵥λ���� word_num �� state ������ֵ����Ϊ 0��
		state<=#2  0;
		i_cell_data_fifo_dout<=#2  0;
		i_cell_portmap<=#2  0;
		i_cell_data_fifo_wr<=#2  0;
		i_cell_ptr_fifo_dout<=#2  0;
		i_cell_ptr_fifo_wr<=#2  0;	
		end
	else begin
		// Ĭ��״̬��ÿ���ڹر�дʹ��
		i_cell_data_fifo_wr<=#2  0;
		i_cell_ptr_fifo_wr<=#2  0;
		case(state)
		0:begin
			word_num<=#2  0;
			if(sof & !i_cell_bp)begin
				// �����֡�Ŀ�ʼ�����Һ���ѹ������ʼ����
				i_cell_data_fifo_dout[127:120]<=#2  din;
				i_cell_portmap<=#2  din[3:0]; //��ȡport��Ϣ
				state<=#2  1;
				end
			end

		// ���¸�״̬�����𲽽������8λ����װ�128λ���������ݼĴ�����
		1:begin
			i_cell_data_fifo_dout[119:112]<=#2  din;
			state<=#2  2;
			end
		2:begin
			i_cell_data_fifo_dout[111:104]<=#2  din;
			state<=#2  3;
			end
		3:begin
			i_cell_data_fifo_dout[103:96]<=#2  din;
			state<=#2  4;
			end
		4:begin
			i_cell_data_fifo_dout[95:88]<=#2  din;
			state<=#2  5;
			end
		5:begin
			i_cell_data_fifo_dout[87:80]<=#2  din;
			state<=#2  6;
			end
		6:begin
			i_cell_data_fifo_dout[79:72]<=#2  din;
			state<=#2  7;
			end
		7:begin
			i_cell_data_fifo_dout[71:64]<=#2  din;
			state<=#2  8;
		  end
		8:begin
			i_cell_data_fifo_dout[63:56]<=#2  din;
			state<=#2  9;
			end
		9:begin
			i_cell_data_fifo_dout[55:48]<=#2  din;
			state<=#2  10;
			end
		10:begin
			i_cell_data_fifo_dout[47:40]<=#2  din;
			state<=#2  11;
			end
		11:begin
			i_cell_data_fifo_dout[39:32]<=#2  din;
			state<=#2  12;
			end
		12:begin
			i_cell_data_fifo_dout[31:24]<=#2  din;
			state<=#2  13;
			end
		13:begin
			i_cell_data_fifo_dout[23:16]<=#2  din;
			state<=#2  14;
			end
		14:begin
			i_cell_data_fifo_dout[15:8]<=#2  din;
			state<=#2  15;
		  end
		15:begin
			 // ���һ��128λ������ݿ��װ��
			i_cell_data_fifo_dout[7:0]<=#2  din;
			i_cell_data_fifo_wr<=#2  1;
			word_num<=#2  word_num+1;
			state<=#2  16;
		  end
		16:begin
			// ����Ƿ��и���������Ҫ����
			if(dv) begin
				i_cell_data_fifo_dout[127:120]<=#2  din;
				state<=#2 1;
				end
			else begin
				// ���û�и������ݣ��������ǰ��Ԫ��ָ����Ϣ
				i_cell_ptr_fifo_dout<=#2  {4'b0,i_cell_portmap[3:0],2'b0,word_num[7:2]}; //ָ�������Port��Ϣ���ж��ٸ���Ԫ��������4��
				i_cell_ptr_fifo_wr<=#2  1;
				state<=#2 0;
				end
			end
		endcase
		end
endmodule
