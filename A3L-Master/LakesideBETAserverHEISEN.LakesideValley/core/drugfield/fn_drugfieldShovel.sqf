/*
Author: J Macklemore
File: fn_drugfieldShovel.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
closeDialog 0;
life_action_inUse = true;
player playAction "Medic";
sleep 5;
createVehicle ["Land_ClutterCutter_large_F",(getPos player),[],0,"CAN_COLLIDE"];
{
	_x setVariable ["life_drugfield_shovel", true, true];
	hintSilent "Soil Has Been Cultivated";
} forEach (nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"],5]);
life_action_inUse = false;