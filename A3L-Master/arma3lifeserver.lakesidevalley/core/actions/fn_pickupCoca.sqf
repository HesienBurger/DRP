/*
Author: J Macklemore
File: fn_drugfieldCannabisSeed.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
private["_can"];
_can = nearestObjects[getPos player,["Land_Basket_F"],8] select 0;
if(isNil "_can") exitWith {};

if(([true,"cocainu",3] call life_fnc_handleInv)) then
{
	titleText["Coca Collected!","PLAIN"];
	player removeAction life_action_cocaPickup;
	life_action_cocaPickup = nil;
	deleteVehicle _can;
};