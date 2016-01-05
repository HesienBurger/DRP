#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
		Edited by: "Daniel Craven"
       
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
                        default 
						{
                                ["EMS Supplies Shop",
                                        [
											["dlrp_old_Tablet_Device_i",nil,750],
                                            ["FirstAidKit",nil,100],
                                            ["Medikit",nil,100],
                                            ["ToolKit",nil,100]
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
                        default 
						{
                                ["EMS Basic Shop",
                                        [
                                            ["A3L_Extinguisher",nil,120],
                                            ["tf_anprc152",nil,50],
                                            ["tf_rt1523g",nil,50],
                                            ["ItemGPS",nil,20],
                                            ["ItemMap",nil,1],
                                            ["Binocular",nil,200],
											["NVGoggles",nil,500]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Cop Basic",
                                        [
											["dlrp_old_Tablet_Device_i",nil,750],
											["dlrp_old_handcuffs_i",nil,1250],
											["dlrp_id_card_i",nil,5000],
											["Medikit",nil,200],
                                            ["ToolKit",nil,200],
											["Radar_Gun",nil,50],
                                            ["Binocular",nil,200],
                                            ["ItemGPS",nil,50],
											["ItemMap",nil,50],
                                            ["tf_anprc152",nil,50]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_lsofficer":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Officer!"};
                        case (__GETC__(life_coplevel) < 1): {"You are not a Officer!"};
                        default
                        {
                                ["Cadet Shop",
                                        [
											["RH_g19",nil,500],
											["RH_17Rnd_9x19_g17",nil,50],                    
											["Taser_26",nil,1],
											["26_cartridge",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_lscpl":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Deputy!"};
                        default
                        {
                                ["Deputy Shop",
                                        [
											["RH_fnp45",nil,1500],
											["RH_15Rnd_45cal_fnp",nil,50],
											["RH_g19",nil,500],
											["RH_17Rnd_9x19_g17",nil,50],                    
											["Taser_26",nil,1],
											["26_cartridge",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_lssgt":
        {	
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not a Senior Deputy!"};
                        default
                        {
                                ["Senior Deputy Shop",
                                        [
											["RH_uspm",nil,5000],
											["RH_16Rnd_40cal_usp",nil,50],
											["hlc_smg_mp5a2",nil,1500],
											["hlc_30Rnd_9x19_B_MP5",nil,50],
											["RH_g19",nil,500],
											["RH_17Rnd_9x19_g17",nil,50],                    
											["Taser_26",nil,1],
											["26_cartridge",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_lslt":
        {	
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Corporal!"};
                        default
                        {
                                ["Corporal Shop",
                                        [
											["RH_PDW",nil,5000],
											["RH_30Rnd_6x35_mag",nil,50],
											["RH_uspm",nil,5000],
											["RH_16Rnd_40cal_usp",nil,50],
											["hlc_smg_mp5a2",nil,1500],
											["hlc_30Rnd_9x19_B_MP5",nil,50],
											["RH_g19",nil,500],
											["RH_17Rnd_9x19_g17",nil,50],                    
											["Taser_26",nil,1],
											["26_cartridge",nil,1]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_fbi":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not a Sergeant!"};
                        default
                        {
                                ["Sergeant Shop",
                                       [
											["RH_M4A1_ris",nil,5000],
											["RH_30Rnd_556x45_M855A1",nil,50],
											["RH_PDW",nil,5000],
											["RH_30Rnd_6x35_mag",nil,50],
											["RH_uspm",nil,5000],
											["RH_16Rnd_40cal_usp",nil,50],
											["hlc_smg_mp5a2",nil,1500],
											["hlc_30Rnd_9x19_B_MP5",nil,50],
											["RH_g19",nil,500],
											["RH_17Rnd_9x19_g17",nil,50],                    
											["Taser_26",nil,1],
											["26_cartridge",nil,1]
                                       ]
                                ];
                        };
                };
        };
		
		 case "cop_sert":
        {	
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not SERT!"};
                        default
                        {
                                ["SERT Shop",
                                        [
											["arifle_mas_g36c",nil,10000],
											["30Rnd_mas_556x45_Stanag",nil,250],
											["hlc_rifle_M4",nil,10000],
											["RH_eotech553mag",nil,250],
											["RH_SFM952V",nil,8000],
											["hlc_muzzle_556NATO_KAC",nil,50],
											["30Rnd_556x45_Stanag",nil,250],
											["hlc_rifle_m4m203",nil,11000],
											["hlc_muzzle_556NATO_KAC",nil,50],
											["RH_eotech553mag",nil,250],
											["30Rnd_556x45_Stanag",nil,250],
											["RH_PDW",nil,5000],
											["RH_30Rnd_6x35_mag",nil,250],
											["RH_peq15b_top",nil,100],
											["RH_compM2l",nil,100],
											["FHQ_optic_AC11704",nil,50],	
											["srifle_mas_m110",nil,20000],
											["muzzle_snds_H",nil,500],
											["acc_mas_pointer_IR2",nil,100],
											["optic_mas_DMS_c",nil,100],
											["acc_flashlight",nil,100],
											["20Rnd_mas_762x51_Stanag",nil,250],
											["RH_p226s",nil,2500],
											["RH_suppr9",nil,250],
											["RH_X300",nil,50],
											["RH_15Rnd_9x19_SIG",nil,50],
											["RH_Hk416",nil,15000],
											["RH_30Rnd_556x45_M855A1",nil,250],											
											["RH_M4m",nil,15000],
											["RH_30Rnd_556x45_M855A1",nil,250],
											["srifle_mas_m24",nil,30000],
											["5Rnd_mas_762x51_Stanag",nil,1000],
											["RH_M4A6",nil,15000],
											["RH_30Rnd_68x43_Match",nil,250],
											["arifle_mas_mp5",nil,10000],
											["30Rnd_mas_9x21_Stanag",nil,250],
											["srifle_mas_sr25",nil,30000],
											["20Rnd_mas_762x51_Stanag",nil,1000],
											["arifle_mas_m1014",nil,15000],
											["7Rnd_mas_12Gauge_Pellets",nil,100],
											["7Rnd_mas_12Gauge_Slug",nil,100],
											["RH_p226",nil,6000],
											["RH_15Rnd_9x19_SIG",nil,250],
											["RH_usp",nil,5000],
											["RH_12Rnd_45cal_usp",nil,250],
											["optic_LRPS",nil,100],
											["optic_mas_term",nil,100],
											["optic_MRCO",nil,100],
											["optic_mas_acog",nil,100],
											["RH_ta31rmr",nil,100],
											["optic_mas_Holosight_blk",nil,100],
											["RH_eotech553",nil,100],
											["RH_eotech553mag",nil,100],
											["RH_compM2l",nil,100],
											["optic_mas_aim",nil,100],
											["RH_peq15b",nil,100],
											["RH_X300",nil,100],
											["acc_flashlight",nil,100],
											["RH_SFM952V",nil,100],
											["hlc_smg_MP5N",nil,20000],
											["hlc_30Rnd_9x19_B_MP5",nil,250],
											["FHQ_optic_AIM",nil,100],
											["hlc_smg_mp5a3",nil,20000],
											["hlc_30Rnd_9x19_B_MP5",nil,250],
											["FHQ_optic_AC12136",nil,100],
											["hlc_smg_mp5a2",nil,20000],
											["hlc_30Rnd_9x19_B_MP5",nil,250],
											["RH_M4A1_ris",nil,10000],
											["RH_30Rnd_556x45_Mk262",nil,250],
											["RH_saker",nil,100],
											["HandGrenade_Stone","Flashbang",100],
											["SmokeShellYellow",nil,100],
											["Rangefinder",nil,100],
											["Laserdesignator","Marksman Only",100]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_lie":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 6): {"You are not a Lieutenant!"};
                        default
                        {
                                ["Lieutenant Shop",
                                       [
											["hlc_rifle_M4",nil,5000],
											["hlc_30rnd_556x45_EPR",nil,50],
											["RH_M4A1_ris",nil,5000],
											["RH_30Rnd_556x45_M855A1",nil,50],
											["RH_PDW",nil,5000],
											["RH_30Rnd_6x35_mag",nil,50],
											["RH_uspm",nil,5000],
											["RH_16Rnd_40cal_usp",nil,50],
											["hlc_smg_mp5a2",nil,1500],
											["hlc_30Rnd_9x19_B_MP5",nil,50],
											["RH_g19",nil,500],
											["RH_17Rnd_9x19_g17",nil,50],                    
											["Taser_26",nil,1],
											["26_cartridge",nil,1]
                                       ]
                                ];
                        };
                };
        };
		
		case "cop_command":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a command!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not command!"};
                        default
                        {
                                ["Command",
                                        [
                                        ["mas_launch_Stinger_F",nil,50000],
                                        ["Titan_AA",nil,5000],
                                        ["DemoCharge_Remote_Mag",nil,3500],
										["srifle_mas_lrr",nil,35000],
                                        ["10Rnd_mas_338_Stanag",nil,500],
										["RH_M4m",nil,15000],
										["RH_30Rnd_556x45_M855A1",nil,250],
										["srifle_mas_m24",nil,35000],
										["5Rnd_mas_762x51_Stanag",nil,1000],
										["RH_M4A6",nil,15000],
                                        ["RH_30Rnd_68x43_Match",nil,250],
                                        ["arifle_mas_mp5",nil,5000],
                                        ["30Rnd_mas_9x21_Stanag",nil,50],
                                        ["srifle_mas_sr25",nil,35000],
                                        ["20Rnd_mas_762x51_Stanag",nil,1000],
                                        ["arifle_mas_m1014",nil,10000],
                                        ["7Rnd_mas_12Gauge_Pellets",nil,200],
                                        ["7Rnd_mas_12Gauge_Slug",nil,200],
                                        ["RH_p226",nil,6000],
                                        ["RH_15Rnd_9x19_SIG",nil,250],
                                        ["RH_usp",nil,5000],
                                        ["RH_12Rnd_45cal_usp",nil,250],
                                        ["optic_LRPS",nil,100],
                                        ["optic_mas_term",nil,100],
                                        ["optic_MRCO",nil,100],
                                        ["optic_mas_acog",nil,100],
                                        ["RH_ta31rmr",nil,100],
                                        ["optic_mas_Holosight_blk",nil,100],
                                        ["RH_eotech553",nil,100],
                                        ["RH_eotech553mag",nil,100],
                                        ["RH_compM2l",nil,100],
                                        ["optic_mas_aim",nil,100],
                                        ["RH_peq15b",nil,100],
                                        ["RH_X300",nil,100],
                                        ["acc_flashlight",nil,100],
                                        ["RH_SFM952V",nil,100],
                                        ["hlc_smg_MP5N",nil,100],
                                        ["hlc_30Rnd_9x19_B_MP5",nil,100],
                                        ["FHQ_optic_AIM",nil,100],
                                        ["hlc_smg_mp5a3",nil,100],
                                        ["hlc_30Rnd_9x19_B_MP5",nil,100],
                                        ["FHQ_optic_AC12136",nil,100],
                                        ["hlc_smg_mp5a2",nil,10000],
                                        ["hlc_30Rnd_9x19_B_MP5",nil,200],
                                        ["RH_M4A1_ris",nil,10000],
										["RH_30Rnd_556x45_Mk262",nil,250],
                                        ["FHQ_optic_AC12136",nil,100],
										["RH_saker",nil,100],
                                        ["HandGrenade_Stone","Flashbang",100],
										["SmokeShellYellow",nil,100]
                                        ]
                                ];
                        };
                };
        };
		
		case "rebel_low":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"What you think you're doing mate? Get out of here before i shoot your fucking dick off m8"};
                        default
                        {
                                ["Rebel Pistols",
                                    [

                                        ["RH_kimber_nw",nil,7000],
                                        ["RH_7Rnd_45cal_m1911",nil,600],
                                        ["hgun_ACPC2_F",nil,7500],
                                        ["9Rnd_45ACP_Mag",nil,650],
                                        ["hgun_Pistol_heavy_01_F",nil,7500],
                                        ["11Rnd_45ACP_Mag",nil,650],
                                        ["RH_vp70",nil,10000],
                                        ["RH_18Rnd_9x19_VP",nil,800],  
                                        ["RH_muzi",nil,11000],
                                        ["RH_30Rnd_9x19_UZI",nil,800],										
										["A3L_TaurusGold",nil,15000],
										["A3L_TaurusMag",nil,800],									
										["RH_Deagleg",nil,19000],
										["RH_7Rnd_50_AE",nil,1000],									
										["RH_Deagles",nil,17000],
										["RH_7Rnd_50_AE",nil,1000],
                                        ["RH_tec9",nil,20000],
                                        ["RH_32Rnd_9x19_tec",nil,1500],
                                        ["RH_vz61",nil,20000],
                                        ["RH_20Rnd_32cal_vz61",nil,1500],
                                        ["RH_g18",nil,19000],
                                        ["RH_19Rnd_9x19_g18",nil,1500],
                                        ["RH_33Rnd_9x19_g18",nil,1500],
										["RH_m9",nil,7000],
                                        ["RH_m9qd",nil,2000],
                                        ["RH_15Rnd_9x19_M9",nil,600]
										
                                    ]
                                ];
                        };
                };
        };
		
		case "rebel_high":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"What you think you're doing mate? Get out of here before i shoot your fucking dick off m8"};
                        default
                        {
                                ["Rebel Primarys",
                                    [
                            
										["A3L_AK47",nil,150000],
										["A3L_AK47Mag",nil,500],
										["A3L_AK47s",nil,110000],
										["A3L_AK47sMag",nil,100],
                                        ["hgun_PDW2000_F",nil,25000],
										["30Rnd_9x21_Mag",nil,2000],
                                        ["SMG_02_F",nil,35000],
										["30Rnd_9x21_Mag",nil,4000],
                                        ["RH_sbr9_des",nil,20000],
										["RH_32Rnd_9mm_M822",nil,1000],
                                        ["chakFNP90_50rnd_skin1",nil,100000],
                                        ["chakFNP90_57x28_B_skin1",nil,100]

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
                                ["Kaels Firearms",
                                        [
                                                ["RH_g17",nil,23500],
                                                ["RH_g19",nil,50],
                                                ["RH_g19t",nil,22000],
                                                ["RH_17Rnd_9x19_g17",nil,50],
                                                ["RH_m9",nil,22000],
                                                ["RH_15Rnd_9x19_M9",nil,50],
                                                ["hgun_Rook40_F",nil,22500],
                                                ["16Rnd_9x21_Mag",nil,50],
												["RH_mk2",nil,23500],
                                                ["RH_10Rnd_22LR_mk2",nil,50],
												["RH_m9c",nil,22500],
                                                ["RH_15Rnd_9x19_M9",nil,50],
                                                ["hgun_P07_F",nil,23500],
                                                ["16Rnd_9x21_Mag",nil,50],
                                                ["RH_gsh18",nil,42800],
                                                ["RH_18Rnd_9x19_gsh",nil,50]


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
                                                ["A3L_CZ550",nil,25000],
                                                ["A3L_CZ550mag",nil,350],
                                                ["A3L_CZ550Scope",nil,100],
                                                ["arifle_SDAR_F","Turtle ONLY Harpoon",15000],
                                                ["20Rnd_556x45_UW_mag","Underwater magazine",250]
                                        ]
                                ];
                        };
                };
        };      
		
		case "genstore":
        {
                ["General Store",
                        [
								["dlrp_old_Tablet_Device_i",nil,750],
                                ["ItemMap",nil,1],
                                ["tf_anprc152",nil,100],
                                ["Binocular",nil,100],
                                ["tf_microdagr",nil,50],
                                ["ToolKit",nil,250],
                                ["ItemCompass",nil,100],
								["NVGoggles_mas_h",nil,5000],
                                ["NVGoggles_OPFOR",nil,5000],
                                ["NVGoggles",nil,5000],
                                ["Chemlight_red",nil,50],
                                ["Chemlight_yellow",nil,50],
                                ["Chemlight_green",nil,50],
                                ["Chemlight_blue",nil,50],
								["CG_PICKAXE","Pickaxe(Rocket Launcher Slot)",50],
								["cg_scythe","Stick of Death(Rocket Launcher Slot)",50],
								["CG_BAT","Bat(Rocket Launcher Slot)",50],
								["CG_CROSS","Holy Cross(Rocket Launcher Slot)",50],
								["cg_machete","Machete(Rocket Launcher Slot)",50],
								["cg_hatchet","Hatchet(Rocket Launcher Slot)",50],
                                ["A3L_ChainSaw","Chainsaw(Primary Slot)",50],
                                ["A3L_JackHammer","Jack Hammer(Primary Slot)",50],
                                ["A3L_Shovel","Shovel(Primary Slot)",50],
                                ["A3L_Hammer","Hammer(Secondary Slot)",50],
                                ["A3L_Spanner","Spanner(Secondary Slot)",50],
                                ["A3L_Sign2","Weed Sign(Secondary Slot)",50],
                                ["A3L_Sign","Police Sign(Secondary Slot)",50],
                                ["Tv_Camera","TV Camera(Secondary Slot)",50]
                        ]
                ];
        };
};