#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",20000],
			["IVORY_R8",200000],
			["IVORY_R8SPYDER",200000],
			["IVORY_REV",250000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",20000],
			["C_Kart_01_Blu_F",20000],
			["C_Kart_01_Fuel_F",20000],
			["C_Kart_01_Red_F",20000],
			["C_Kart_01_Vrana_F",20000]
		];
	};
	case "med_shop":
	{
		_return = [

			["Jonzie_Ambulance",15000],
			["A3L_AmberLamps",18000],
			["A3L_CVPILBFD",19000],
			["A3L_Laddertruck",20000]
		];
	};
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",45000],
			["IVORY_BELL512_RESCUE",85000],
			["C_Heli_Light_01_civil_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_medevac_F", 150000]
		];
	};
	case "exo_car":
	{
		_return = [
			["Jonzie_Mini_Cooper_R_spec",80000],
			["BMW_M5Black",75000],
			["BMW_M5Blue",75000],
			["BMW_M5Red",75000],
			["BMW_M5White",75000],
			["Jonzie_Mini_Cooper",10000],
			["DAR_M3CivBlack",75000],
			["DAR_M3CivGrey",75000],
			["DAR_M3CivWhite",75000],
			
			["A3L_RX7_Blue",120000],
			["A3L_RX7_Red",120000],
			["A3L_RX7_White",120000],
			["A3L_RX7_Black",120000],
			["IVORY_PRIUS",20000],
			["IVORY_R8",200000],
			["IVORY_R8SPYDER",200000],
			["IVORY_REV",250000],
			
			
			["A3L_Atom",500000],
			["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],
			["A3L_VolvoS60RBlack",50000],
			["A3L_VolvoS60Rred",50000],
			["S_Skyline_Red",95000],
			["S_Skyline_Blue",95000],
			["S_Skyline_Black",95000],
			["S_Skyline_Yellow",95000],
			["S_Skyline_Purple",95000],
			["S_Skyline_White",95000],
			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],
			["A3L_Ferrari458black",530000],
			["A3L_Ferrari458white",530000],
			["A3L_Ferrari458blue",530000],
			["S_PorscheRS_Black",450000],
			["S_PorscheRS_Yellow",450000],
			["S_PorscheRS_White",450000],
			["S_McLarenP1_Black",850000],
			["S_McLarenP1_Blue",850000],
			["S_McLarenP1_Orange",850000],
			["S_McLarenP1_White",850000],
			["S_McLarenP1_Yellow",850000],
			["S_McLarenP1_Silver",850000],
			
			["A3L_Veyron",1500000],
			["A3L_Veyron_red",1500000],
			["A3L_Veyron_black",1500000],
			["A3L_Veyron_white",1500000],
			["A3L_Veyron_orange",1500000],
			["Nhz_audia8limo",100000],
			["S_Vantage_Purple",100000],
			["S_Vantage_Yellow",100000],
			["S_Vantage_Blue",100000],
			["S_Vantage_Red",100000],
			["A3L_Ferrari458blue",200000],
			["A3L_Ferrari458black",200000],
			["A3L_Ferrari458red",200000],
			["S_Rangerover_White",150000],
			["S_Rangerover_Orange",150000],
			["S_Rangerover_Grey",150000],
			["S_Rangerover_Purple",150000],
			["S_Rangerover_Green",150000],
			["S_Rangerover_Blue",150000],
			
            ["S_Rangerover_Black",100000],
			["S_Rangerover_Red",100000]
            
		];
	};
	case "chev_car":
	{
		_return = [
			["DAR_TahoeCivBlack",120000],
			["DAR_TahoeCivBlue",120000],
			["DAR_TahoeCivRed",120000],
			["DAR_TahoeCivSilver",120000],
			["DAR_TahoeCiv",120000],
			["D_Cobalt_Blue",30000],
			["D_Cobalt_DarkRed",30000],
			["D_Cobalt_Granite",30000],
			["D_Cobalt_Red",30000],
			["D_Cobalt_White",30000],
			["D_Cobalt_Yellow",30000],
			["DAR_ImpalaCivA",30000],
			["DAR_ImpalaCivB",30000],
			["DAR_ImpalaCivD",30000],
			["DAR_ImpalaCiv",30000],
			["DAR_ImpalaCivE",30000],
			["DAR_ImpalaCivG",30000],
			["DAR_ImpalaCivF",30000],
			
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_FordKaBlue",30000],
			["A3L_FordKaRed",30000],
			["A3L_FordKaBlack",30000],
			["A3L_FordKaWhite",30000],
			["A3L_FordKaGrey",30000],
			
			["DAR_FusionCivBlack",30000],
			["DAR_FusionCivBlue",30000],
			["DAR_FusionCivRed",30000],
			["DAR_FusionCiv",30000],
			
			["A3L_CVWhite",60000],
			["A3L_CVBlack",60000],
			["A3L_CVGrey",60000],
			["A3L_CVRed",60000],
			["A3L_CVPink",60000],
			["A3L_CVBlue",60000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",90000],
			["A3L_TaurusBlue",90000],
			["A3L_TaurusRed",90000],
			["A3L_TaurusWhite",90000]

		];
	};
	case "dodge_car":
	{
		_return =
		[

			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["A3L_ChargerBlack",115000],
			["A3L_ChargerWhit",115000],
			["Jonzie_Viper",450000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["A3L_Cooper_concept_blue",5000],
			["A3L_Cooper_concept_black",5000],
			["A3L_Cooper_concept_red",5000],
			["A3L_Cooper_concept_white",5000],
			["Jonzie_Mini_Cooper",10000],
			["B_Quadbike_01_F",5000],
			["A3L_Escort",12000],
			["A3L_EscortTaxi",12000],
			["A3L_EscortBlack",12000],
			["A3L_EscortBlue",12000],
			["A3L_EscortWhite",12000],
			["A3L_EscortPink",12000],
			["M1030",14000],
			["A3L_PuntoRed",18000],
			["A3L_PuntoBlack",18000],
			["A3L_PuntoWhite",18000],
			["A3L_PuntoGrey",18000],
			["C_Offroad_01_repair_F",20000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],
			["A3L_VolksWagenGolfGTired",36000],
			["A3L_VolksWagenGolfGTiblack",36000],
			["A3L_VolksWagenGolfGTiblue",36000],
			["A3L_VolksWagenGolfGTiwhite",36000],
			["DAR_H1A",500000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["A3L_F350Black",105000],
			["A3L_F350Blue",105000],
			["A3L_F350Red",105000],
			["A3L_F350White",105000],
			["A3L_Dumptruck",95000],
			["C_Van_01_box_F",100000],
			["C_Van_01_transport_F",85000],
			["A3L_Bus",200000],
			["A3L_Towtruck",40000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_Heli_Light_01_F",900000],
			["B_G_Offroad_01_F",50000],
			["C_SUV_01_F",15000],
			["B_G_Van_01_transport_F",65000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["IVORY_PRIUS",10000],
			["IVORY_REV",100000],
			
			["Jonzie_96_Impala_Unmarked",17000],
			["B_Quadbike_01_F",5000],
  			["A3L_ChargerUC",20000],
			["A3L_ChargerUCWhite",20000],
			["A3L_TaurusCO1",20000],
			["A3L_CVPIFPBPD",20000],
			["A3L_CVPIFPBLBPD",20000],
		    ["A3L_TaurusPD2",20000],
			["A3L_CVPIFPBCSO",20000],
			["A3L_CVPIFPBLBCSO",20000],
			["A3L_TaurusFPBCSO",20000],
			["A3L_TaurusFPBLBCSO",20000],
			["A3L_SuburbanCSO",20000],
			["A3L_SuburbanUM",20000],
			["EvoXSo1",40000],
			["EvoXSo2",40000],
			["EvoXSo3",40000],
			
			["A3L_CVPIUC",20000],
			["A3L_CVPIUCBlack",20000],
			["A3L_CVPIUCBlue",20000],
			["A3L_CVPIUCWhite",20000],
			["A3L_CVPIUCPink",20000],
			
			["A3L_GrandCaravanUC",30000],
			["A3L_GrandCaravanUCBlack",30000],
			["A3L_jailBus",50000],
			["A3L_TaurusPD1",20000],
			
			["A3L_TaurusUCGrey",30000],
			["A3L_TaurusUCRed",30000],
			
			["A3L_TahoeUC",29000],
			["A3L_TahoeLBPB",29000],
			["A3L_TahoeUCPB",29000],
			
			["A3L_TaurusFPBCSO",17000],
			["A3L_TaurusFPBLBCSO",17000],
			["A3L_CVPIFPBCSO",15000],
			["A3L_CVPIFPBLBCSO",15000],
			["A3L_TaurusFPBLBPD",17000],
			["A3L_TaurusFPBPD",17000],
			["A3L_CVPIFPBCSO",15000],
			["A3L_CVPIFPBPD",15000],
			["A3L_CVPIFPBLBPD",15000],
			["A3L_EvoXFPBLBPD",50000],
			["A3L_EvoXFPBLBSO",50000],
			["A3L_CVPIFPBLBSP",15000],
			["A3L_CVPIFPBLBSP2",15000],
			["A3L_GrandCaravanUC",25000],
			["A3L_GrandCaravanUCBlack",25000],
			
			["A3L_TaurusUCBlack",20000],
			["A3L_TaurusUCGrey",20000],
			["A3L_TaurusUCWhite",20000],
			["A3L_TaurusUCBlue",20000],
			["A3L_TaurusUCRed",20000],
			
			["DAR_ImpalaPoliceSlick",15000],
			["DAR_ImpalaPolice",15000],
			["DAR_ImpalaPoliceDet",15000],
			
			["DAR_ExplorerPolice",25000],
			["DAR_ExplorerPoliceStealth",25000],
			
			["DAR_SWATPolice",80000],	
			
			["A3L_CVPIUC",15000],
			
			["A3L_CVPIUCWhite",15000],
			
			["A3L_CVPIUCBlack",15000],
			
			["A3L_CVPIGrey",15000],
			
			["A3L_CVPIUCRed",15000],
			
			["A3L_CVPIUCPink",15000],
			
			["A3L_CVPIUCBlue",15000],
			
			["DAR_TahoePolice",40000],
			["DAR_TahoePoliceDet",40000],
			["DAR_ChargerPolice",40000],
			["DAR_ChargerPoliceStateSlick",40000],
			["B_MRAP_01_F",150000],
			["A3L_EvoXDarkGreen",17500],
			["A3L_EvoOffGreen",17500],
			["A3L_EvoXOffYellow",17500],
			["A3L_EvoXYellow",17500],
			["A3L_EvoXPink",17500],
			["A3L_EvoXPurple",17500],
			["A3L_EvoXWhite",17500],
			["A3L_EvoXBlack",17500],
			["A3L_EvoXRed",17500],
			["A3L_ChargerUCWhite",17500]

		];
	};
	case "civ_air":
	{
		_return =
		[
			["IVORY_T6A_1",300000],
			["bwi_a3_t6a_6",350000],
			["bwi_a3_t6a_nta",350000],
			["bwi_a3_t6a_7",350000],
			["bwi_a3_t6a_9",350000],
			["bwi_a3_t6a_4",350000],
			
			["C_Heli_Light_01_civil_F",300000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["IVORY_BELL512",500000],
			["O_Heli_Light_02_unarmed_F",750000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",75000],
			["IVORY_BELL512_POLICE",85000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",75000],
			["IVORY_BELL512_POLICE",85000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
