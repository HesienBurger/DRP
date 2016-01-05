orangemenu = ["76561198095175918"];

if ((getPlayerUID player) in orangemenu) then {
	player execVM "orangemenu\orangemenufill.sqf";
	_ok = createDialog "orange_menu";
	exit;
};
