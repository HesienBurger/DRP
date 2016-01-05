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
		
			["fireoff_uni","LSFD Lt",50],
			["TCG_EMT1","Probie Medic",60],
			["EMTRM_uni","Junior Paramedic",50],
			["A3L_EMT1","Senior Paramedic",50],
			["A3L_EMT2","FireFighter",50],
			["fire_uni2","FireFighter",50],
			["emsoff_uni","Command",50],
			["emt_Uni1","Paramedic",50],
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
			["firehat", nil, 20],
			["Headgear_Base_F","Senior Air Medic",60],
			["TCG_esuav_helmet","Air Medic",50],
			["A3L_medic_helmet","Senior FireFighter",20],
			["H_MilCap_blue","NHS Off-Duty",20],
			["H_MilCap_gry","NHS Off-Duty",20],
			["H_Watchcap_khk","Medic Beanie",20],	
			["TRYK_H_woolhat","FireFighter Off-Duty",20],
			["H_CrewHelmetHeli_B","Command Air Helmet", 20],
			["TRYK_R_CAP_BLK","NHS HAT",20],
			["H_Beret_blk","Command Only",100]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_aviator", nil, 20],
			["Masque_Chirurgical","Surgeons Mask",100],
			["G_Aviator", nil, 20],
			["Mask_M40", nil, 20],
			["Mask_M50", nil, 20]
			
			
		];
	};
	
	//Vest
	case 3:
	{
		[
			["A3L_EMT_FTO_Vest","NHS Instructor",200],
			["A3L_EMT_RideAlong_Vest","NHS RideAlong",200],
			["V_PlateCarrierL_CTRG","FireFighter",400],
			["V_TacVestIR_blk","FireFighter",300],
			["V_TacVest_blk","Air Medic",300],
			["V_RebreatherB","CDC",300],
			["cl3_police_vest_CG2","EMS Chief",300],
			["cl3_police_vest_fd","Off-Duty FireFighter",300],
			["cl3_police_vest_mr","EMS Command",300],
			["cl3_police_vest_pm","Paramedic",300]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cl3_emt_tacticalbelt","EMS Duty Belt",50],
			["tf_anprc155",nil,400]
		];
	};
};
