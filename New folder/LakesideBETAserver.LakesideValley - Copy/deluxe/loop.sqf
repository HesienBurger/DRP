/*
	File name: loop.sqf (deluxe\loop.sqf)
	Author:	Heisen
	Description: Checks if players has DLRP Card if so it sets a variable.

*/


while {alive player} do {
	
	if ("dlrp_id_card_i" in Magazines player) then { 
		
		//hint "got card";
		player setVariable ["copLevel",1,true];
	};


	if !("dlrp_id_card_i" in magazines player) then { 

		//hint "no card";
		player setVariable ["copLevel",0,true];
	};
	sleep 20;
};







/*
if ("dlrp_id_card_i" in Magazines player) then { 
	
	hint "got card";
	player setVariable ["copLevel",1,true];
};


if !("dlrp_id_card_i" in magazines player) then { 

hint "no card";
player setVariable ["copLevel",0,true];
};
