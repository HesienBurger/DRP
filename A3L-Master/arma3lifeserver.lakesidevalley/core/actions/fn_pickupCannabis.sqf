/*
Author: J Macklemore
File: fn_drugfieldCannabisSeed.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
private["_can"];
_can = nearestObjects[getPos player,["Land_Sacks_heap_F"],8] select 0;
if(isNil "_can") exitWith {};

if(([true,"cannabis",4] call life_fnc_handleInv)) then
{
	titleText["Cannabis Collected!","PLAIN"];
	player removeAction life_action_cannabisPickup;
	life_action_cannabisPickup = nil;
	deleteVehicle _can;
};