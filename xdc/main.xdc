# +------------------------------------------------------+
# |Coded by: circuitfever.com                            |
# |License: MIT License                                  |
# |Description: zedboard constraints file for PUF        |
# +------------------------------------------------------+
set_property -dict { PACKAGE_PIN Y9    IOSTANDARD LVCMOS33 } [get_ports { clk }];

set_property -dict { PACKAGE_PIN P16    IOSTANDARD LVCMOS33 } [get_ports { en }];

set_property -dict { PACKAGE_PIN F22   IOSTANDARD LVCMOS33 } [get_ports { challenge[0] }];
set_property -dict { PACKAGE_PIN G22   IOSTANDARD LVCMOS33 } [get_ports { challenge[1] }];
set_property -dict { PACKAGE_PIN H22   IOSTANDARD LVCMOS33 } [get_ports { challenge[2] }];
set_property -dict { PACKAGE_PIN F21   IOSTANDARD LVCMOS33 } [get_ports { challenge[3] }];
set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports { challenge[4] }];
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { challenge[5] }];
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { challenge[6] }];
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { challenge[7] }];

set_property -dict { PACKAGE_PIN T22   IOSTANDARD LVCMOS33 } [get_ports { response[0] }];
set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { response[1] }];
set_property -dict { PACKAGE_PIN U22   IOSTANDARD LVCMOS33 } [get_ports { response[2] }];
set_property -dict { PACKAGE_PIN U21   IOSTANDARD LVCMOS33 } [get_ports { response[3] }];
set_property -dict { PACKAGE_PIN V22   IOSTANDARD LVCMOS33 } [get_ports { response[4] }];
set_property -dict { PACKAGE_PIN W22   IOSTANDARD LVCMOS33 } [get_ports { response[5] }];
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { response[6] }];
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { response[7] }];