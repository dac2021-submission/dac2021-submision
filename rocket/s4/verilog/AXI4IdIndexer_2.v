module AXI4IdIndexer_2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72512.2]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [31:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_in_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [2:0]  auto_in_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_in_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_in_aw_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_in_b_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_in_b_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [31:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_in_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [2:0]  auto_in_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_in_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_in_ar_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_in_r_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_in_r_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [31:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [7:0]  auto_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [2:0]  auto_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_aw_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_out_aw_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_out_b_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_out_b_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [31:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [7:0]  auto_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [2:0]  auto_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [3:0]  auto_out_ar_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output [1:0]  auto_out_ar_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [3:0]  auto_out_r_bits_echo_tl_state_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input  [1:0]  auto_out_r_bits_echo_tl_state_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72515.4]
);
  assign auto_in_aw_ready = auto_out_aw_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_w_ready = auto_out_w_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_b_valid = auto_out_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id[1:0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_b_bits_echo_tl_state_size = auto_out_b_bits_echo_tl_state_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_b_bits_echo_tl_state_source = auto_out_b_bits_echo_tl_state_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id[1:0]; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_r_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_r_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@72525.4]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_id = {{2'd0}, auto_in_aw_bits_id}; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_echo_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_aw_bits_echo_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_w_valid = auto_in_w_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_b_ready = auto_in_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_id = {{2'd0}, auto_in_ar_bits_id}; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_echo_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_ar_bits_echo_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@72524.4]
endmodule
