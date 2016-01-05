/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "phones": {["Phones",["cleankit","mobilephone"]]};
	case "market": {["Market",["medkit","condom","cleankit","bandage","water","mobilephone","tierope","bec","cigarette""water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "drinks": {["Drinks",["cigarette","zoobeer","zoobeer2","vodka","jagerbomb","absinthe","redwine","whiterussian","sexonthebeach","tequila","jackdanielsandcoke","Rax's Rum","water","redgull"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","hackingtool"]]};
	case "gang": {["Gang Market", ["bandage","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "drugstore": {["Drug Dealer",["marijuana","cokep","cokeu","methp","methu","MDMAp","MDMAu"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Seed Market",["wheat seed","sunflower seed","corn seed","bean seed","cotton seed","olive seed","opium seed","cannabis seed","pumpkin seed"]]};	
	case "glass": {["Glass Dealer",["glass"]]};
	case "iron": {["Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["weddingring","diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["medkit","cleankit","panicbutton","bandage","mobilephone","donuts","coffee","water","rabbit","apple","redgull","fuelF","defusekit","BarGate","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "ems": {["EMS Item Shop",["condom","cleankit","epipen","splint","stitches","bandage","mobilephone","water","rabbit","apple","redgull","tbacon","peach","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "dukindonuts": {["Dunkin' Bronuts",["donuts","coffee","redgull","water"]]};
	case "butcher": {["Bob's Flesh'n Besh",["raw goat meat","raw chicken","raw sheep meat","raw rabbit"]]};
};


