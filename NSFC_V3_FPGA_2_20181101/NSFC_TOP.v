`timescale 1ns / 1ps
/********************************************************************************
                           顶层模块
作用：产生系统所需时钟
									
/********************************************************************************/
module NSFC_TOP(
    input CLK0,Reset,SYN1OUT, //系统主时钟与复位。
    output DRV2
	);         
 
 wire CLK_5M;
 
 //基本时钟, 输入50M，输出5M
  BASIC_CLOCKS U1
   (// Clock in ports
    .CLK_IN1(CLK0),   // IN-50M
    // Clock out ports
    .CLK_OUT1(CLK_5M),     // Out-5M
    .RESET(~Reset));        
  
 //100K时钟
  CLK_distribution U2
  (
    .CLKIN(CLK_5M), //CLK_5M
	 .Reset(Reset),
	 .SYN1OUT(SYN1OUT),
	 .DRV2(DRV2));
  
endmodule
