/*
Author: J Macklemore
File: fn_drugfieldFertilizer.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/

private ["_tent"];

_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 5];
if ((count _tent) == 0) exitwith {hint "You Cannot Fertilize As There Is No Netting Nearby!";};
_tent = (_tent select 0);
if (_tent getVariable ["life_drugfield_fertilized", false]) exitWith {hint "This Drug Field Has Already Been Fertilized!";};
closeDialog 0;
life_action_inUse = true;
player playAction "Medic";
sleep 5;
_tent setVariable ["life_drugfield_fertilized", true, true];
hintSilent "The Drug Field Has Been Fertilized";
systemChat "The Drug Field Has Been Fertilized";
life_action_inUse = false;


