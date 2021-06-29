include <colors.scad>
include <shop.data>

module slab() {
  color(CONCRETE) 
    cube([slab_depth, slab_width, slab_thickness]);
}
  
module ham_bench() {
  color(WOOD_pine) cube([wb1_width,wb1_depth,wb1_height]);
}

module ham_shelf() {
  color(METAL_Stainless) cube([hs_width, hs_depth, hs_height]);
}

module model_bench() {
  color(WOOD_pine) cube([wb2_width,wb2_depth,wb2_height]);
}

module bookcase() {
  color(METAL_Steel) cube([34.5, 12.5, 60]);
}

module printers() {
  color(METAL_Stainless) cube([pr_width, pr_depth, pr_height]);
}

module toolbox1() {
  color(PLA_Red) cube([tb_width, tb_depth, tb_height]);
}

module bench3() {
  color(PLA_Red) cube([wb3_width, wb3_depth, wb3_height]);
}

module table() {
  color(PLA_White) cube([mt_width, mt_depth, mt_height]);
}

module model_shelf() {
  color(METAL_Stainless) cube([ms_width, ms_depth, ms_height]);
}

module parts_case() {
  color(WOOD_Oak) cube([pc_width, pc_depth, pc_height]);
}

module saw_table() {
  color(PLA_Blue) cube([st_width, st_depth, st_height]);
}

module storage1() {
  color(METAL_Steel) cube([ps1_width, ps1_depth, ps1_height]);
}

module storage2() {
  color(METAL_Steel) cube([ps2_width, ps2_depth, ps2_height]);
}

module table_saw() {
  color(METAL_Steel) cube([ts_width, ts_depth, ts_height]);
}

module band_saw() {
  color(METAL_Steel) cube([bs_width, bs_depth, bs_height]);
}

module side_door() {
  color(PLA_White) cube([sd_width, sd_depth, sd_height]);
}

module workshop() {
  translate(slab_tpos) slab();
  translate(wb1_tpos) rotate(wb1_rpos) ham_bench();
  translate(wb2_tpos) rotate(wb2_rpos) model_bench();
  translate(wb3_tpos) rotate(wb3_rpos) bench3();
  translate(hs_tpos) rotate(hs_rpos) ham_shelf();
  translate(bk_tpos) rotate(bk_rpos) bookcase();
  translate(pr_tpos) rotate(pr_rpos) printers();
  translate(tb_tpos) rotate(tb_rpos) toolbox1();
  translate(mt_tpos) rotate(mt_rpos) table();
  translate(ms_tpos) rotate(ms_rpos) model_shelf();
  translate(pc_tpos) rotate(pc_rpos)  parts_case();
  translate(st_tpos) rotate(st_rpos) saw_table();
  translate(ps1_tpos) rotate(ps1_rpos) storage1();
  translate(ps2_tpos) rotate(ps2_rpos) storage2();
  translate(ts_tpos) rotate(ts_rpos) table_saw();
  translate(bs_tpos) rotate(bs_rpos) band_saw();
  translate(sd_tpos) rotate(sd_rpos) side_door();
}

workshop();