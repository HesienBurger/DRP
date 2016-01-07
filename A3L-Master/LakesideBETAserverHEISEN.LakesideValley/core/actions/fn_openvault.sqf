/*
open vault

cgbankvault is the variable name
*/

if (cgbankvault animationPhase "d_o_Anim" == 0 && cgbankvault animationPhase "d_l_Anim" == 1) then {
	["Vault Opening Starting.",20,"green"] call A3L_Fnc_Msg;
	sleep 5;
	["Vault Opened Engaged.",20,"green"] call A3L_Fnc_Msg;
	cgbankvault animate ["d_o_Anim",1];
} else {
	["The vault appears to be locked/open already..",20,"red"] call A3L_Fnc_Msg;
};