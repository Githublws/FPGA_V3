`timescale 1ns / 1ps

/******************************************************************
                          Ê±ÖÓ·ÖÆµÄ£¿é
******************************************************************/

module CLK_distribution( 

input CLKIN,
input Reset,
input SYN1OUT,
output DRV2);

reg CLK_W;
reg[5:0] Count;

assign DRV2=CLK_W;

always @(posedge CLKIN)
if(!Reset) 
  begin 
    CLK_W<=0;
	 Count<=0;
  end
else
  begin
	if(SYN1OUT==0)
    begin	
	  Count<=Count+1;
	  if(Count=='d50)
	  begin 
	    CLK_W<=~CLK_W;
		 Count<=0;
	  end
	 end 
  end
endmodule
