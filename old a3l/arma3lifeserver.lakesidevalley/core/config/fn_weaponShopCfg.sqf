#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
		Edited: DLRP dev team 'heisen'
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["FirstAidKit",nil,250],
											["Medikit",nil,500],
											["ToolKit",nil,500]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["dlrp_old_Tablet_Device_i",nil,750],
											["A3L_Extinguisher",nil,350],
											["tf_anprc152",nil,100],
                                            ["tf_rt1523g",nil,300],
											["ItemGPS",nil,250],
											["Binocular",nil,1250],
											["ToolKit",nil,500],
											//["pmc_earpiece",nil,500],
											["Chemlight_red",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
		
		case "cop_essential":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["LEO Essential Items",
                                        [
												["dlrp_old_Tablet_Device_i",nil,750],
												["dlrp_old_handcuffs_ii",nil,1250],
												["dlrp_id_card_i",nil,5000],
										
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
												["Taser_26",nil,90],
										        ["26_cartridge",nil,0],
												
                                                ["Radar_Gun",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,500],
												//["pmc_earpiece",nil,500],
												["optic_LRPS",nil,500],
												
                                                ["tf_anprc152",nil,100],
												["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
	
		
        case "cadet":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Cadet Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200]
                                ];
                        };
                };
        };
		
	    case "deputy":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 2): {" You are not a Deputy."};
                        default
                        default
                        {
                                ["Deputy Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
	    case "senior_deputy":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 3): {" You are not a Senior Deputy."};
                        default
                        default
                        {
                                ["Senior Deputy Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200], 
												["RH_uspm",nil,1500],
												["RH_16Rnd_40cal_usp",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
	    case "corporal":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 4): {" You are not a Corporal."};
                        default
                        default
                        {
                                ["Corporal Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200], 
												["RH_uspm",nil,1500],
												["RH_16Rnd_40cal_usp",nil,200],
												["RH_PDW",nil,3500],
												["RH_30Rnd_6x35_mag_Tracer",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
	    case "sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 5): {" You are not a Sergeant."};
                        default
                        default
                        {
                                ["Sergeant Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200], 
												["RH_uspm",nil,1500],
												["RH_16Rnd_40cal_usp",nil,200],
												["RH_PDW",nil,3500],
												["RH_30Rnd_6x35_mag_Tracer",nil,200],
												["RH_M4_moe",nil,4500],
												["RH_eotech553mag",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
	    case "lieutenant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 6): {" You are not a Lieutenant."};
                        default
                        default
                        {
                                ["Lieutenant Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200], 
												["RH_uspm",nil,1500],
												["RH_16Rnd_40cal_usp",nil,200],
												["RH_PDW",nil,3500],
												["RH_30Rnd_6x35_mag_Tracer",nil,200],
												["RH_M4_moe",nil,4500],
												["RH_eotech553mag",nil,200],
												["RH_M16A3",nil,5500],
												["RH_30Rnd_556x45_M855A1",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
	    case "captain":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 6): {" You are not a Captain."};
                        default
                        default
                        {
                                ["Captain Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200], 
												["RH_uspm",nil,1500],
												["RH_16Rnd_40cal_usp",nil,200],
												["RH_PDW",nil,3500],
												["RH_30Rnd_6x35_mag_Tracer",nil,200],
												["RH_M4_moe",nil,4500],
												["RH_eotech553mag",nil,200],
												["RH_M16A4",nil,5500],
												["RH_30Rnd_556x45_M855A1",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
		case "command":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 7): {" You are not a Command Member."};
                        default
                        default
                        {
                                ["Command Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200], 
												["RH_uspm",nil,1500],
												["RH_16Rnd_40cal_usp",nil,200],
												["RH_PDW",nil,3500],
												["RH_30Rnd_6x35_mag_Tracer",nil,200],
												["RH_M4_moe",nil,4500],
												["RH_eotech553mag",nil,200],
												["RH_M16A4",nil,5500],
												["RH_30Rnd_556x45_M855A1",nil,200],
												["hlc_rifle_M4",nil,5500],
												["hlc_30rnd_556x45_EPR",nil,200]
                                        ]
                                ];
                        };
                };
        };
		
		case "sert":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
						case (__GETC__(life_coplevel) < 5): {" You are not a SERT Member."};
                        default
                        default
                        {
                                ["SERT Shop",
                                        [
												["Taser_26",nil,0],
										        ["26_cartridge",nil,0],
												["RH_g17",nil,1500],
												["RH_17Rnd_9x19_g17",nil,200],
												["RH_fnp45t",nil,1500],
												["RH_15Rnd_45cal_fnp",nil,200], 
												["RH_uspm",nil,1500],
												["RH_16Rnd_40cal_usp",nil,200],
												["RH_PDW",nil,3500],
												["RH_30Rnd_6x35_mag_Tracer",nil,200],
												["RH_M4_moe",nil,4500],
												["RH_eotech553mag",nil,200],
												["RH_M16A4",nil,5500],
												["RH_30Rnd_556x45_M855A1",nil,200],
												["hlc_rifle_M4",nil,5500],
												["hlc_30rnd_556x45_EPR",nil,200],
												["hlc_smg_MP5N",nil,5500],
												["hlc_30Rnd_9x19_B_MP5",nil,200],
												["hlc_rifle_M4",nil,5500],
												["hlc_30rnd_556x45_EPR",nil,200]
                                        ]
                                ];
                        };
                };
        };
        
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have the rebel license, go aquire one, then come back to me!"};
                        default
                        {
                                ["Rebel Outpost",
                                        [
										// AK Variants
										["RH_m16a6_des",nil,650000],
										["RH_30Rnd_68x43_FMJ",nil,650],
										
										["RH_m110",nil,625000], 
										["RH_20Rnd_762x51_M80A1",nil,6250],
										
										["A3L_AK47",nil,615000],
										["A3L_AK47Mag",nil,6150], 
										
										["RH_ar10",nil,625000],
										["RH_20Rnd_762x51_AR10",nil,6250],
										
										["RH_sbr9",nil,555000],
										["RH_32Rnd_9mm_M822",nil,5550],
										
										["hlc_rifle_rpk74n",nil,625000],
										["hlc_45Rnd_545x39_t_rpk",nil,6250],
										
										["RH_fn57",nil,222500],
										["RH_20Rnd_57x28_FN",nil,2225],
										
										["RH_tec9",nil,255000],
										["RH_32Rnd_9x19_tec",nil,2550]
										
										]
                                ];
                        };
                };
        };
       
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
										["RH_g17",nil,18000],
										["RH_17Rnd_9x19_g17",nil,4000],
										["RH_m9",nil,17500],
										["RH_15Rnd_9x19_M9",nil,3888],
										["RH_cz75",nil,22000],
										["RH_16Rnd_9x19_CZ",nil,4888],
										["RH_gsh18",nil,45000],
										["RH_18Rnd_9x19_gsh",nil,4500]
                                        ]
                                ];
                        };
                };
        };
		
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Rifle Shop",
                                        [
										["arifle_mas_lee",nil,25000],
										["5Rnd_mas_762x51_Stanag",nil,1000],
										["arifle_SDAR_F","Turtle Harpoon",30000],
										["20Rnd_556x45_UW_mag","Underwater magazine",1200]

                                        ]
                                ];
                        };
                };
        };		
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
										["A3L_Glock17",nil,17600],
										["A3L_Glock17mag",nil,500],
										["A3L_UZI",nil,37250],
										["A3L_UZImag",nil,950]	
										
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Lakeside General Store",
                        [
								["dlrp_old_Tablet_Device_i",nil,750],
								["ItemMap",nil,69],
								["A3L_Sign2","Legalize Weed",1000],
								["A3L_Sign","Police Pigs",1000],
								["FirstAidKit",nil,250],
                                ["itemRadio",nil,1000],
                                ["Binocular",nil,1250],
                                ["ItemGPS",nil,750],
                                ["ToolKit",nil,500],
                                ["NVGoggles_OPFOR",nil,7500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Tv_Camera",nil,200],
                                ["A3L_Shovel",nil,200]
                        ]
                ];
        };
};