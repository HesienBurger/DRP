/*
Author: J Macklemore
File: fn_drugfieldcannabisSeed.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
_Number Does Not Do Anything For Now, Was Planning But Then Thought Fuck It
*/
private ["_item","_tent","_wait","_number","_obj","_unit","_item","_can"];

_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 5];
if ((count _tent) == 0) exitWith {hint "No Netting Nearby!";};
_tent = (_tent select 0);
sleep (random 1);
if (_tent getVariable ["life_drugfield_seeded", false]) exitWith {hint "This Drug Field Already Has Seeds Growing!";};
_tent setVariable ["life_drugfield_seeded", true, true];
closeDialog 0;
life_action_inUse = true;
player playAction "Medic";
sleep 5;
hintSilent "Seeds Planted";
systemChat "Seeds Planted";
life_action_inUse = false;
_wait = 120;
_number = 5;
if (_tent getVariable ["life_drugfield_shovel", false]) then 
{
_wait = (_wait - (random 10)); 
_number = (_number + (random 2));
};
if (_tent getVariable ["life_drugfield_fertilized", false]) then 
{
_wait = (_wait - (random 10)); 
_number = (_number + (random 2));
};
if (!(isNull (_tent getVariable ["life_drugfield_light1", objNull])) && (!(isNull (_tent getVariable ["life_drugfield_generator", objNull]))))  then
{
_wait = (_wait - (random 10)); 
_number = (_number + (random 2));
};
if (!(isNull (_tent getVariable ["life_drugfield_light2", objNull])) && (!(isNull (_tent getVariable ["life_drugfield_generator", objNull]))))  then
{
_wait = (_wait - (random 10)); 
_number = (_number + (random 2));
};
if (!(isNull (_tent getVariable ["life_drugfield_light3", objNull])) && (!(isNull (_tent getVariable ["life_drugfield_generator", objNull]))))  then
{
_wait = (_wait - (random 10)); 
_number = (_number + (random 2));
};
if (!(isNull (_tent getVariable ["life_drugfield_light4", objNull])) && (!(isNull (_tent getVariable ["life_drugfield_generator", objNull]))))  then
{
_wait = (_wait - (random 10)); 
_number = (_number + (random 2));
};
_number = (floor _number);
sleep _wait;

_tent setVariable ["life_drugfield_seeded", false, true];
_tent setVariable ["life_drugfield_fertilized", false, true];
[getPos _tent, "cannabis", _number, false] call life_fnc_itemDrop;
life_action_cannabisPickup = player addAction["Pickup Cannabis",life_fnc_pickupCannabis,"",0,false,false,"",
' _can = nearestObjects[getPos player,["Land_Sacks_heap_F"],8] select 0; !isNil "_can" && !isNil {(_can getVariable "item")}'];
