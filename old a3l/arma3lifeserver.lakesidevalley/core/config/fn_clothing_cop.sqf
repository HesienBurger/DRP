#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["A3LRideAlongJumper","Ride Along",150]];
		_ret set[count _ret,["cadet_uni","Cadet  Uniform",150]]; 
		_ret set[count _ret,["doj_uni","Corrections Uniform",150]]; 
		_ret set[count _ret,["fto_uni","FTO Uniform",150]]; 
		_ret set[count _ret,["CG_SO1","Sheriff Office Uniform",150]]; //herpSERT1
		_ret set[count _ret,["herpSERT1","SERT Operator Uniform",150]]; //dlrp_sert_coveralls1
		_ret set[count _ret,["dlrp_sert_coveralls1","SERT Coveralls Duty Unfirom",150]];
		//_ret set[count _ret,["CG_SO1","Sheriff Office Uniform",150]];
		//_ret set[count _ret,["lg_sheriff1","LG Sheriff Uniform",150]];
		//_ret set[count _ret,["lg_sheriffcommand1","LG Sheriff Command",150]];
		//_ret set[count _ret,["lg_command1","LG Command Uniform",150]];
		//_ret set[count _ret,["A3L_Sheriff_Uniform","Temp Sheriff Uniform",150]];
		//_ret set[count _ret,["sheriff_uni2","Temp Command Uniform",150]];
		
		
	};
	
	case 1:
	{
		_ret set[count _ret,["TRYK_H_woolhat_tan","Sheriff Office/SERT Hat",0]]; //Kio_Santa_Hat // TCG_swathelmet
		_ret set[count _ret,["TCG_swathelmet","SERT Duty Helmet",0]];
		
		
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["A3L_Balaclava",nil,60],
			["G_Bandanna_aviator","SERT",50]
		];
	};
	
	case 3:
	{
		_ret set[count _ret,["k_brown_so_Fix","Sheriff Office Vest",200]];
		_ret set[count _ret,["DOC_Vest_Tac","Corrections Vest",200]]; //kaelvest_sert2_Fix
		_ret set[count _ret,["kaelvest_sert2_Fix","SERT Vest",200]];
		//_ret set[count _ret,["lg_pd_sheriff","LG Sheriff Vest",200]];
		//_ret set[count _ret,["lg_pd_corrections","LG Corrections Vest",200]];
		//_ret set[count _ret,["lg_pd_sert","LG SERT Vest",200]];
		//_ret set[count _ret,["TFO_TACVEST_SHERIFF","Temp Command Vest",200]];
		//_ret set[count _ret,["k_brown_so","Temp Sheriff Vest",200]]; 
		//_ret set[count _ret,["jamie_corrections_vest","Temp Corrections Vest",200]];

		
	};
	
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Police Duty Belt",800]
		];
	};
};

_ret;
