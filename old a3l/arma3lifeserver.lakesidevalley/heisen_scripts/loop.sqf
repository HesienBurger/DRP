while {alive player} do {
	
	if ("dlrp_id_card_i" in Magazines player) then { 
		
		//hint "got card";
		player setVariable ["copLevel",1,true];
	};


	if !("dlrp_id_card_i" in magazines player) then { 

		//hint "no card";
		player setVariable ["copLevel",0,true];
	};
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
