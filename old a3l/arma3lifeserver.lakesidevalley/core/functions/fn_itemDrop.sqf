/*
Author: J Macklemore
Based On Tonics: fn_dropItems.sqf
File: fn_itemDrop.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
What do You Think This Is For??? Jesus You Scrub Drug Fields Once Again
*/

private ["_pos","_item","_amount","_container","_obj"];

_pos = _this select 0;
_item = _this select 1;
_amount = _this select 2;
_updateItems = [_this, 3, true] call BIS_fnc_param;
_container = [_item] call life_fnc_itemContainer;
_pos set [2, 0];
_obj = objNull;
{
	if (((_x getVariable ["item", ["", 0]]) select 0) == _item) exitWith {
		_obj = _x;
	};
} forEach (_pos nearObjects [_container, 20]);
if !(isNull _obj) then {
	_amount = ((_obj getVariable ["item", ["", 0]]) select 1) + _amount;
	_obj setVariable ["item", [_item, _amount], true];
} else {
	_obj = createVehicle [_container, _pos, [], 0, "NONE"];
	_obj setVariable["item", [_item,_amount], true];
};
if (_updateItems) then {
	[] call life_fnc_sessionUpdateItems;
};