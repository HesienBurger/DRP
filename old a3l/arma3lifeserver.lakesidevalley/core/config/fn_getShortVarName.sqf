/*
Author: J Macklemore
File: fn_getShortVarName.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
Part Of The DrugFields
*/
private ["_index"];

_index = [_this select 0, life_item_config] call fnc_indexArray;

if (_index == -1) then {
	"error";
} else {
	(life_inv_items select _index) select 1;
};
