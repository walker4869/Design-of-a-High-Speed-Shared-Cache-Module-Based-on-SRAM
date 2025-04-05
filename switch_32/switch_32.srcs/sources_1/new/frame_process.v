`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/18 20:05:33
// Design Name: 
// Module Name: frame_process
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


module frame_process(
input                	clk,
input                   rstn,
output  reg             sfifo_rd, //合路数据读信号
input   [7:0]          sfifo_dout, //合路数据输出
output  reg             ptr_sfifo_rd, //合路指针读信号
input   [15:0]          ptr_sfifo_dout, //合路指针输出，前10位为长度，11-14位为端口号
input                   ptr_sfifo_empty,          

input                   bp0,
input                   bp1,
input                   bp2,
input                   bp3,
input                   bp4,
input                   bp5,
input                   bp6,
input                   bp7,
input                   bp8,
input                   bp9,
input                   bp10,
input                   bp11,
input                   bp12,
input                   bp13,
input                   bp14,
input                   bp15,

output  reg             sof,
output  reg             dv,
output  reg  [7:0]      data    
);

reg     [5:0]      state;
reg     [10:0]     cnt;
reg     [11:0]     length;
reg     [5:0]      pad_cnt;
always@(posedge clk or negedge rstn)begin
    if(!rstn)begin
        sfifo_rd<=#2 0;
        ptr_sfifo_rd<=#2 0;
        sof<=#2 0;
        dv<=#2 0;
        data<=#2 0;
        state<=#2 0;
        cnt<=#2 0;
        end
    else  begin
        case(state)
        0:begin
            dv<=#2 0;
            if(!ptr_sfifo_empty)begin
                ptr_sfifo_rd<=#2 1;   	
                state<=#2 1;         	
                end
            end
        1:begin
            ptr_sfifo_rd<=#2 0; //读指针信号拉高一周期后拉低
            state<=#2 2;
            end
        2:begin
            sfifo_rd<=#2 1;	    //读数据信号拉高
            state<=#2 3;
            end
        3:begin
            cnt<=#2 ptr_sfifo_dout[10:0];			//寄存数据包长度	
            length<=#2 {1'b0,ptr_sfifo_dout[10:0]};	//有效帧长度		
            state<=#2 4;
            end
        //开始向后级电路发送数据帧
        4:begin
            pad_cnt<=#2 ~length[5:0];
            data<=#2 sfifo_dout;
            cnt<=#2 cnt-1;
            dv<=#2 1;
            sof<=#2 1;  
            state<=#2 5;
            end
        5:begin
            data<=#2 sfifo_dout;
            cnt<=#2 cnt-1;
            sof<=#2 0;
            state<=#2 6;
            end
        6:begin
            data<=#2 sfifo_dout;
            if(cnt>2) cnt<=#2 cnt-1;
            else begin
                cnt<=#2 0;
                sfifo_rd<=#2 0;
                state<=#2 7;
                end
            end
        7: begin
            data<=#2 sfifo_dout;
			state<=#2 8;
			end
		8:begin
            data<=#2 0;
            if(pad_cnt==6'd63)begin
				dv<=#2 0;
				state<=#2 0;
				end
			else begin
			    data<=#2 0;
				state<=#2 9;
                end
            end
		9:begin
			if(pad_cnt>0) begin
				data<=#2 data+1;
				pad_cnt<=#2 pad_cnt-1;
				end
			else begin
				dv<=#2 0;
				state<=#2 0;
				end
			end
        endcase
        end
    end
endmodule
