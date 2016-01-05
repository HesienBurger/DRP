adminCMD = lbCurSel 1500;
liafu = player;

switch (adminCMD) do
{
	case 0: //Delete (Blank)
	{
	};
	case 1: //Thirst (Blank)
	{
	life_hunger = 100;
	};
	case 2: //Hunger (Blank)
	{
	life_hunger = 100;
	};
	case 3: //250k (Blank)
	{
	life_cash = 250000;
	};

	
};
/*
-----------------------------------------------------------------------------------------
*/

// 
if (TarGetPLayer == "") then
{
	CoDeString = cmdLine;
}
else
{
	CoDeString = "if (name vehicle player == TarGetPLayer) then {_comp = compile cmdLine; call _comp;}";
};

publicVariable "TarGetPLayer";
sleep 0.3;
publicVariable "cmdLine";
sleep 0.3;
publicVariable "CoDeString";
sleep 0.3;

// nil = [CoDeString] execVM "public.sqf";
_O0O0 = player;
hint "Code Actiavted";