/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Turns on and displays a security cam like feed via PiP to the laptop display.
*/
_laptop = _this select 0;
_mode = _this select 3;

if(!isPiPEnabled) exitWith {hint localize "STR_Cop_EnablePiP";};
if(isNil "life_fed_scam") then {
	life_fed_scam = "camera" camCreate [0,0,0];
	life_fed_scam camSetFov 0.5;
	life_fed_scam camCommit 0;
	"rendertarget0" setPiPEffect [0];
	life_fed_scam cameraEffect ["INTERNAL", "BACK", "rendertarget0"];
	_laptop setObjectTexture [0,"#(argb,256,256,1)r2t(rendertarget0,1.0)"];
};

switch (_mode) do {
	case "front": {
		life_fed_scam camSetPos [8508.63,6511.59,5.2702];
		life_fed_scam camSetTarget [8504.3,6518.1,1.55898];
		life_fed_scam camCommit 0;
	};
	
	case "vault1": {
		life_fed_scam camSetPos [8527.68,6535.36,12.7781];
		life_fed_scam camSetTarget [8522.52,6528.76,10.0015];
		life_fed_scam camCommit 0;
	};
	
	case "vault2": {
		life_fed_scam camSetPos [8519.51,6530.16,8.70695];
		life_fed_scam camSetTarget [8516,6527.78,5.40143];
		life_fed_scam camCommit 0;
	};
	
	case "doc2": {
		life_fed_scam camSetPos [9526.67,9981.19,4.00144];
		life_fed_scam camSetTarget [9525.13,9990.76,0.00146];
		life_fed_scam camCommit 0;
	};
	
	case "doc3": {
		life_fed_scam camSetPos [9633.03,10104.8,5.36458];
		life_fed_scam camSetTarget [9626.89,10091.6,0.00146866];
		life_fed_scam camCommit 0;
	};
	
	case "off" :{
		life_fed_scam cameraEffect ["terminate", "back"];
		camDestroy life_fed_scam;
		_laptop setObjectTexture [0,""];
		life_fed_scam = nil;
	};
};
