/*
Author: J Macklemore
File: fn_drugfieldLight.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/

private ["_itemobject","_tent","_light"];

_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 5];
_itemobject = "Land_PortableLight_double_F";
if ((count _tent) == 0) exitWith {hint "No Netting Nearby!";};
_tent = (_tent select 0);
if (isNull (_tent getVariable ["life_drugfield_generator", objNull])) exitWith {hint "No Generator Nearby!";};
if (!(isNull (_tent getVariable ["life_drugfield_light1", objNull])) && !(isNull (_tent getVariable ["life_drugfield_light2", objNull])) && !(isNull (_tent getVariable ["life_drugfield_light3", objNull])) && !(isNull (_tent getVariable ["life_drugfield_light4", objNull]))) exitWith {hint "Max Amount Of Lights Placed!";};
if !(([false,"lightdouble", 1] call life_fnc_handleInv)) then {hint "You Do Not Own A Light!";};
closeDialog 0;
life_action_inUse = true;
player playAction "Medic";
sleep 5;
_light = createVehicle [_itemobject,(getPos _tent),[],0,"NONE"];
_light setVariable["item", ["lightdouble",1], true];
switch (true) do {
	case (isNull (_tent getVariable ["life_drugfield_light1", objNull])): {
		_light attachTo [_tent,[0,3,0]];
		_light setDir ((getDir _light)+0);
		_tent setVariable ["life_drugfield_light1", _light, true];
	};
	case (isNull (_tent getVariable ["life_drugfield_light2", objNull])): {
		_light attachTo [_tent,[5,0,0]];
		_light setDir ((getDir _light)+90);
		_tent setVariable ["life_drugfield_light2", _light, true];
	};
	case (isNull (_tent getVariable ["life_drugfield_light3", objNull])): {
		_light attachTo [_tent,[0,-3,0]];
		_light setDir ((getDir _light)+180);
		_tent setVariable ["life_drugfield_light3", _light, true];
	};
	case (isNull (_tent getVariable ["life_drugfield_light4", objNull])): {
		_light attachTo [_tent,[-5,0,0]];
		_light setDir ((getDir _light)+270);
		_tent setVariable ["life_drugfield_light4", _light, true];
	};
};
hintSilent "Light Placed";
systemChat "Light Placed";
life_action_inUse = false;