/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rebel Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[

			["I_FEM_AAF_long","Female Long",1500],
			["B_FEM_AAF_Rolled","Female Rolled",1500],
			["B_FEM_NATO_Rolled","Female Rolled 3",1500],


			["U_I_pilotCoveralls",nil,1500],
			["U_IG_Guerilla1_1",nil,1500],
			["U_I_G_Story_Protagonist_F",nil,3000],
			["U_I_G_resistanceLeader_F",nil,5000],
			["U_IG_leader","Guerilla Leader",7000],
			["U_I_GhillieSuit",nil,10000],
			["U_I_FullGhillie_lsh",nil,10000],
			["U_B_FullGhillie_lsh",nil,10000],


			//TRYK


			["TRYK_B_USMC_R_ROLL","Green Top, MARPAT Pants",4000],
			["TRYK_U_B_NATO_OCP_BLK_R_CombatUniform","Black Top, ACU Pants",3000],
			["TRYK_U_B_AOR2_GRY_CombatUniform","Grey Top, DigiGreen Pants",3000],	
			["TRYK_U_B_ARO1_CBR_CombatUniform","Desert Camo",1100],
			["TRYK_U_B_Snow_CombatUniform","Snow Camo",3500],

			["TRYK_U_B_AOR2_OD_CombatUniform","Green Top, DigiGreen Pants",4500],
			["TRYK_U_B_AOR2_BLK_CombatUniform","Black Top, DigiGreen Pants",4500],
			["TRYK_DMARPAT_T","Brown Top, DigiTan Pants",4500],
			["TRYK_U_B_ARO1_BLK_CombatUniform","Black Top, DigiTan Pants",4500],
			["TRYK_U_B_ARO1_CombatUniform","DigiTan Full",4500],
			["TRYK_U_B_NATO_OCP_R_CombatUniform","DigiGreen Full",4500],
			["TRYK_U_B_MARPAT_Wood","MARPAT Full",4500],
			["TRYK_U_B_NATO_OCP_R_CombatUniform","OCP Full",4500]



		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_Booniehat_AOR2",nil,1050],
			["TRYK_H_Booniehat_MARPAT_WOOD",nil,1050],
			["TRYK_H_Booniehat_AOR1",nil,1050],
			["TRYK_H_Booniehat_JSDF",nil,1050],
			["H_Bandanna_camo",nil,650],
			["jokermask","Joker Mask",4500],
			["TRYK_Kio_Balaclava","Ghost Balaclava",4500],
			["A3L_Halloween_JigSaw","JigSaw Mask",4500],
			["kio_skl_msk","Black Skull Mask",4500],
			["kio_skl_msk_grn","Green Skull Mask",4500],
			["kio_skl_msk_red","Red Skull Mask",4500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,1337],
			["G_Balaclava_combat",nil,1337],
			["G_Balaclava_lowprofile",nil,1337],
			["A3L_Balaclava",nil,1337]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,10000],
			["V_TacVest_oli",nil,10000],
			["V_TacVest_brn",nil,10000],
			["TRYK_V_ChestRig_L",nil,15000],
			["V_BandollierB_cbr",nil,4500],
			["V_BandollierB_rgr",nil,4500],
			["V_BandollierB_khk",nil,4500],
			["V_BandollierB_oli",nil,4500],
			["V_HarnessO_brn",nil,7800],
			["V_HarnessO_gry",nil,7800]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_FieldPack_ocamo",nil,3000],
			["B_TacticalPack_oli","Olive Bergen",3500],
			["B_Bergen_sgg","Sage Bergen",4500],
			["B_Carryall_oli","Olive Carryall",5000],
			["B_Carryall_khk","Khaki Carryall",5000],
			//Camo Packs
			["B_AssaultPack_mcamo","MTP Assault Pack",4000],
			["TRYK_B_AssaultPack_MARPAT_Wood","MARPAT Assault Pack",5500],
			["TRYK_B_AssaultPack_Type2camo","Jungle Assault Pack",5500],
			["TRYK_B_Kitbag_Base_JSDF","Jungle Kitbag",5500],
			["B_Kitbag_mcamo","MTP Kitbag",5500],
			//Belts
			["TRYK_B_Belt_AOR2",nil,3000],
			["TRYK_B_Belt_CYT",nil,3000],
			["TRYK_B_Belt_GR",nil,3000]

		];
	};
};