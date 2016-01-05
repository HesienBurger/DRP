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
		_ret set[count _ret,["A3LRideAlongJumper","Ride Along",200]];
		_ret set[count _ret,["cadet_uni","Cadet",200]];
		_ret set[count _ret,["A3L_PDOFC","LS Officer",200]];
		 _ret set[count _ret,["A3L_PDCPL","LS Corporal",200]];
		 _ret set[count _ret,["A3L_PDSGT","LS Sergeant",200]];
		 _ret set[count _ret,["A3L_PDSGT","LS Chief Sergeant",200]];
		 _ret set[count _ret,["A3L_PDLT","LS Lieutenant",200]];
		 _ret set[count _ret,["A3L_PDCPT","LS Captain",200]];
		  _ret set[count _ret,["herpCOMMAND1","LS Assistant Chief",200]];
		 _ret set[count _ret,["herpCOMMAND1","LS Deputy Chief",200]];
		 _ret set[count _ret,["herpCOMMAND1","LS Chief Of Police",200]];
		_ret set[count _ret,["jamie_corrections","DOC Cadet",200]];
		_ret set[count _ret,["A3L_COFC","DOC Officer",200]];
		_ret set[count _ret,["A3L_CCPL","DOC Corporal",200]];
		_ret set[count _ret,["A3L_CSGT","DOC Sergeant",200]];
		_ret set[count _ret,["A3L_CLT","DOC Lieutenant",200]];
		_ret set[count _ret,["A3L_CCPT","DOC Captain",200]];
		//_ret set[count _ret,["A3L_Sheriff_Uniform","Sheriff Uniform",200]];
		//_ret set[count _ret,["A3L_HPOFC","Trooper Officer",200]];	
		//_ret set[count _ret,["A3L_HPCPL","Trooper CPL",200]];
		_ret set[count _ret,["A3L_DAI","IA Patrol",200]];
		_ret set[count _ret,["DAI_Polo","IA Polo",200]];
        //_ret set[count _ret,["A3LCRTUniformBlack","IA Drugs",200]];
		//_ret set[count _ret,["U_007_BIS_Marshall","IA Standard",200]];
		_ret set[count _ret,["herpSERT1","S.E.R.T Officer",200]];
		_ret set[count _ret,["herpSERT2","S.E.R.T Lieutenant's",200]];
		_ret set[count _ret,["herpSERT3","S.E.R.T Captain",200]];
		_ret set[count _ret,["A3L_SWAT","S.E.R.T OP Uniform",200]];	
		_ret set[count _ret,["jamie_tou","S.E.R.T Command OP Uniform",200]];
		_ret set[count _ret,["U_B_Wetsuit","Wet Suit",200]];
		_ret set[count _ret,["TCG_PDAV","Pilot",200]];
		_ret set[count _ret,["U_007_US_Police_officer","Parade",200]];
		_ret set[count _ret,["fto_uni","FTO Trainer",200]];
		_ret set[count _ret,["A3L_SSNoTie","FBI",200]];
		
	};
	
	case 1:
	{
		_ret set[count _ret,["Campaign_Hat_Tan","Department Off Corrections",50]];
	//	_ret set[count _ret,["Campaign_Hat_Dark","State Trooper",50]];
		_ret set[count _ret,["AM_PatrolHat","Patrol Hat",50]];
		_ret set[count _ret,["H_007_policecap","Police Hat",50]];
		_ret set[count _ret,["H_Cap_police","S.E.R.T cap",50]];
		_ret set[count _ret,["jamie_pcapblack","S.E.R.T Command cap",50]];
		_ret set[count _ret,["H_PilotHelmetHeli_B","Pilot Helmet",50]];
		_ret set[count _ret,["jamie_blackhelmet","S.E.R.T Command OP Helmet",50]];
		_ret set[count _ret,["TCG_swathelmet","S.E.R.T OP Helmet",50]];
		_ret set[count _ret,["H_Beret_blk","Command ONLY",50]];

	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,25],
			["G_Sport_Blackred",nil,25],
			["G_Sport_Checkered",nil,25],
			["G_Sport_Blackyellow",nil,25],
			["G_Sport_BlackWhite",nil,25],
			["G_Aviator",nil,25],
			["G_Squares",nil,25],
			["G_Lowprofile",nil,25],
			["G_Combat",nil,25],
			["G_Balaclava_blk",nil,25],
			["Mask_M40","Riot Mask",25],
			["TRYK_kio_balaclava_ESS",nil,25],
			["G_Balaclava_combat",nil,25],
			["G_Balaclava_lowprofile",nil,25],
			["TRYK_TAC_EARMUFF","SWAT Only",343],
			["G_mas_wpn_bala_mask","SWAT Only",545],
			["G_I_Diving",nil,25],
			["TRYK_balaclava_BLACK_NV",nil,25],
			["A3L_Balaclava",nil,25],
			["TRYK_Headset_NV",nil,25],
			["G_mas_wpn_wrap_b",nil,25]
			
		];
	};
	
	case 3:
	{
		_ret set[count _ret,["A3L_RideAlongVest","Ride Along",800]];
		_ret set[count _ret,["cl3_police_vest_yellow","Cadet/Recruit",800]];
		_ret set[count _ret,["A3L_policevest2","Patrol White",800]];
		_ret set[count _ret,["A3L_policevest1","Patrol Yellow",800]];
		_ret set[count _ret,["A3L_deptjvest1","Corrections",800]];
		//_ret set[count _ret,["jamie_sheriff_vest","Sheriff Ofc",800]];
		//_ret set[count _ret,["A3L_sheriffvest3","Sheriff Snr",800]];
		//_ret set[count _ret,["A3L_sheriffvest2","Sheriff Cpl",800]];
		//_ret set[count _ret,["A3L_sheriffvest1","Sheriff Sgt",800]];
		//_ret set[count _ret,["DAI_TACVEST_WHITE","IA White",800]];
		//_ret set[count _ret,["DAI_TACVEST_YELLOW","IA Yellow",800]];
		//_ret set[count _ret,["DAI_TACVEST_BLACK","IA Black w/Holster",800]];
		//_ret set[count _ret,["DAI_TACVEST_TAN","IA Tan w/holster",800]];
		//_ret set[count _ret,["cl3_police_PlateCarrier_CN","IA Drugs",800]];
		_ret set[count _ret,["kaelvest_sert2","S.E.R.T VEST",800]];
		//_ret set[count _ret,["A3L_SARTrooper_Rebreather","SAR",800]];
		_ret set[count _ret,["TRYK_V_tacv1LC_P_BK","Code Red Vest",800]];
		_ret set[count _ret,["SCommand_Vest","Command Vest",800]];
		_ret set[count _ret,["Jamie_Sheriff1","Pilot Vest",800]];
		_ret set[count _ret,["A3L_fbivest1","FBI Normal",800]];
		
		
		
	};
	
	case 4:
	{
		_ret =
		[
			["cl3_police_tacticalbelt","Police Belt",1150]
		];
	};
};

_ret;
