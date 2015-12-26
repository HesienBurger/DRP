/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles various different ammo types being fired.
*/
private["_ammoType","_projectile","_unit","_magazine"];
_ammoType = _this select 4; 
_projectile = _this select 6;
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param; 
_magazine = [_this, 5, "", [""]] call BIS_fnc_param; 

if(_ammoType == "GrenadeHand_stone") then {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] spawn life_fnc_MP;
	};
};


if ((_magazine in life_rubbermags) && {(player ammo currentWeapon player != 0)}) then {
[[[1],format["%1 has starting firing with rubber bullets",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
sleep 5;
};