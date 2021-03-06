gui_open_window Wave
gui_sg_create BASIC_CLOCKS_group
gui_list_add_group -id Wave.1 {BASIC_CLOCKS_group}
gui_sg_addsignal -group BASIC_CLOCKS_group {BASIC_CLOCKS_tb.test_phase}
gui_set_radix -radix {ascii} -signals {BASIC_CLOCKS_tb.test_phase}
gui_sg_addsignal -group BASIC_CLOCKS_group {{Input_clocks}} -divider
gui_sg_addsignal -group BASIC_CLOCKS_group {BASIC_CLOCKS_tb.CLK_IN1}
gui_sg_addsignal -group BASIC_CLOCKS_group {{Output_clocks}} -divider
gui_sg_addsignal -group BASIC_CLOCKS_group {BASIC_CLOCKS_tb.dut.clk}
gui_list_expand -id Wave.1 BASIC_CLOCKS_tb.dut.clk
gui_sg_addsignal -group BASIC_CLOCKS_group {{Status_control}} -divider
gui_sg_addsignal -group BASIC_CLOCKS_group {BASIC_CLOCKS_tb.RESET}
gui_sg_addsignal -group BASIC_CLOCKS_group {{Counters}} -divider
gui_sg_addsignal -group BASIC_CLOCKS_group {BASIC_CLOCKS_tb.COUNT}
gui_sg_addsignal -group BASIC_CLOCKS_group {BASIC_CLOCKS_tb.dut.counter}
gui_list_expand -id Wave.1 BASIC_CLOCKS_tb.dut.counter
gui_zoom -window Wave.1 -full
