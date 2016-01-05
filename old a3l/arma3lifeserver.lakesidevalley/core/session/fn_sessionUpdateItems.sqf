/*
Author: J Macklemore
Based On Tonics: fn_sessionUpdateItem.sqf
File: fn_itemDrop.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
Again Part Of The Drug System
*/
private ["_items","_val","_short"];

// Get virtual items
_items = [];
{
	_val = missionNameSpace getVariable _x;
	if (_val > 0) then {
		_short = [_x] call life_fnc_varHandle;
		_items pushBack [_short, _val];
	};
} forEach life_inventory_items;

[[getPlayerUid player, playerSide, _items], "life_fnc_updateItems", false, false] spawn BIS_fnc_MP;