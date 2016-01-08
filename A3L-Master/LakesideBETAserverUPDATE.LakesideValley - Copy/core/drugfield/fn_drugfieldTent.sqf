/*
Author: J Macklemore
File: fn_drugfieldTent.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/

private ["_tent"];

if ((count (nearestObjects [(getPos player),["House_F"], 20])) > 0) exitWith {hint "Probably Not A Good Idea To Place Near A House...";};
if (isOnRoad (getPos player)) exitWith {hint "Well It Might Get Run Over On a Road...";};
if (surfaceIsWater (getPos player)) exitWith {hint "Water?? Really Can't Believe You Did Not Think I Would Stop That";};
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "The Surface Is Too Steep!";};
if (count ((getPos player) isFlatEmpty [3,0,0,0,0,false,player]) == 0) exitWith {hint "Way Too Close To Other Items!";};
if !(([false, "camonet", 1] call life_fnc_handleInv)) then {hint "You Do Not Own Any Netting!";};
closeDialog 0;
life_action_inUse = true;
player playAction "Medic";
sleep 5;
_tent = createVehicle ["CamoNet_INDP_Curator_F",(getPos player),[],0,"CAN_COLLIDE"];
_tent setVariable["item", ["camonet",1], true];
hintSilent "Netting Placed";
systemChat "Netting Placed";
life_action_inUse = false;