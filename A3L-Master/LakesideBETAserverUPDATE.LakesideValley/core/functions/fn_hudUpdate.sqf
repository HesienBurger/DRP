/*
	File: fn_hudUpdate.sqf
	By Tonic - Modified by Koil
*/

private["_ui","_food","_water","_health","_money","_cash","_ammo","_select","_ammocount","_selectcount","_bulletcount","_dam","_fps","_watermark","_lowfood","_lowhealth","_lowdrink","_bleeding","_wounded","_fracture","_unconcious","_bleeding","_wounded","_fracture","_unconcious","_woundedon","_fractureon","_unconciouson","_diseaseon","_currentactions","_currentactionson","_koilcombat","_koilcombaton","_battery","_karma","_progfood","_progwater","_proghealth","_progfps","_progstamina","_progmags","_progammo","_progselect","_progbattery","_progkarma","_progpoop","_progdirt","_tfrchat"];

disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};




_progfood = _ui displayctrl 2200;
_progwater = _ui displayctrl 2201;
_proghealth = _ui displayctrl 2202;
_progfps = _ui displayctrl 2203;
_progstamina = _ui displayctrl 2204;
_progmags = _ui displayctrl 2205;
_progammo = _ui displayctrl 2206;
_progselect = _ui displayctrl 2207;
_progbattery = _ui displayctrl 2208;
_progkarma = _ui displayctrl 2209;
_progpoop = _ui displayctrl 2210;
_progdirt = _ui displayctrl 2211;
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_money = _ui displayCtrl 23520;
_ammo = _ui displayCtrl 23525;
_select = _ui displayCtrl 23535;
_bullet = _ui displayCtrl 23530;
_fps = _ui displayCtrl 23495;
_watermark = _ui displayCtrl 23550;
_lowhealth = _ui displayCtrl 23555;
_lowfood = _ui displayCtrl 23560;
_lowdrink = _ui displayCtrl 23565;
_bleeding = _ui displayCtrl 23570;
_wounded = _ui displayCtrl 23575;
_fracture = _ui displayCtrl 23580;
_unconcious = _ui displayCtrl 23585;
_disease = _ui displayCtrl 23590;
_battery = _ui displayCtrl 23600;    
_karma = _ui displayCtrl 23605; 
_poop = _ui displayCtrl 23610; 
_dirt = _ui displayCtrl 23615; 
_dam = damage player;
_dam = round(_dam * 100);
_dam = round(100 - _dam);
_cash = getFatigue player;
_cash = round(_cash * 100);

_ammocount = (player ammo (currentWeapon player));
_amountmag = {_x == (currentmagazine player)} count magazines player;
_gunmode = currentWeaponMode player;





_cash = 100 - _cash;








//Update Health

_health ctrlSetText format["%1", format["%1",_dam]];



//Update food

_food ctrlSetText format["%1", life_hunger];

_water ctrlSetText format["%1", life_thirst];


_fps ctrlSetText format["%1", round diag_fps];					




_money ctrlSetText format["%1", format["%1",_cash]];


_ammo ctrlSetText format["%1", format["%1",_amountmag]];


_bullet ctrlSetText format["%1", format["%1",_ammocount]];

_select ctrlSetText format["%1", format["%1",_gunmode]];
                  
_battery ctrlSetText format["%1", life_battery];                   
                    
_karma ctrlSetText format["Level %1", life_karma];                   

_poop ctrlSetText format["%1", life_poop];  
_dirt ctrlSetText format["%1", life_dirt];  


_bbattery = life_battery / 100;
_bhealth = _dam / 100;
_bfood = life_hunger / 100;
_bdrink = life_thirst / 100;
_bcash = _cash / 100;
_bstamina = _cash / 100;
_bfps = round diag_fps;
_bfps = _bfps / 100;
_bfps = _bfps + 0.4;
_bamountmag = _amountmag / 100;
_bamountmag = _bamountmag * 3;




_ammocount = (player ammo (currentWeapon player)); 
_magazineClass = currentMagazine player;  
_maxammo = getNumber(configFile >> "CfgMagazines" >> _magazineClass >> "count"); 
_fuck = 0;


if(_ammocount > 0) then {
	_fuck = _ammocount / _maxammo; 
};





if(_bbattery > 1) then {
	_bbattery = 1;
};

if(_bfps > 1) then {
	_bfps = 1;
};

_poopmeter = life_poop / 100;
_dirtmeter = life_dirt / 100;
_progfood progressSetPosition _bfood;
_progwater progressSetPosition _bdrink;
_proghealth progressSetPosition _bhealth;
_progfps progressSetPosition _bfps;
_progstamina progressSetPosition _bstamina;
_progmags progressSetPosition _bamountmag;
_progammo progressSetPosition _fuck;
_progselect progressSetPosition 1;
_progbattery progressSetPosition _bbattery;
_progkarma progressSetPosition 1;
_progpoop progressSetPosition _poopmeter;  
_progdirt progressSetPosition _dirtmeter;  

_koildebs = player getVariable "EMSON";

if(_koildebs != 1) then {


koildeb = player getVariable "bleedingon";
if(koildeb > 1) then {

if(life_pizza) then {
	life_pizza = false;
};

		_bleedingon = "Minor Bleeding";	
		_chancerr = round (random 1000);
		if(_chancerr > 980) then {
				 player setDamage (damage player) + .01;
		};

				if(koildeb == 2) then {
					_bleedingon = "Head Cuts";	
				};

				if(koildeb == 3) then {
					_bleedingon = "Head Wounds";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage2pain;
					};

					
				};

				if(koildeb == 4) then {
					_bleedingon = "Head Fracture";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage1pain;
					};

				};

				if(koildeb == 5) then {
					_bleedingon = "Brain Swelling";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage2pain;
					};


				};

				_bleeding ctrlSetStructuredText parseText format["<img size='0.07' image='icons\head.paa'/><t size='0.03px'> %1</t>",_bleedingon];
				_bleeding ctrlCommit 0;

}
else {
_bleedingon = "";

_bleeding ctrlSetText format["%1", _bleedingon];
_bleeding ctrlCommit 0;

};
 


 koildebi = player getVariable "woundedon";
if(koildebi > 1) then {

if(life_pizza) then {
	life_pizza = false;
};

				if(koildebi == 2) then {
					_woundedon = "Chest Cuts";	
				};

				if(koildebi == 3) then {
					_woundedon = "Chest Wounds";	
				};

				if(koildebi == 4) then {
					_woundedon = "Chest Fracture";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage1pain;
					};

				};

				if(koildebi == 5) then {
					_woundedon = "Internal Bleeding";

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage2pain;
					};

				};


		_chancea = round (random 1000);
		if(_chancea > 980) then {
				 player setDamage (damage player) + .01;
		};
		_wounded ctrlSetStructuredText parseText format["<img size='0.07' image='icons\chest.paa'/><t size='0.03px'> %1</t>",_woundedon];
		_wounded ctrlCommit 0;
}
else {
_woundedon = "";
_wounded ctrlSetText format["%1", _woundedon];
_wounded ctrlCommit 0;
};
 




 koildebii = player getVariable "fractureon";
if(koildebii > 1) then {

if(life_pizza) then {
	life_pizza = false;
};
		_fractureon = "Fracture";	
		_chancef = round (random 1000);
		if(_chancef > 980) then {

				player setDamage (damage player) + .01;

				_coughtype = round (random 3);
				if(_coughtype == 0) then {
					playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];		
				};
				if(_coughtype == 2) then {
					playSound3D ["cg_sndimg\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
				};
				if(_coughtype == 3) then {
					playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];	
				};
				if(_coughtype == 1) then {
					playSound3D ["cg_sndimg\sounds\cough4.ogg", player, false, getPosASL player, 3, 1, 45];	
				};

		};

				if(koildebii == 2) then {
					_fractureon = "Left Arm Cuts";	
				};

				if(koildebii == 3) then {
					_fractureon = "Left Arm Wound";	
				};

				if(koildebii == 4) then {
					_fractureon = "Left Arm Fracture";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage1pain;
					};

				};

				if(koildebii == 5) then {
					_fractureon = "Right Arm Cuts";	
				};

				if(koildebii == 6) then {
					_fractureon = "Right Arm Wound";	
				};

				if(koildebii == 7) then {
					_fractureon = "Right Arm Fracture";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage1pain;
					};

				};
				_fracture ctrlSetStructuredText parseText format["<img size='0.07' image='icons\arm.paa'/><t size='0.03px'> %1</t>",_fractureon];
				_fracture ctrlCommit 0;
}
else {
_fractureon = "";
_fracture ctrlSetText format["%1", _fractureon];
};




 
 koildebiii = player getVariable "unconciouson";
if(koildebiii > 1) then {

if(life_pizza) then {
	life_pizza = false;
};
		_chancez = round (random 1000);
		if(_chancez > 980) then {
				player setDamage (damage player) + .01;
				_coughtype = round (random 3);
				if(_coughtype == 0) then {
					playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];	
				};
				if(_coughtype == 2) then {
					playSound3D ["cg_sndimg\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
				};
				if(_coughtype == 3) then {
					playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];	
				};
				if(_coughtype == 1) then {
					playSound3D ["cg_sndimg\sounds\cough4.ogg", player, false, getPosASL player, 3, 1, 45];	
				};
		};

				if(koildebiii == 2) then {
					_unconciouson = "Left Leg Cuts";	
				};

				if(koildebiii == 3) then {
					_unconciouson = "Left Leg Wound";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage2pain;
					};


				};

				if(koildebiii == 4) then {
					player setFatigue 1; 
					_unconciouson = "Left Leg Fracture";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage1pain;
					};


				};

				if(koildebiii == 5) then {
					_unconciouson = "Right Leg Cuts";	
				};

				if(koildebiii == 6) then {
					_unconciouson = "Right Leg Wound";	

					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage2pain;
					};

				};

				if(koildebiii == 7) then {
					player setFatigue 1; 
					_unconciouson = "Right Leg Fracture";


					_chancez = round (random 1000);
					if(_chancez > 990) then {
						if(vehicle player == player) then {
							[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
						};	
						[] call life_fnc_stage1pain;
					};

				};

				_unconcious ctrlSetStructuredText parseText format["<img size='0.07' image='icons\foot.paa'/><t size='0.03px'> %1</t>",_unconciouson];
				_unconcious ctrlCommit 0;
}
else {
_unconciouson = "";
_unconcious ctrlSetText format["%1", _unconciouson];
};




 koildebiiii = player getVariable "diseaseon";
if(koildebiiii > 1) then {

if(life_pizza) then {
	life_pizza = false;
};
				if(koildebiiii == 2) then {
				_diseaseon = "Ebola Symptoms";	
				};

				if(koildebiiii == 3) then {
				_diseaseon = "Sars Symptoms";	
				};

				if(koildebiiii == 4) then {
				_diseaseon = "Heavy Infection";	
				};

				if(koildebiiii == 5) then {
				_diseaseon = "Small Pox";	
				};

				if(koildebiiii == 6) then {
				_diseaseon = "Influenza";	
				};

				if(koildebiiii > 6) then {
				_diseaseon = "Malaria";	
				};

				_disease ctrlSetStructuredText parseText format["<img size='0.07' image='icons\sick.paa'/><t size='0.03px'> %1</t>",_diseaseon];
				_disease ctrlCommit 0;

				_chances = round (random 1000);
				if(_chances > 975) then {
				player enableFatigue true;
				player setFatigue 0;

				if(vehicle player == player) then {
					[[player,"AmovPpneMstpSrasWpstDnon_healed"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				};	
				[] call life_fnc_stage1pain;

				_coughtype = round (random 4);
				if(_coughtype == 1) then {
				playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];		
				};
				if(_coughtype == 2) then {
				playSound3D ["cg_sndimg\sounds\cough2.ogg", player, false, getPosASL player, 3, 1, 45];
				};
				if(_coughtype == 3) then {
				playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
				};
				if(_coughtype == 4) then {
				playSound3D ["cg_sndimg\sounds\cough4.ogg", player, false, getPosASL player, 3, 1, 45];
				};

				player setDamage (damage player) + .01;

				};
}	else {
		_diseaseon = "";
		_disease ctrlSetText format["%1", _diseaseon];
	};
};


