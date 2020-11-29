module PLICFanIn( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90362.2]
  input  [1:0] io_prio_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90365.4]
  input  [1:0] io_prio_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90365.4]
  input  [1:0] io_ip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90365.4]
  output [1:0] io_dev, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90365.4]
  output [1:0] io_max // @[:freechips.rocketchip.system.DefaultRV32Config.fir@90365.4]
);
  wire [2:0] effectivePriority_1; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90373.4]
  wire [2:0] effectivePriority_2; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90374.4]
  wire  _T_2; // @[Plic.scala 338:20:freechips.rocketchip.system.DefaultRV32Config.fir@90375.4]
  wire [2:0] _T_4; // @[Misc.scala 34:9:freechips.rocketchip.system.DefaultRV32Config.fir@90377.4]
  wire  _T_5; // @[Misc.scala 34:36:freechips.rocketchip.system.DefaultRV32Config.fir@90378.4]
  wire  _T_6; // @[Plic.scala 338:20:freechips.rocketchip.system.DefaultRV32Config.fir@90379.4]
  wire [2:0] maxPri; // @[Misc.scala 34:9:freechips.rocketchip.system.DefaultRV32Config.fir@90381.4]
  assign effectivePriority_1 = {io_ip[0],io_prio_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90373.4]
  assign effectivePriority_2 = {io_ip[1],io_prio_1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@90374.4]
  assign _T_2 = 3'h4 >= effectivePriority_1; // @[Plic.scala 338:20:freechips.rocketchip.system.DefaultRV32Config.fir@90375.4]
  assign _T_4 = _T_2 ? 3'h4 : effectivePriority_1; // @[Misc.scala 34:9:freechips.rocketchip.system.DefaultRV32Config.fir@90377.4]
  assign _T_5 = _T_2 ? 1'h0 : 1'h1; // @[Misc.scala 34:36:freechips.rocketchip.system.DefaultRV32Config.fir@90378.4]
  assign _T_6 = _T_4 >= effectivePriority_2; // @[Plic.scala 338:20:freechips.rocketchip.system.DefaultRV32Config.fir@90379.4]
  assign maxPri = _T_6 ? _T_4 : effectivePriority_2; // @[Misc.scala 34:9:freechips.rocketchip.system.DefaultRV32Config.fir@90381.4]
  assign io_dev = _T_6 ? {{1'd0}, _T_5} : 2'h2; // @[Plic.scala 345:10:freechips.rocketchip.system.DefaultRV32Config.fir@90384.4]
  assign io_max = maxPri[1:0]; // @[Plic.scala 344:10:freechips.rocketchip.system.DefaultRV32Config.fir@90383.4]
endmodule
