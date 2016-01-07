/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && cgbankvault animationPhase "d_l_Anim" == 1) then {
	["You are locking the bank vault!",20,"red"] call A3L_Fnc_Msg;
	sleep 5;
	cgbankvault animate ["d_l_Anim",0];
	cgbankvault setVariable["hacked",false,true];
	["Vault locked.",20,"red"] call A3L_Fnc_Msg;
} else {
	["You dont have the keys to this vault.",20,"red"] call A3L_Fnc_Msg;
};

//hint "You are locking the bank vault.";