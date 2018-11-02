`timescale 1ns / 1ps
/********************************************************************************
                           ����ģ��
���ã�����ϵͳ����ʱ��
									
/********************************************************************************/
module NSFC_TOP(
    input CLK0,Reset, //ϵͳ��ʱ���븴λ��
    output SYN1,DRV1,REF1,REF2
	);         
 
 wire CLK_5M;
 
 //����ʱ��, ����50M�����5M
  BASIC_CLOCKS U1
   (// Clock in ports
    .CLK_IN1(CLK0),   // IN-50M
    // Clock out ports
    .CLK_OUT1(CLK_5M),     // Out-5M
    .RESET(~Reset));        
  
 //100Kʱ��
  CLK_distribution U2
  (
    .CLKIN(CLK_5M), //CLK_5M
	 .Reset(Reset),
	 .SYN1(SYN1),
    .CLK1(DRV1),
	 .CLK2(REF1),
	 .CLK3(REF2));
  
endmodule
