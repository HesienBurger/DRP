/*
Author: J Macklemore
File: fn_drugfieldGenerator.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/

private ["_tent","_generator"];

_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 5];
if ((count _tent) == 0) exitWith {hint "No Netting Nearby!";};
_tent = (_tent select 0);
if (!(isNull (_tent getVariable ["life_drugfield_generator", objNull]))) exitWith {hint "There Is Already A Generator!";};
if !(([false, "generator", 1] call life_fnc_handleInv)) then {hint "You Do Not Own A Generator!";};
closeDialog 0;
life_action_inUse = true;
player playAction "Medic";
sleep 5;
_generator = createVehicle ["Land_Portable_generator_F",(getPos _tent),[],0,"NONE"];
_generator attachTo [_tent,[3,2,-0.8]];
_generator setVariable["item", ["generator",1], true];
_tent setVariable ["life_drugfield_generator", _generator, true];
hintSilent "Generator Placed";
systemChat "Generator Placed";
life_action_inUse = false;