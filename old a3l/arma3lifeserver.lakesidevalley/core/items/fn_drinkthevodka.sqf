/*
Author: J Macklemore
File: fn_drinkthevodka.sqf
Use On: Evolution RP (http://evolutionrp.co.uk/home)
DO NOT REMOVE
*/
 closeDialog 0;
"colorCorrections" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to 29 do
{
if (life_howdrunk < 1) then {
"colorCorrections" ppEffectAdjust [1, 7, -1, [0, 0, 0, 0], [1.8, 1.8, 0.3, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
"colorCorrections" ppEffectCommit 0;  
"radialBlur" ppEffectAdjust [0.02,0.02,0.15,0.15]; 
"radialBlur" ppEffectCommit 1;
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
life_howdrunk = life_howdrunk + 0.08;
"radialBlur" ppEffectEnable false;
"colorCorrections" ppEffectEnable false;
sleep 4;
resetCamShake;
 