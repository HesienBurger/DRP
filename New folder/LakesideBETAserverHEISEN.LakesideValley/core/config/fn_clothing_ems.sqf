/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["cg_ems1","FireFighter",50],
			["cg_ems2","Senior FireFighter",50],
			["cg_ems4","Command",50],
			["cg_ems5","Trainee Air Medic",50],
			["cg_ems7","Probie Paramedic",50],
			["cg_ems9","Junior Medic",50],
			["cg_ems11","FireFighter Command",50],
			["U_B_Wetsuit","CDC", 50]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat", nil, 20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_aviator", nil, 20],
			["G_Aviator", nil, 20],
			["Mask_M40", nil, 20],
			["Mask_M50", nil, 20]
			
			
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_RebreatherB","CDC",300]
		];
	};
	
	//Backpacks
	case 4:
	{
		[

		];
	};
};
