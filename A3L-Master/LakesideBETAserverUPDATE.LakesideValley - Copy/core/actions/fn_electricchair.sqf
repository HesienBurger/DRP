/*
Search Words: 
electric chair sitting
*/

player setPos [8779.13,6719.67,0];
player setDir 278.47;

[[player,"BasicDriver"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
player playMoveNow "BasicDriver";


sleep 1;

player setPos [8779.13,6719.67,0];
player setDir 278.47;

[[player,"BasicDriver"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
player playMoveNow "BasicDriver";

while {animationState player == "BasicDriver"} do
    {
	    sleep 1;
		player setPos [8779.13,6719.67,0];
		player setDir 278.47;
	};