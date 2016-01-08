/*
	fn_seatBelt.sqf
*/
playSound "seatbelt";
if(!life_seatbelt) then {
	["Your seatbelt is ON", false] spawn domsg;
	life_seatbelt = true;
} else {
	["Your seatbelt is OFF", false] spawn domsg;
	life_seatbelt = false;
};