orangemenuu = ["76561198095175918"];

if ((getPlayerUID player) in orangemenuu) then {
	player execVM "orangemenu\orangemenusuperfill.sqf";
	_ok = createDialog "orange_menu";
	exit;
};
