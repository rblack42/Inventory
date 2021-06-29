include <colors.scad>
slab_width = 19.5*12;
slab_depth = 19*12;
slab_height = 4;

module slab() {
  translate([0,0,-slab_height]) color(CONCRETE) cube([slab_depth, slab_width, slab_height]);
}

module unit(d) {
	// d = [color, width, depth, height, xpos, ypos, facing]
	if (d[6] == "north") { 
    translate([d[4]+d[1], d[5]+d[2], 0]) rotate([0,0,180]) color(d[0]) cube([d[1],d[2], d[3]]); }
    if (d[6] == "south") { 
    translate([d[4], d[5], 0]) rotate([0,0,0]) color(d[0]) cube([d[1],d[2], d[3]]); }
    if (d[6] == "east") { 
    translate([d[4]+d[2], d[5], 0]) rotate([0,0,90]) color(d[0]) cube([d[1],d[2], d[3]]); }
    if (d[6] == "west") { 
    translate([d[4], d[5]+d[1], 0]) rotate([0,0,-90]) color(d[0]) cube([d[1],d[2], d[3]]); }
 }
 
// Ham workbench ===============================================================================
hb_width = 96;
hb_depth = 30;
hb_height = 30;
hb_x_pos = 4;
hb_y_pos = slab_width - 2 - hb_width;
 
module ham_bench() {
  unit([WOOD_pine, hb_width, hb_depth, hb_height, hb_x_pos, hb_y_pos, "east"]);
}


// Model workbench =============================================================================
mb_width = 74;
mb_depth = 30;
mb_height = 30;
mb_x_pos = 2;
mb_y_pos = 12;

module model_bench() {
  unit([WOOD_pine, mb_width, mb_depth, mb_height, mb_x_pos, mb_y_pos, "east"]);
}

// Model storage ===============================================================================
ms_width = 36;
ms_depth = 19;
ms_height = 72;
ms_x_pos = 2 + mb_depth + 13.5;
ms_y_pos = 2;

module model_storage() {
  unit([WOOD_pine, ms_width, ms_depth, ms_height, ms_x_pos, ms_y_pos, "north"]);
}
// Drill workbench =============================================================================
db_width = 72;
db_depth = 24;
db_height = 30;
db_x_pos = slab_depth - 8 - db_width;
db_y_pos = slab_width - 2 - db_depth;

module drill_bench() {
  unit([PLA_Red, db_width, db_depth, db_height, db_x_pos, db_y_pos, "south"]);}


// Parts Case ==================================================================================
pc_width = 34;
pc_depth = 13;
pc_height = 30;
pc_x_pos = ms_x_pos + ms_width + 8;
pc_y_pos = 2;

module parts_case() {
  unit([WOOD_Oak, pc_width, pc_depth, pc_height, pc_x_pos, pc_y_pos, "east"]);
}

// Ham Storage ================================================================================
hs_width = 36;
hs_depth = 18;
hs_height = 79;
hs_x_pos = 2;
hs_y_pos = hb_y_pos - hs_depth;

module ham_storage() {
  unit([METAL_Stainless, hs_width, hs_depth, hs_height, hs_x_pos, hs_y_pos, "north"]);
}

// bookcase ===================================================================================
bk_width = 34.5;
bk_depth = 12.5;
bk_height = 59;
bk_x_pos = hs_x_pos + hs_width + 4;
bk_y_pos = hs_y_pos + hs_depth - bk_depth;

module bookcase() {
  unit([METAL_Steel, bk_width, bk_depth, bk_height, bk_x_pos, bk_y_pos, "north"]);
}

// Byrnes saw table ===========================================================================
st_width = 36;
st_depth = 24;
st_height = 30;
st_x_pos = pc_x_pos + pc_depth + 8;
st_y_pos = 2;

module saw_table() {
  unit([PLA_Blue, st_width, st_depth, st_height, st_x_pos, st_y_pos, "north"]);
}

// Storage shelf 1 ===========================================================================
ss1_width = 48;
ss1_depth = 24;
ss1_height = 76;
ss1_x_pos = st_x_pos + st_width + 6.5;
ss1_y_pos = 2;

module storage_shelf1() {
  unit([METAL_Steel, ss1_width, ss1_depth, ss1_height, ss1_x_pos, ss1_y_pos, "north"]);
}

// Storage shelf 2 ===========================================================================
ss2_width = 36;
ss2_depth = 18;
ss2_height = 72;
ss2_x_pos = slab_depth - ss2_depth - 28;
ss2_y_pos = ss1_y_pos + ss1_depth;

module storage_shelf2() {
  unit([METAL_Steel, ss2_width, ss2_depth, ss2_height, ss2_x_pos, ss2_y_pos, "west"]);
}

// Pr1nter shelf =============================================================================
ps_width = 24;
ps_depth = 18;
ps_height = 36;
ps_x_pos = 2;
ps_y_pos = mb_y_pos + mb_width + 4;

module printer_shelf() {
  unit([WOOD_Oak, ps_width, ps_depth, ps_height, ps_x_pos, ps_y_pos, "east"]);
}

// Model table================================================================================
mt_width = 71.5;
mt_depth = 29.5;
mt_height = 30;
mt_x_pos = hs_x_pos + hs_width + 2;
mt_y_pos = bk_y_pos - mt_depth;

module model_table() {
  unit( [PLA_White, mt_width, mt_depth, mt_height, mt_x_pos, mt_y_pos, "north"]);
}

// Craftsman toolbox =========================================================================
tb_width = 27;
tb_depth = 18;
tb_height = 62;
tb_x_pos = 69;
tb_y_pos = slab_depth - tb_depth - 2;

module toolbox() {
  unit([PLA_Red, tb_width, tb_depth, tb_height, tb_x_pos, tb_y_pos, "south"]);
}

// Side door =================================================================================
door_width = 32;
door_depth = 2;
door_height = 80;
door_x_pos = tb_x_pos + tb_width +7;
door_y_pos = slab_width;

module door() {
  unit([PLA_White, 32, 2, 80, door_x_pos, door_y_pos, "north"]);
}

// Craftsman Bandsaw =========================================================================
bs_width = 37;
bs_depth = 26;
bs_height = 60;
bs_x_pos = slab_depth - 66;
bs_y_pos = slab_width - db_depth - bs_width - 26;

module band_saw() {
  unit([METAL_Steel, bs_width, bs_depth, bs_height, bs_x_pos, bs_y_pos, "west"]);
}

// Craftsman table saw =======================================================================
ts_width = 46;
ts_depth = 31;
ts_height = 30;
ts_x_pos = bs_x_pos + bs_depth + 2;
ts_y_pos = slab_width - db_depth - ts_width - 22;

module  table_saw() {
  unit([METAL_Steel, ts_width, ts_depth, ts_height, ts_x_pos, ts_y_pos, "west"]);
}

slab();
ham_bench();
ham_storage();
printer_shelf();
bookcase();
model_bench();
model_storage();
drill_bench();
parts_case();
saw_table();
model_table();
storage_shelf1();
storage_shelf2();
toolbox();
table_saw();
band_saw();
door();