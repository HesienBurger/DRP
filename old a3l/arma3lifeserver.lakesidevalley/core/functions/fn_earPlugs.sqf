/*
Author: J Macklemore
File: fn_earPlugs.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
life_earPlugs = !life_earPlugs;
if (life_earPlugs) then {
	1 fadeSound 0.1;
	titleText ["Putting Ear Mufflers On...", "PLAIN"];
} else {
	1 fadeSound 1;
	titleText ["Taking Off Ear Mufflers...", "PLAIN"];
};