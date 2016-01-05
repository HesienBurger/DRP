private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Repairs Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["","Lakeside Repairs Clothing",125],
		["","DRP Civilian Clothing",0] // keep free
		];
	};
	
	//Hats
	case 1:
	{
		[
 		["","",], // leave bank
		["","",] // leave bank

		];
	};
	
	//Glasses
	case 2:
	{
		[
		["","",], // leave bank
		["","",] // leave bank
		];
	};
	
	//Vest
	case 3:
	{
		[
		["","",], // leave bank
		["","",] // leave bank
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cl3_civ_tacticalbelt","Civ Tactical Belt",2500], // keep
			["B_Carryall_khk","Carryall KNK",5000] // change later to DRP Invisible backpack.
		];
	};
};