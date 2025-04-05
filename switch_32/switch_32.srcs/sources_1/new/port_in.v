`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/19 15:41:49
// Design Name: 
// Module Name: port_in
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


module port_in(
input               rstn,
input               clk,
//����ӿڵĽ����ź�
input               rx_clk,
input               wr_vld, //������Ч
input       [7:0]   wr_data,  //��������

//����--���
input wr_sop,
input wr_eop,
output full,
output almost_full,

//�����󼶺�·ģ��Ľӿ��ź�
input               data_fifo_rd, 
output      [7:0]   data_fifo_dout, //����fifo������
input               ptr_fifo_rd,     
output      [15:0]  ptr_fifo_dout,  //����fifo��ָ��
output              ptr_fifo_empty
);

//parameter CRC_RESULT_VALUE=32'h1a7fd255;

wire    nib_cnt_clr; //���ռ���������������ź�
reg     [2:0]   state;
reg     [11:0]  nib_cnt; //���ռ�����

always @(posedge rx_clk  or negedge rstn)begin
    if(!rstn)begin 
        nib_cnt<=#2 0;
    end
    else if(nib_cnt_clr) nib_cnt<=#2 1;   //��sop����һ���ڣ�Ȼ��valid�ź�����ʱ�����¿�ʼ����
    else if(!wr_vld & state==2) nib_cnt<=#2 nib_cnt;  //�����ݰ����������valid��ͣ�����ͣ����ʱ����������ͣ
    else begin
        nib_cnt<=#2 nib_cnt+1;        
    end
end

wire    [11:0]  data_fifo_depth;
reg     [15:0]  ptr_fifo_din;
reg             ptr_fifo_wr;
wire            ptr_fifo_full;
reg             write_en;    //�ڲ���������Ч��־��
wire    [31:0]  crc_result;
wire			bp;

assign bp=(data_fifo_depth>2578) | ptr_fifo_full; 

//============================================  
//��״̬��
//============================================  
always @(posedge rx_clk  or negedge rstn)
    if(!rstn)begin
        state<=#2 0;
        ptr_fifo_din<=#2 0;
        ptr_fifo_wr<=#2 0;
        write_en<=#2 0;
        end
    else begin
        case(state)
        0: begin
            if(wr_sop && !bp)begin   //�����wr_sop���ߣ�����ѹ��
                    state<=#2 1;   
                end
            else state<=#2 0;
            end
        1:begin               
            if(wr_vld)begin    //���һ���ں�sop��ͣ���vld����
                write_en<=#2 1;                  //write_en���ߣ�дʹ�ܴ�   
                state<=#2 2;           //����state 2�ȴ����ݰ������ź�
            end
            else state<=#2 0;
            end
        2:begin      
            if((!wr_vld) && (!wr_eop))begin          
                write_en<=#2 0;
                state<=#2 4 ;
            end                      
            else if((wr_eop)&&(!wr_vld))begin                   //���ݰ�����
                write_en<=#2 0;
                ptr_fifo_din[11:0]<=#2 nib_cnt[11:0];  //�����ݰ�������Ϣд�����ݰ���ָ�루��־��
                if((nib_cnt[11:0]<64) | (nib_cnt[11:0]>1024))ptr_fifo_din[14]<=#2 1'b1;   //���ݰ����Ȳ��Ϸ�����14λ����
                    else ptr_fifo_din[14]<=#2 1'b0;
                //if(crc_result==CRC_RESULT_VALUE)
                ptr_fifo_din[15]<=#2 1'b0;//CRC����У��ͨ������15λ����
                   // else ptr_fifo_din[15]<=#2 1'b1;                       //CRC����У�鲻ͨ������15λ����
                ptr_fifo_wr<=#2 1;      //дָ��ʹ�����ߣ�����ָ��FIFO
                state<=#2 3;
                end   
            end
        3:begin
            ptr_fifo_wr<=#2 0;
            state<=#2 0;
            end
        4:begin
            if(wr_vld)begin
                state<=#2 2;
                write_en<=#2 1; 
                end
            else state<=#2 4;
            end
        endcase
        end

assign  nib_cnt_clr=(wr_vld & (state==1)); //���ռ���������
assign  full=(data_fifo_depth>2578); //����FIFO��
assign  almost_full=(data_fifo_depth>2578); //����FIFO����

//============================================  
//�����õ�ģ��
//============================================  
//crc32_8023 u_crc32_8023(
//    .clk(rx_clk), 
//    .reset(!rstn), 
//    .d(wr_data), 
//    .load_init(wr_sop),
//    .calc(write_en), 
//    .d_valid(write_en), 
//    .crc_reg(crc_result), 
//    .crc()
//    );

afifo_w8_d4k u_data_fifo (
  .rst(!rstn),                      // input rst
  .wr_clk(rx_clk),                  // input wr_clk
  .rd_clk(clk),                     // input rd_clk
  .din(wr_data),              // input [15 : 0] din
  .wr_en(write_en),        // input wr_en
  .rd_en(data_fifo_rd),             // input rd_en
  .dout(data_fifo_dout),            // output [15 : 0]       
  .full(), 
  .empty(), 
  .rd_data_count(), 				// output [11 : 0] rd_data_count
  .wr_data_count(data_fifo_depth) 	// output [11 : 0] wr_data_count
);

afifo_w16_d32 u_ptr_fifo (
  .rst(!rstn),                      // input rst
  .wr_clk(rx_clk),                  // input wr_clk
  .rd_clk(clk),                     // input rd_clk
  .din(ptr_fifo_din),               // input [15 : 0] din
  .wr_en(ptr_fifo_wr),              // input wr_en
  .rd_en(ptr_fifo_rd),              // input rd_en
  .dout(ptr_fifo_dout),             // output [15 : 0] dout
  .full(ptr_fifo_full),             // output full
  .empty(ptr_fifo_empty)            // output empty
);
endmodule
