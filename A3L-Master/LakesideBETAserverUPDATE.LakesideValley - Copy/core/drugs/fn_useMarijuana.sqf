/*
	File: fn_useMarijuana.sqf	
	Description:
	Use Marijuana Effect
*/

#include <macro.h>
private["_smoke","_playerdo"];


if (vehicle player != player) then 
{
player playMove "AmovPercMstpSnonWnonDnon_Scared2";
waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
};

playSound3D ["cg_sndimg\sounds\bong.ogg", player, false, getPosASL player, 1, 1, 45];


[[0,format["%1 is stoned.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 25],false] spawn life_fnc_MP;

closeDialog 0;

"chromAberration" ppEffectEnable true;
playsound "coughing";
hint "I'm blazed.";
sleep 3;
hint "It feels like my body is slowly healing.";
playsound "coughing";
for "_i" from 0 to 60 do
{
    player setDamage (damage player) - .05;
    "chromAberration" ppEffectAdjust [random 0.03,random 0.03,true];
    "chromAberration" ppEffectCommit 4;   
    sleep 15;
};
hint "The weed is wearing off.";
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
sleep 6;

"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;