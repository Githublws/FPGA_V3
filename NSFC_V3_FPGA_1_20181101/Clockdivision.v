`timescale 1ns / 1ps

/******************************************************************
                          Ê±ÖÓ·ÖÆµÄ£¿é
******************************************************************/

module CLK_distribution( 

input CLKIN,
input Reset,
output SYN1,
output CLK1,
output CLK2,
output CLK3);

reg CLK_W;
reg SYN1_R;
reg[19:0] Count;

assign SYN1=SYN1_R;
assign CLK1=CLK_W;
assign CLK2=CLK_W;
assign CLK3=CLK_W;

always @(posedge CLKIN)
if(!Reset) 
  begin 
    CLK_W<=0;
	 Count<=0;
	 SYN1_R<=0;
  end
else
  begin
	Count<=Count+1;
	if((Count=='d10) && (SYN1_R==0))
	    SYN1_R<=1;
	if(Count=='d60) 
	  begin 
	    CLK_W<=~CLK_W;
		 Count<='d10;
	  end
  end
endmodule
