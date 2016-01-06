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
		_ret set[count _ret,["CG_SO1","SO Uniform",200]];
		_ret set[count _ret,["CG_SO2","SO SGT Uniform",200]];
		_ret set[count _ret,["CG_SO3","SO Command Uniform",200]];
		_ret set[count _ret,["herpSERT1","SERT Operator Uniform",200]];
		_ret set[count _ret,["dlrp_sert_coveralls1","SERT Operations Uniform",200]];
		_ret set[count _ret,["RF_WING_3","Air One Coveralls",200]];
		_ret set[count _ret,["doj_uni","Corrections Uniform",200]];
		_ret set[count _ret,["LS_Marshal_Jacket3","LS Marshall Uniform",200]];
		_ret set[count _ret,["fto_uni","FTO Uniform",200]];
		_ret set[count _ret,["TCG_PDDTC","Police Off Duty",200]];
		_ret set[count _ret,["U_B_Wetsuit","Wetsuit",200]];

	};
	
	case 1:
	{
		_ret set[count _ret,["TRYK_H_woolhat_tan","SO/SERT Operator Hat",50]];
		_ret set[count _ret,["TRYK_H_Bandana_wig","SERT Grey Wig",50]];
		_ret set[count _ret,["TCG_swathelmet","SERT Operations Hat",50]];

	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Aviator",nil,25],
			["G_Bandanna_aviator","SERT Operations Glasses",25],
			["Mask_M40","Gas Mask",25],
			["G_Diving","Diving Googles",25]
			
		];
	};
	
	case 3:
	{
		_ret set[count _ret,["k_brown_so_Fix","SO Vest",800]];
		_ret set[count _ret,["SCommand_Vest","SO Command Vest",800]];
		_ret set[count _ret,["highthreatvestblack","SO Code Red Vest",800]];
		_ret set[count _ret,["DOC_Vest_Threat","CO Code Red Vest",800]];
		_ret set[count _ret,["kaelvest_sert2_Fix","SERT Vest",800]]; 
		_ret set[count _ret,["DOC_Vest_Tac","Corrections Vest",800]];
		_ret set[count _ret,["CL3_Rebreather","Rebreather",800]];
	};
	
	case 4:
	{
		_ret =
		[
			["cl3_police_tacticalbelt","New LEO Long Range Radio Belt",1150],
			["AM_PoliceBelt","Old LEO Belt",1150]
		];
	};
};

_ret;
