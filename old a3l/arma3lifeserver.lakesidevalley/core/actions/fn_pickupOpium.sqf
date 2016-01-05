/*
Author: J Macklemore
File: fn_drugfieldCannasSeed.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
private["_can"];
_can = nearestObjects[getPos player,["Land_CratesWooden_F"],8] select 0;
if(isNil "_can") exitWith {};

if(([true,"heroinu",3] call life_fnc_handleInv)) then
{
	titleText["Opium Collected!","PLAIN"];
	player removeAction life_action_opiumPickup;
	life_action_opiumPickup = nil;
	deleteVehicle _can;
};