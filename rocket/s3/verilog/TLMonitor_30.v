module TLMonitor_30( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72580.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72581.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72582.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [2:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [1:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [2:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input  [1:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@73870.4]
  wire [12:0] _T_14; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@72606.6]
  wire [5:0] _T_16; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@72608.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@72609.6]
  wire [31:0] _T_17; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@72609.6]
  wire  _T_18; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@72610.6]
  wire [1:0] _T_21; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@72613.6]
  wire [1:0] _T_23; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@72615.6]
  wire  _T_24; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@72616.6]
  wire  _T_27; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@72619.6]
  wire  _T_29; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72621.6]
  wire  _T_30; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72622.6]
  wire  _T_32; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72624.6]
  wire  _T_33; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72625.6]
  wire  _T_36; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@72628.6]
  wire  _T_37; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72629.6]
  wire  _T_38; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72630.6]
  wire  _T_39; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72631.6]
  wire  _T_40; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72632.6]
  wire  _T_41; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72633.6]
  wire  _T_42; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72634.6]
  wire  _T_43; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72635.6]
  wire  _T_44; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72636.6]
  wire  _T_45; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72637.6]
  wire  _T_46; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72638.6]
  wire  _T_47; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72639.6]
  wire  _T_48; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72640.6]
  wire [3:0] _T_51; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@72643.6]
  wire  _T_70; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@72666.6]
  wire [31:0] _T_72; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@72669.8]
  wire [32:0] _T_73; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@72670.8]
  wire [32:0] _T_75; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@72672.8]
  wire  _T_76; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@72673.8]
  wire  _T_81; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72678.8]
  wire  _T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72699.8]
  wire  _T_91; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72700.8]
  wire  _T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72706.8]
  wire  _T_94; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72707.8]
  wire  _T_95; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@72712.8]
  wire  _T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72714.8]
  wire  _T_98; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72715.8]
  wire [3:0] _T_99; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@72720.8]
  wire  _T_100; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@72721.8]
  wire  _T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72723.8]
  wire  _T_103; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72724.8]
  wire  _T_104; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@72729.8]
  wire  _T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72731.8]
  wire  _T_107; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72732.8]
  wire  _T_108; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@72738.6]
  wire  _T_137; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@72792.8]
  wire  _T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72794.8]
  wire  _T_140; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72795.8]
  wire  _T_150; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@72818.6]
  wire  _T_152; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@72821.8]
  wire  _T_160; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@72829.8]
  wire  _T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72832.8]
  wire  _T_164; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72833.8]
  wire  _T_171; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@72852.8]
  wire  _T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72854.8]
  wire  _T_174; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72855.8]
  wire  _T_175; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@72860.8]
  wire  _T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72862.8]
  wire  _T_178; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72863.8]
  wire  _T_183; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@72877.6]
  wire  _T_212; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@72928.6]
  wire [3:0] _T_237; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@72970.8]
  wire [3:0] _T_238; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@72971.8]
  wire  _T_239; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@72972.8]
  wire  _T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72974.8]
  wire  _T_242; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72975.8]
  wire  _T_243; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@72981.6]
  wire  _T_261; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@73012.8]
  wire  _T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73014.8]
  wire  _T_264; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73015.8]
  wire  _T_269; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@73029.6]
  wire  _T_287; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@73060.8]
  wire  _T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73062.8]
  wire  _T_290; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73063.8]
  wire  _T_295; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@73077.6]
  wire  _T_313; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@73108.8]
  wire  _T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73110.8]
  wire  _T_316; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73111.8]
  wire  _T_325; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@73135.6]
  wire  _T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73137.6]
  wire  _T_328; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73138.6]
  wire  _T_339; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@73155.6]
  wire  _T_343; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@73164.8]
  wire  _T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73166.8]
  wire  _T_346; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73167.8]
  wire  _T_351; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@73180.8]
  wire  _T_353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73182.8]
  wire  _T_354; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73183.8]
  wire  _T_355; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@73188.8]
  wire  _T_357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73190.8]
  wire  _T_358; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73191.8]
  wire  _T_359; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@73197.6]
  wire  _T_387; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@73255.6]
  wire  _T_407; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@73296.8]
  wire  _T_409; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73298.8]
  wire  _T_410; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73299.8]
  wire  _T_416; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@73314.6]
  wire  _T_433; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@73349.6]
  wire  _T_451; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@73385.6]
  wire  _T_483; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@73451.4]
  wire  _T_490; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@73458.4]
  reg [3:0] _T_492; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@73460.4]
  wire [3:0] _T_494; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73462.4]
  wire  _T_495; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73463.4]
  reg [2:0] _T_503; // @[Monitor.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@73474.4]
  reg [2:0] _T_504; // @[Monitor.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@73475.4]
  reg [2:0] _T_505; // @[Monitor.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@73476.4]
  reg [1:0] _T_506; // @[Monitor.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@73477.4]
  reg [31:0] _T_507; // @[Monitor.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@73478.4]
  wire  _T_508; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@73479.4]
  wire  _T_509; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@73480.4]
  wire  _T_510; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@73482.6]
  wire  _T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73484.6]
  wire  _T_513; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73485.6]
  wire  _T_514; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@73490.6]
  wire  _T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73492.6]
  wire  _T_517; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73493.6]
  wire  _T_518; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@73498.6]
  wire  _T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73500.6]
  wire  _T_521; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73501.6]
  wire  _T_522; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@73506.6]
  wire  _T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73508.6]
  wire  _T_525; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73509.6]
  wire  _T_526; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@73514.6]
  wire  _T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73516.6]
  wire  _T_529; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73517.6]
  wire  _T_531; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@73524.4]
  wire  _T_532; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@73532.4]
  wire [12:0] _T_534; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@73534.4]
  wire [5:0] _T_536; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@73536.4]
  reg [3:0] _T_540; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@73540.4]
  wire [3:0] _T_542; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73542.4]
  wire  _T_543; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73543.4]
  reg [2:0] _T_551; // @[Monitor.scala 532:22:freechips.rocketchip.system.DefaultRV32Config.fir@73554.4]
  reg [2:0] _T_553; // @[Monitor.scala 534:22:freechips.rocketchip.system.DefaultRV32Config.fir@73556.4]
  reg [1:0] _T_554; // @[Monitor.scala 535:22:freechips.rocketchip.system.DefaultRV32Config.fir@73557.4]
  reg  _T_556; // @[Monitor.scala 537:22:freechips.rocketchip.system.DefaultRV32Config.fir@73559.4]
  wire  _T_557; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@73560.4]
  wire  _T_558; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@73561.4]
  wire  _T_559; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@73563.6]
  wire  _T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73565.6]
  wire  _T_562; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73566.6]
  wire  _T_567; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@73579.6]
  wire  _T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73581.6]
  wire  _T_570; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73582.6]
  wire  _T_571; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@73587.6]
  wire  _T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73589.6]
  wire  _T_574; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73590.6]
  wire  _T_579; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@73603.6]
  wire  _T_581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73605.6]
  wire  _T_582; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73606.6]
  wire  _T_584; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@73613.4]
  reg [3:0] inflight; // @[Monitor.scala 608:27:freechips.rocketchip.system.DefaultRV32Config.fir@73622.4]
  reg [15:0] inflight_opcodes; // @[Monitor.scala 610:35:freechips.rocketchip.system.DefaultRV32Config.fir@73623.4]
  reg [15:0] inflight_sizes; // @[Monitor.scala 612:33:freechips.rocketchip.system.DefaultRV32Config.fir@73624.4]
  reg [3:0] _T_594; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@73634.4]
  wire [3:0] _T_596; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73636.4]
  wire  a_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73637.4]
  reg [3:0] _T_612; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@73656.4]
  wire [3:0] _T_614; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73658.4]
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73659.4]
  wire [3:0] _GEN_57; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@73678.4]
  wire [4:0] _T_622; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@73678.4]
  wire [15:0] _T_623; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@73679.4]
  wire [15:0] _T_627; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@73683.4]
  wire [15:0] _T_628; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@73684.4]
  wire [15:0] _T_629; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@73685.4]
  wire [15:0] _T_631; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@73690.4]
  wire [15:0] _T_636; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@73695.4]
  wire [15:0] _T_637; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@73696.4]
  wire  _T_641; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@73721.4]
  wire [3:0] _T_643; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@73724.6]
  wire [3:0] _T_644; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@73726.6]
  wire [3:0] _T_645; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@73727.6]
  wire [3:0] _T_646; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@73729.6]
  wire [3:0] _T_647; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@73730.6]
  wire [3:0] _GEN_61; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@73732.6]
  wire [4:0] _T_648; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@73732.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  wire [34:0] _GEN_62; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@73733.6]
  wire [34:0] _T_649; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@73733.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  wire [34:0] _GEN_64; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@73736.6]
  wire [34:0] _T_651; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@73736.6]
  wire [3:0] _T_652; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@73738.6]
  wire  _T_654; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@73740.6]
  wire  _T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73742.6]
  wire  _T_657; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73743.6]
  wire [3:0] a_set; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  wire [34:0] _GEN_18; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  wire [34:0] _GEN_19; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  wire  _T_660; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@73757.4]
  wire  _T_662; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@73759.4]
  wire  _T_663; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@73760.4]
  wire [3:0] _T_664; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@73762.6]
  wire [46:0] _GEN_66; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@73769.6]
  wire [46:0] _T_670; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@73769.6]
  wire [3:0] d_clr; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@73761.4]
  wire [46:0] _GEN_21; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@73761.4]
  wire  _T_677; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@73779.4]
  wire  _T_680; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@73782.4]
  wire [3:0] _T_681; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@73784.6]
  wire  _T_683; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@73786.6]
  wire  _T_684; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@73787.6]
  wire  _T_685; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@73788.6]
  wire  _T_686; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@73789.6]
  wire  _T_687; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@73790.6]
  wire  _T_688; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@73791.6]
  wire  _T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73793.6]
  wire  _T_691; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73794.6]
  wire [3:0] a_opcode_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73676.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73677.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@73686.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  wire  _T_693; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@73802.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@73802.6]
  wire  _T_695; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@73802.6]
  wire  _T_696; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@73803.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  wire  _T_697; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@73805.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@73805.6]
  wire  _T_698; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@73805.6]
  wire  _T_699; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@73806.6]
  wire  _T_700; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@73807.6]
  wire  _T_701; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@73808.6]
  wire  _T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73810.6]
  wire  _T_704; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73811.6]
  wire [3:0] a_size_lookup; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73687.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73688.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@73697.4]
  wire [3:0] _GEN_69; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@73816.6]
  wire  _T_705; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@73816.6]
  wire  _T_707; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@73818.6]
  wire  _T_708; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@73819.6]
  wire  _T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73821.6]
  wire  _T_711; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73822.6]
  wire  _T_713; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@73829.4]
  wire  _T_714; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@73830.4]
  wire  _T_716; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@73832.4]
  wire  _T_718; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@73834.4]
  wire  _T_719; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@73836.6]
  wire  _T_720; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@73837.6]
  wire  _T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73839.6]
  wire  _T_723; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73840.6]
  wire  _T_724; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@73846.4]
  wire  _T_725; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@73847.4]
  wire  _T_726; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@73848.4]
  wire  _T_727; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@73849.4]
  wire  _T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73851.4]
  wire  _T_730; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73852.4]
  wire [3:0] _T_731; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@73857.4]
  wire [3:0] _T_732; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@73858.4]
  wire [3:0] _T_733; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@73859.4]
  wire [15:0] a_opcodes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73672.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73673.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@73734.6]
  wire [15:0] _T_734; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@73861.4]
  wire [15:0] d_opcodes_clr; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73751.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73752.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@73770.6]
  wire [15:0] _T_735; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@73862.4]
  wire [15:0] _T_736; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@73863.4]
  wire [15:0] a_sizes_set; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73674.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73675.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@73737.6]
  wire [15:0] _T_737; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@73865.4]
  wire [15:0] _T_739; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@73867.4]
  reg [31:0] _T_740; // @[Monitor.scala 684:27:freechips.rocketchip.system.DefaultRV32Config.fir@73869.4]
  wire  _T_741; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@73872.4]
  wire  _T_742; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@73873.4]
  wire  _T_743; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@73874.4]
  wire  _T_744; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@73875.4]
  wire  _T_745; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@73876.4]
  wire  _T_746; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@73877.4]
  wire  _T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73879.4]
  wire  _T_749; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73880.4]
  wire [31:0] _T_751; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@73886.4]
  wire  _T_754; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@73890.4]
  wire  _GEN_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72680.10]
  wire  _GEN_84; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72752.10]
  wire  _GEN_100; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72835.10]
  wire  _GEN_110; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72894.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72945.10]
  wire  _GEN_126; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72995.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73043.10]
  wire  _GEN_142; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73091.10]
  wire  _GEN_152; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73169.10]
  wire  _GEN_158; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73210.10]
  wire  _GEN_164; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73268.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73336.10]
  wire  _GEN_172; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73372.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73407.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 80:11:freechips.rocketchip.system.DefaultRV32Config.fir@73870.4]
    .out(plusarg_reader_out)
  );
  assign _T_14 = 13'h3f << io_in_a_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@72606.6]
  assign _T_16 = ~_T_14[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@72608.6]
  assign _GEN_56 = {{26'd0}, _T_16}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@72609.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@72609.6]
  assign _T_18 = _T_17 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@72610.6]
  assign _T_21 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@72613.6]
  assign _T_23 = _T_21 | 2'h1; // @[Misc.scala 201:81:freechips.rocketchip.system.DefaultRV32Config.fir@72615.6]
  assign _T_24 = io_in_a_bits_size >= 3'h2; // @[Misc.scala 205:21:freechips.rocketchip.system.DefaultRV32Config.fir@72616.6]
  assign _T_27 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@72619.6]
  assign _T_29 = _T_23[1] & _T_27; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72621.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72622.6]
  assign _T_32 = _T_23[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72624.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72625.6]
  assign _T_36 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@72628.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72629.6]
  assign _T_38 = _T_23[0] & _T_37; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72630.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72631.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72632.6]
  assign _T_41 = _T_23[0] & _T_40; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72633.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72634.6]
  assign _T_43 = io_in_a_bits_address[1] & _T_36; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72635.6]
  assign _T_44 = _T_23[0] & _T_43; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72636.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72637.6]
  assign _T_46 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@72638.6]
  assign _T_47 = _T_23[0] & _T_46; // @[Misc.scala 214:38:freechips.rocketchip.system.DefaultRV32Config.fir@72639.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:freechips.rocketchip.system.DefaultRV32Config.fir@72640.6]
  assign _T_51 = {_T_48,_T_45,_T_42,_T_39}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@72643.6]
  assign _T_70 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@72666.6]
  assign _T_72 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:freechips.rocketchip.system.DefaultRV32Config.fir@72669.8]
  assign _T_73 = {1'b0,$signed(_T_72)}; // @[Parameters.scala 137:49:freechips.rocketchip.system.DefaultRV32Config.fir@72670.8]
  assign _T_75 = $signed(_T_73) & -33'sh10000000; // @[Parameters.scala 137:52:freechips.rocketchip.system.DefaultRV32Config.fir@72672.8]
  assign _T_76 = $signed(_T_75) == 33'sh0; // @[Parameters.scala 137:67:freechips.rocketchip.system.DefaultRV32Config.fir@72673.8]
  assign _T_81 = ~reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72678.8]
  assign _T_90 = _T_24 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72699.8]
  assign _T_91 = ~_T_90; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72700.8]
  assign _T_93 = _T_18 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72706.8]
  assign _T_94 = ~_T_93; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72707.8]
  assign _T_95 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@72712.8]
  assign _T_97 = _T_95 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72714.8]
  assign _T_98 = ~_T_97; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72715.8]
  assign _T_99 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:freechips.rocketchip.system.DefaultRV32Config.fir@72720.8]
  assign _T_100 = _T_99 == 4'h0; // @[Monitor.scala 86:31:freechips.rocketchip.system.DefaultRV32Config.fir@72721.8]
  assign _T_102 = _T_100 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72723.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72724.8]
  assign _T_104 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:freechips.rocketchip.system.DefaultRV32Config.fir@72729.8]
  assign _T_106 = _T_104 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72731.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72732.8]
  assign _T_108 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@72738.6]
  assign _T_137 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:freechips.rocketchip.system.DefaultRV32Config.fir@72792.8]
  assign _T_139 = _T_137 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72794.8]
  assign _T_140 = ~_T_139; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72795.8]
  assign _T_150 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:freechips.rocketchip.system.DefaultRV32Config.fir@72818.6]
  assign _T_152 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@72821.8]
  assign _T_160 = _T_152 & _T_76; // @[Parameters.scala 551:56:freechips.rocketchip.system.DefaultRV32Config.fir@72829.8]
  assign _T_163 = _T_160 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72832.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72833.8]
  assign _T_171 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:freechips.rocketchip.system.DefaultRV32Config.fir@72852.8]
  assign _T_173 = _T_171 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72854.8]
  assign _T_174 = ~_T_173; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72855.8]
  assign _T_175 = io_in_a_bits_mask == _T_51; // @[Monitor.scala 107:30:freechips.rocketchip.system.DefaultRV32Config.fir@72860.8]
  assign _T_177 = _T_175 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72862.8]
  assign _T_178 = ~_T_177; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72863.8]
  assign _T_183 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:freechips.rocketchip.system.DefaultRV32Config.fir@72877.6]
  assign _T_212 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:freechips.rocketchip.system.DefaultRV32Config.fir@72928.6]
  assign _T_237 = ~_T_51; // @[Monitor.scala 124:33:freechips.rocketchip.system.DefaultRV32Config.fir@72970.8]
  assign _T_238 = io_in_a_bits_mask & _T_237; // @[Monitor.scala 124:31:freechips.rocketchip.system.DefaultRV32Config.fir@72971.8]
  assign _T_239 = _T_238 == 4'h0; // @[Monitor.scala 124:40:freechips.rocketchip.system.DefaultRV32Config.fir@72972.8]
  assign _T_241 = _T_239 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72974.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72975.8]
  assign _T_243 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:freechips.rocketchip.system.DefaultRV32Config.fir@72981.6]
  assign _T_261 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@73012.8]
  assign _T_263 = _T_261 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73014.8]
  assign _T_264 = ~_T_263; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73015.8]
  assign _T_269 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:freechips.rocketchip.system.DefaultRV32Config.fir@73029.6]
  assign _T_287 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@73060.8]
  assign _T_289 = _T_287 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73062.8]
  assign _T_290 = ~_T_289; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73063.8]
  assign _T_295 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:freechips.rocketchip.system.DefaultRV32Config.fir@73077.6]
  assign _T_313 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@73108.8]
  assign _T_315 = _T_313 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73110.8]
  assign _T_316 = ~_T_315; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73111.8]
  assign _T_325 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@73135.6]
  assign _T_327 = _T_325 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73137.6]
  assign _T_328 = ~_T_327; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73138.6]
  assign _T_339 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:freechips.rocketchip.system.DefaultRV32Config.fir@73155.6]
  assign _T_343 = io_in_d_bits_size >= 3'h2; // @[Monitor.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@73164.8]
  assign _T_345 = _T_343 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73166.8]
  assign _T_346 = ~_T_345; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73167.8]
  assign _T_351 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:freechips.rocketchip.system.DefaultRV32Config.fir@73180.8]
  assign _T_353 = _T_351 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73182.8]
  assign _T_354 = ~_T_353; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73183.8]
  assign _T_355 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:freechips.rocketchip.system.DefaultRV32Config.fir@73188.8]
  assign _T_357 = _T_355 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73190.8]
  assign _T_358 = ~_T_357; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73191.8]
  assign _T_359 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:freechips.rocketchip.system.DefaultRV32Config.fir@73197.6]
  assign _T_387 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:freechips.rocketchip.system.DefaultRV32Config.fir@73255.6]
  assign _T_407 = _T_355 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:freechips.rocketchip.system.DefaultRV32Config.fir@73296.8]
  assign _T_409 = _T_407 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73298.8]
  assign _T_410 = ~_T_409; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73299.8]
  assign _T_416 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:freechips.rocketchip.system.DefaultRV32Config.fir@73314.6]
  assign _T_433 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:freechips.rocketchip.system.DefaultRV32Config.fir@73349.6]
  assign _T_451 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:freechips.rocketchip.system.DefaultRV32Config.fir@73385.6]
  assign _T_483 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@73451.4]
  assign _T_490 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@73458.4]
  assign _T_494 = _T_492 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73462.4]
  assign _T_495 = _T_492 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73463.4]
  assign _T_508 = ~_T_495; // @[Monitor.scala 386:22:freechips.rocketchip.system.DefaultRV32Config.fir@73479.4]
  assign _T_509 = io_in_a_valid & _T_508; // @[Monitor.scala 386:19:freechips.rocketchip.system.DefaultRV32Config.fir@73480.4]
  assign _T_510 = io_in_a_bits_opcode == _T_503; // @[Monitor.scala 387:32:freechips.rocketchip.system.DefaultRV32Config.fir@73482.6]
  assign _T_512 = _T_510 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73484.6]
  assign _T_513 = ~_T_512; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73485.6]
  assign _T_514 = io_in_a_bits_param == _T_504; // @[Monitor.scala 388:32:freechips.rocketchip.system.DefaultRV32Config.fir@73490.6]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73492.6]
  assign _T_517 = ~_T_516; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73493.6]
  assign _T_518 = io_in_a_bits_size == _T_505; // @[Monitor.scala 389:32:freechips.rocketchip.system.DefaultRV32Config.fir@73498.6]
  assign _T_520 = _T_518 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73500.6]
  assign _T_521 = ~_T_520; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73501.6]
  assign _T_522 = io_in_a_bits_source == _T_506; // @[Monitor.scala 390:32:freechips.rocketchip.system.DefaultRV32Config.fir@73506.6]
  assign _T_524 = _T_522 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73508.6]
  assign _T_525 = ~_T_524; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73509.6]
  assign _T_526 = io_in_a_bits_address == _T_507; // @[Monitor.scala 391:32:freechips.rocketchip.system.DefaultRV32Config.fir@73514.6]
  assign _T_528 = _T_526 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73516.6]
  assign _T_529 = ~_T_528; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73517.6]
  assign _T_531 = _T_483 & _T_495; // @[Monitor.scala 393:20:freechips.rocketchip.system.DefaultRV32Config.fir@73524.4]
  assign _T_532 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@73532.4]
  assign _T_534 = 13'h3f << io_in_d_bits_size; // @[package.scala 207:77:freechips.rocketchip.system.DefaultRV32Config.fir@73534.4]
  assign _T_536 = ~_T_534[5:0]; // @[package.scala 207:46:freechips.rocketchip.system.DefaultRV32Config.fir@73536.4]
  assign _T_542 = _T_540 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73542.4]
  assign _T_543 = _T_540 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73543.4]
  assign _T_557 = ~_T_543; // @[Monitor.scala 538:22:freechips.rocketchip.system.DefaultRV32Config.fir@73560.4]
  assign _T_558 = io_in_d_valid & _T_557; // @[Monitor.scala 538:19:freechips.rocketchip.system.DefaultRV32Config.fir@73561.4]
  assign _T_559 = io_in_d_bits_opcode == _T_551; // @[Monitor.scala 539:29:freechips.rocketchip.system.DefaultRV32Config.fir@73563.6]
  assign _T_561 = _T_559 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73565.6]
  assign _T_562 = ~_T_561; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73566.6]
  assign _T_567 = io_in_d_bits_size == _T_553; // @[Monitor.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@73579.6]
  assign _T_569 = _T_567 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73581.6]
  assign _T_570 = ~_T_569; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73582.6]
  assign _T_571 = io_in_d_bits_source == _T_554; // @[Monitor.scala 542:29:freechips.rocketchip.system.DefaultRV32Config.fir@73587.6]
  assign _T_573 = _T_571 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73589.6]
  assign _T_574 = ~_T_573; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73590.6]
  assign _T_579 = io_in_d_bits_denied == _T_556; // @[Monitor.scala 544:29:freechips.rocketchip.system.DefaultRV32Config.fir@73603.6]
  assign _T_581 = _T_579 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73605.6]
  assign _T_582 = ~_T_581; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73606.6]
  assign _T_584 = _T_532 & _T_543; // @[Monitor.scala 546:20:freechips.rocketchip.system.DefaultRV32Config.fir@73613.4]
  assign _T_596 = _T_594 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73636.4]
  assign a_first = _T_594 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73637.4]
  assign _T_614 = _T_612 - 4'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@73658.4]
  assign d_first = _T_612 == 4'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@73659.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@73678.4]
  assign _T_622 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:freechips.rocketchip.system.DefaultRV32Config.fir@73678.4]
  assign _T_623 = inflight_opcodes >> _T_622; // @[Monitor.scala 629:44:freechips.rocketchip.system.DefaultRV32Config.fir@73679.4]
  assign _T_627 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:freechips.rocketchip.system.DefaultRV32Config.fir@73683.4]
  assign _T_628 = _T_623 & _T_627; // @[Monitor.scala 629:97:freechips.rocketchip.system.DefaultRV32Config.fir@73684.4]
  assign _T_629 = {{1'd0}, _T_628[15:1]}; // @[Monitor.scala 629:152:freechips.rocketchip.system.DefaultRV32Config.fir@73685.4]
  assign _T_631 = inflight_sizes >> _T_622; // @[Monitor.scala 633:40:freechips.rocketchip.system.DefaultRV32Config.fir@73690.4]
  assign _T_636 = _T_631 & _T_627; // @[Monitor.scala 633:91:freechips.rocketchip.system.DefaultRV32Config.fir@73695.4]
  assign _T_637 = {{1'd0}, _T_636[15:1]}; // @[Monitor.scala 633:144:freechips.rocketchip.system.DefaultRV32Config.fir@73696.4]
  assign _T_641 = _T_483 & a_first; // @[Monitor.scala 643:27:freechips.rocketchip.system.DefaultRV32Config.fir@73721.4]
  assign _T_643 = 4'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@73724.6]
  assign _T_644 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:freechips.rocketchip.system.DefaultRV32Config.fir@73726.6]
  assign _T_645 = _T_644 | 4'h1; // @[Monitor.scala 645:61:freechips.rocketchip.system.DefaultRV32Config.fir@73727.6]
  assign _T_646 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:freechips.rocketchip.system.DefaultRV32Config.fir@73729.6]
  assign _T_647 = _T_646 | 4'h1; // @[Monitor.scala 646:57:freechips.rocketchip.system.DefaultRV32Config.fir@73730.6]
  assign _GEN_61 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@73732.6]
  assign _T_648 = {{1'd0}, _GEN_61}; // @[Monitor.scala 647:72:freechips.rocketchip.system.DefaultRV32Config.fir@73732.6]
  assign a_opcodes_set_interm = _T_641 ? _T_645 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  assign _GEN_62 = {{31'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@73733.6]
  assign _T_649 = _GEN_62 << _T_648; // @[Monitor.scala 647:47:freechips.rocketchip.system.DefaultRV32Config.fir@73733.6]
  assign a_sizes_set_interm = _T_641 ? _T_647 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  assign _GEN_64 = {{31'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@73736.6]
  assign _T_651 = _GEN_64 << _T_648; // @[Monitor.scala 648:43:freechips.rocketchip.system.DefaultRV32Config.fir@73736.6]
  assign _T_652 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:freechips.rocketchip.system.DefaultRV32Config.fir@73738.6]
  assign _T_654 = ~_T_652[0]; // @[Monitor.scala 649:17:freechips.rocketchip.system.DefaultRV32Config.fir@73740.6]
  assign _T_656 = _T_654 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73742.6]
  assign _T_657 = ~_T_656; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73743.6]
  assign a_set = _T_641 ? _T_643 : 4'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  assign _GEN_18 = _T_641 ? _T_649 : 35'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  assign _GEN_19 = _T_641 ? _T_651 : 35'h0; // @[Monitor.scala 643:72:freechips.rocketchip.system.DefaultRV32Config.fir@73723.4]
  assign _T_660 = _T_532 & d_first; // @[Monitor.scala 660:27:freechips.rocketchip.system.DefaultRV32Config.fir@73757.4]
  assign _T_662 = ~_T_339; // @[Monitor.scala 660:75:freechips.rocketchip.system.DefaultRV32Config.fir@73759.4]
  assign _T_663 = _T_660 & _T_662; // @[Monitor.scala 660:72:freechips.rocketchip.system.DefaultRV32Config.fir@73760.4]
  assign _T_664 = 4'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@73762.6]
  assign _GEN_66 = {{31'd0}, _T_627}; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@73769.6]
  assign _T_670 = _GEN_66 << _T_622; // @[Monitor.scala 662:76:freechips.rocketchip.system.DefaultRV32Config.fir@73769.6]
  assign d_clr = _T_663 ? _T_664 : 4'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@73761.4]
  assign _GEN_21 = _T_663 ? _T_670 : 47'h0; // @[Monitor.scala 660:91:freechips.rocketchip.system.DefaultRV32Config.fir@73761.4]
  assign _T_677 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:freechips.rocketchip.system.DefaultRV32Config.fir@73779.4]
  assign _T_680 = _T_677 & _T_662; // @[Monitor.scala 665:71:freechips.rocketchip.system.DefaultRV32Config.fir@73782.4]
  assign _T_681 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:freechips.rocketchip.system.DefaultRV32Config.fir@73784.6]
  assign _T_683 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:freechips.rocketchip.system.DefaultRV32Config.fir@73786.6]
  assign _T_684 = io_in_a_valid & _T_683; // @[Monitor.scala 666:68:freechips.rocketchip.system.DefaultRV32Config.fir@73787.6]
  assign _T_685 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:freechips.rocketchip.system.DefaultRV32Config.fir@73788.6]
  assign _T_686 = _T_684 & _T_685; // @[Monitor.scala 666:119:freechips.rocketchip.system.DefaultRV32Config.fir@73789.6]
  assign _T_687 = _T_686 & a_first; // @[Monitor.scala 666:166:freechips.rocketchip.system.DefaultRV32Config.fir@73790.6]
  assign _T_688 = _T_681[0] | _T_687; // @[Monitor.scala 666:49:freechips.rocketchip.system.DefaultRV32Config.fir@73791.6]
  assign _T_690 = _T_688 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73793.6]
  assign _T_691 = ~_T_690; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73794.6]
  assign a_opcode_lookup = _T_629[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73676.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73677.4 Monitor.scala 629:21:freechips.rocketchip.system.DefaultRV32Config.fir@73686.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  assign _T_693 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:freechips.rocketchip.system.DefaultRV32Config.fir@73800.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@73802.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@73802.6]
  assign _T_695 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:freechips.rocketchip.system.DefaultRV32Config.fir@73802.6]
  assign _T_696 = _T_693 | _T_695; // @[Monitor.scala 667:71:freechips.rocketchip.system.DefaultRV32Config.fir@73803.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  assign _T_697 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:freechips.rocketchip.system.DefaultRV32Config.fir@73804.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@73805.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@73805.6]
  assign _T_698 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:freechips.rocketchip.system.DefaultRV32Config.fir@73805.6]
  assign _T_699 = _T_697 | _T_698; // @[Monitor.scala 668:99:freechips.rocketchip.system.DefaultRV32Config.fir@73806.6]
  assign _T_700 = io_in_a_valid & _T_699; // @[Monitor.scala 668:34:freechips.rocketchip.system.DefaultRV32Config.fir@73807.6]
  assign _T_701 = _T_696 | _T_700; // @[Monitor.scala 668:15:freechips.rocketchip.system.DefaultRV32Config.fir@73808.6]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73810.6]
  assign _T_704 = ~_T_703; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73811.6]
  assign a_size_lookup = _T_637[3:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73687.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73688.4 Monitor.scala 633:19:freechips.rocketchip.system.DefaultRV32Config.fir@73697.4]
  assign _GEN_69 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@73816.6]
  assign _T_705 = _GEN_69 == a_size_lookup; // @[Monitor.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@73816.6]
  assign _T_707 = io_in_a_valid & _T_685; // @[Monitor.scala 670:72:freechips.rocketchip.system.DefaultRV32Config.fir@73818.6]
  assign _T_708 = _T_705 | _T_707; // @[Monitor.scala 670:53:freechips.rocketchip.system.DefaultRV32Config.fir@73819.6]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73821.6]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73822.6]
  assign _T_713 = _T_677 & a_first; // @[Monitor.scala 672:36:freechips.rocketchip.system.DefaultRV32Config.fir@73829.4]
  assign _T_714 = _T_713 & io_in_a_valid; // @[Monitor.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@73830.4]
  assign _T_716 = _T_714 & _T_683; // @[Monitor.scala 672:65:freechips.rocketchip.system.DefaultRV32Config.fir@73832.4]
  assign _T_718 = _T_716 & _T_662; // @[Monitor.scala 672:116:freechips.rocketchip.system.DefaultRV32Config.fir@73834.4]
  assign _T_719 = ~io_in_d_ready; // @[Monitor.scala 673:15:freechips.rocketchip.system.DefaultRV32Config.fir@73836.6]
  assign _T_720 = _T_719 | io_in_a_ready; // @[Monitor.scala 673:32:freechips.rocketchip.system.DefaultRV32Config.fir@73837.6]
  assign _T_722 = _T_720 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73839.6]
  assign _T_723 = ~_T_722; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73840.6]
  assign _T_724 = a_set != d_clr; // @[Monitor.scala 677:20:freechips.rocketchip.system.DefaultRV32Config.fir@73846.4]
  assign _T_725 = |a_set; // @[Monitor.scala 677:40:freechips.rocketchip.system.DefaultRV32Config.fir@73847.4]
  assign _T_726 = ~_T_725; // @[Monitor.scala 677:33:freechips.rocketchip.system.DefaultRV32Config.fir@73848.4]
  assign _T_727 = _T_724 | _T_726; // @[Monitor.scala 677:30:freechips.rocketchip.system.DefaultRV32Config.fir@73849.4]
  assign _T_729 = _T_727 | reset; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73851.4]
  assign _T_730 = ~_T_729; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73852.4]
  assign _T_731 = inflight | a_set; // @[Monitor.scala 680:27:freechips.rocketchip.system.DefaultRV32Config.fir@73857.4]
  assign _T_732 = ~d_clr; // @[Monitor.scala 680:38:freechips.rocketchip.system.DefaultRV32Config.fir@73858.4]
  assign _T_733 = _T_731 & _T_732; // @[Monitor.scala 680:36:freechips.rocketchip.system.DefaultRV32Config.fir@73859.4]
  assign a_opcodes_set = _GEN_18[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73672.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73673.4 Monitor.scala 647:21:freechips.rocketchip.system.DefaultRV32Config.fir@73734.6]
  assign _T_734 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:freechips.rocketchip.system.DefaultRV32Config.fir@73861.4]
  assign d_opcodes_clr = _GEN_21[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73751.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73752.4 Monitor.scala 662:21:freechips.rocketchip.system.DefaultRV32Config.fir@73770.6]
  assign _T_735 = ~d_opcodes_clr; // @[Monitor.scala 681:62:freechips.rocketchip.system.DefaultRV32Config.fir@73862.4]
  assign _T_736 = _T_734 & _T_735; // @[Monitor.scala 681:60:freechips.rocketchip.system.DefaultRV32Config.fir@73863.4]
  assign a_sizes_set = _GEN_19[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73674.4 :freechips.rocketchip.system.DefaultRV32Config.fir@73675.4 Monitor.scala 648:19:freechips.rocketchip.system.DefaultRV32Config.fir@73737.6]
  assign _T_737 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:freechips.rocketchip.system.DefaultRV32Config.fir@73865.4]
  assign _T_739 = _T_737 & _T_735; // @[Monitor.scala 682:54:freechips.rocketchip.system.DefaultRV32Config.fir@73867.4]
  assign _T_741 = |inflight; // @[Monitor.scala 687:26:freechips.rocketchip.system.DefaultRV32Config.fir@73872.4]
  assign _T_742 = ~_T_741; // @[Monitor.scala 687:16:freechips.rocketchip.system.DefaultRV32Config.fir@73873.4]
  assign _T_743 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:freechips.rocketchip.system.DefaultRV32Config.fir@73874.4]
  assign _T_744 = _T_742 | _T_743; // @[Monitor.scala 687:30:freechips.rocketchip.system.DefaultRV32Config.fir@73875.4]
  assign _T_745 = _T_740 < plusarg_reader_out; // @[Monitor.scala 687:59:freechips.rocketchip.system.DefaultRV32Config.fir@73876.4]
  assign _T_746 = _T_744 | _T_745; // @[Monitor.scala 687:47:freechips.rocketchip.system.DefaultRV32Config.fir@73877.4]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73879.4]
  assign _T_749 = ~_T_748; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73880.4]
  assign _T_751 = _T_740 + 32'h1; // @[Monitor.scala 689:26:freechips.rocketchip.system.DefaultRV32Config.fir@73886.4]
  assign _T_754 = _T_483 | _T_532; // @[Monitor.scala 690:27:freechips.rocketchip.system.DefaultRV32Config.fir@73890.4]
  assign _GEN_70 = io_in_a_valid & _T_70; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72680.10]
  assign _GEN_84 = io_in_a_valid & _T_108; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72752.10]
  assign _GEN_100 = io_in_a_valid & _T_150; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72835.10]
  assign _GEN_110 = io_in_a_valid & _T_183; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72894.10]
  assign _GEN_118 = io_in_a_valid & _T_212; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72945.10]
  assign _GEN_126 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72995.10]
  assign _GEN_134 = io_in_a_valid & _T_269; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73043.10]
  assign _GEN_142 = io_in_a_valid & _T_295; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73091.10]
  assign _GEN_152 = io_in_d_valid & _T_339; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73169.10]
  assign _GEN_158 = io_in_d_valid & _T_359; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73210.10]
  assign _GEN_164 = io_in_d_valid & _T_387; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73268.10]
  assign _GEN_170 = io_in_d_valid & _T_416; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73336.10]
  assign _GEN_172 = io_in_d_valid & _T_433; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73372.10]
  assign _GEN_174 = io_in_d_valid & _T_451; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73407.10]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_492 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  _T_503 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  _T_504 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  _T_505 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  _T_506 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  _T_507 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  _T_540 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  _T_551 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  _T_553 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  _T_554 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  _T_556 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  inflight_opcodes = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  inflight_sizes = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  _T_594 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  _T_612 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  _T_740 = _RAND_16[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_492 <= 4'h0;
    end else if (_T_483) begin
      if (_T_495) begin
        if (_T_490) begin
          _T_492 <= _T_16[5:2];
        end else begin
          _T_492 <= 4'h0;
        end
      end else begin
        _T_492 <= _T_494;
      end
    end
    if (_T_531) begin
      _T_503 <= io_in_a_bits_opcode;
    end
    if (_T_531) begin
      _T_504 <= io_in_a_bits_param;
    end
    if (_T_531) begin
      _T_505 <= io_in_a_bits_size;
    end
    if (_T_531) begin
      _T_506 <= io_in_a_bits_source;
    end
    if (_T_531) begin
      _T_507 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_540 <= 4'h0;
    end else if (_T_532) begin
      if (_T_543) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_540 <= _T_536[5:2];
        end else begin
          _T_540 <= 4'h0;
        end
      end else begin
        _T_540 <= _T_542;
      end
    end
    if (_T_584) begin
      _T_551 <= io_in_d_bits_opcode;
    end
    if (_T_584) begin
      _T_553 <= io_in_d_bits_size;
    end
    if (_T_584) begin
      _T_554 <= io_in_d_bits_source;
    end
    if (_T_584) begin
      _T_556 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 4'h0;
    end else begin
      inflight <= _T_733;
    end
    if (reset) begin
      inflight_opcodes <= 16'h0;
    end else begin
      inflight_opcodes <= _T_736;
    end
    if (reset) begin
      inflight_sizes <= 16'h0;
    end else begin
      inflight_sizes <= _T_739;
    end
    if (reset) begin
      _T_594 <= 4'h0;
    end else if (_T_483) begin
      if (a_first) begin
        if (_T_490) begin
          _T_594 <= _T_16[5:2];
        end else begin
          _T_594 <= 4'h0;
        end
      end else begin
        _T_594 <= _T_596;
      end
    end
    if (reset) begin
      _T_612 <= 4'h0;
    end else if (_T_532) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_612 <= _T_536[5:2];
        end else begin
          _T_612 <= 4'h0;
        end
      end else begin
        _T_612 <= _T_614;
      end
    end
    if (reset) begin
      _T_740 <= 32'h0;
    end else if (_T_754) begin
      _T_740 <= 32'h0;
    end else begin
      _T_740 <= _T_751;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72680.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72681.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72687.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72688.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72702.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72703.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72709.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72710.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72717.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72718.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72726.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72727.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_70 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72734.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_70 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72735.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72752.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72753.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72759.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72760.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_91) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72774.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_91) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72775.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72781.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72782.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_98) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72789.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_98) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72790.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_140) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72797.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_140) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72798.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72806.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72807.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72814.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72815.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72835.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72836.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72849.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72850.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72857.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72858.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72865.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72866.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72873.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72874.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72908.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72909.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72916.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72917.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_110 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72924.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_110 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72925.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72945.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72946.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72959.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72960.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72967.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_174) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72968.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72977.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72978.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72995.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@72996.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73009.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73010.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_264) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73017.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_264) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73018.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_126 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73025.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_126 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73026.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73043.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73044.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73057.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73058.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_290) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73065.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_290) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73066.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73073.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73074.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73091.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_81) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73092.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_94) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73105.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_94) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73106.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_316) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73113.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_316) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73114.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_178) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73121.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_178) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73122.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_142 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73129.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_142 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73130.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73140.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_328) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73141.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73169.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73170.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73185.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73186.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_358) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73193.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_358) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73194.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73210.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_81) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73211.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73218.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73219.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73242.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73243.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_81) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73268.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_81) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73269.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73276.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73277.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73301.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_410) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73302.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73336.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73337.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_172 & _T_410) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73372.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_172 & _T_410) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73373.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_354) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73407.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_354) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73408.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73487.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_513) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73488.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73495.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_517) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73496.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73503.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_521) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73504.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73511.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_525) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73512.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73519.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_509 & _T_529) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73520.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73568.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_562) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73569.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73584.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_570) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73585.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73592.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_574) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73593.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_558 & _T_582) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73608.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_558 & _T_582) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73609.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73745.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73746.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73796.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_691) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73797.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73813.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_704) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73814.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73824.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_680 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73825.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73842.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_718 & _T_723) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73843.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at Ports.scala:60:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73854.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_730) begin
          $fatal; // @[Monitor.scala 51:11:freechips.rocketchip.system.DefaultRV32Config.fir@73855.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_749) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Ports.scala:60:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73882.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_749) begin
          $fatal; // @[Monitor.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@73883.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
