module body() {
	cylinder(r=25, h=50);
}
module foot() {
	translate([0,0,2.5]) cube([150,10,5], center=true);
	translate([0,0,2.5]) rotate(90) cube([150,10,5], center=true);
}
module holdingCutOut(height) {
	translate([0,0,-30]) cube([26, 26, height], center=true);
}

difference() {
	body();
	holdingCutOut(200);
}

difference() {
	foot();
	holdingCutOut(80);
}





