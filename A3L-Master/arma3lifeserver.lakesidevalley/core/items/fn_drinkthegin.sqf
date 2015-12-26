/*
Author: J Macklemore
File: fn_drinkthegin.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
closeDialog 0;
"colorCorrections" ppEffectEnable true;
"filmGrain" ppEffectEnable true; 
enableCamShake true;

for "_i" from 0 to 29 do
{
if (life_howdrunk < 1) then {
"filmGrain" ppEffectAdjust [0.1, -1, 0.1, 0.05, 2, false];  
"filmGrain" ppEffectCommit 1; 
"colorCorrections" ppEffectAdjust [1, 0.75, 0, [0.8,0.9,1,-0.1], [1,1,1,2], [-0.5,0,-1,5]];
"colorCorrections" ppEffectCommit 1;
addcamShake[random 8, 6, random 4];
sleep 5;
} else {
	disableUserInput true;
	100 cutText ["You Have Drunk Way Too Much, The Darkness Surrounds You","BLACK OUT",0];
	player playMoveNow "Incapacitated";
	sleep 60;
	removeUniform player;
	100 cutText ["Wow My Heads Banging And I'm Cold...","BLACK IN",0];
	disableUserInput false;
	player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
	sleep 5;
	life_howdrunk = 0;
	player playMoveNow "amovppnemstpsraswrfldnon";
	[[getPlayerUID player,profileName,"390"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
};
life_howdrunk = life_howdrunk + 0.07;
"filmGrain" ppEffectEnable false;
"colorCorrections" ppEffectEnable false;
sleep 4;
resetCamShake;