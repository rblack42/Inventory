include <colors.scad>
include <shop_data.data>

module slab() {
  color(CONCRETE) cube([18*12,18*12,6]);
}
  
module ham_bench() {
  color(WOOD_pine) cube([30,84,30]);
}

module ham_shelf() {
  color(METAL_Stainless) cube([36, 18, 72]);
}

module model_bench() {
  color(WOOD_pine) cube([30,74,30]);
}

module bookcase() {
  color(METAL_Steel) cube([34.5, 12.5, 60]);
}

module printers() {
  color(METAL_Stainless) cube([18, 24, 36]);
}

module toolbox1() {
  color(PLA_Red) cube([27, 18, 60]);
}

module bench3() {
  color(PLA_Red) cube([72, 24, 30]);
}

module table() {
  color(PLA_White) cube([72, 24, 30]);
}

module model_shelf() {
  color(METAL_Stainless) cube([36.5, 19, 72]);
}

module parts_case() {
  color(WOOD_Oak) cube([13, 34, 30]);
}

module saw_table() {
  color(PLA_Blue) cube([36, 24, 30]);
}

module storage1() {
  color(METAL_Steel) cube([48, 24, 60]);
}

module storage2() {
  color(METAL_Steel) cube([18, 36, 60]);
}

module table_saw() {
  color(METAL_Steel) cube([31,46,30]);
}
module workshop() {
  slab();
  translate([4, 18*12-4-84, 6]) ham_bench();
  translate([4, 18, 4]) model_bench();
  translate([18*12-80,18*12-4-24, 4]) bench3();
  translate([4,18*12-4-84-18,4]) ham_shelf();
  translate([38.5, 18*12-4-84-18, 4]) bookcase();
  translate([4, 18+74, 4]) printers();
  translate([69, 18*12-4-18,4]) toolbox1();
  translate([48, 9*12-24,4]) table();
  translate([36,4,4]) model_shelf();
  translate([73,4,4]) parts_case();
  translate([86,4,4]) saw_table();
  translate([122, 4, 4]) storage1();
  translate([18*12-26-18,4+24,4]) storage2();
  translate([18*12-45, 96,4]) table_saw();
}

workshop();