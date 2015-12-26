class orangePicture
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_PICTURE;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = "PuristaLight";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    fixedWidth = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
};


class orangeButton
{
    
   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {0, 0, 0, 1.0};
    colorDisabled[] = {0.4,0.4,0.4,0};
    colorBackground[] = {0.75,0.75,0.75,0.8};
    colorBackgroundDisabled[] = {0,0.0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,1};
    colorFocused[] = {0.75,0.75,0.75,.5};
    colorShadow[] = {0.023529,0,0.0313725,1};
    colorBorder[] = {0.023529,0,0.0313725,1};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    font = "PuristaLight";
    sizeEx = 0.03921;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};



class orangelb

{

style                   = ST_LEFT;
idc                     = -1;
colorSelect[]           = {0, 0, 0, 1.0};
colorSelectBackground[] = {0.7, 0.7, 0.7, 1};
colorText[]             = {0, 0, 0, 1.0};
colorBackground[]       = {0.8, 0.8, 0.8, 0.3};
colorScrollbar[] 	= {Dlg_Color_White,1};
font                    = FontHTML;
sizeEx                  = 0.025;
rowHeight               = 0.04;
period 			= 1.200000;
maxHistoryDelay 	= 1.000000;
autoScrollSpeed 	= -1;
autoScrollDelay 	= 5;
autoScrollRewind 	= 0;

class ScrollBar {};

};

class orange2: orangelb

{

soundSelect[] = {"", 0.1, 1};
type          = CT_LISTBOX;

};



class orange_menu
{
	idd=-1;
	movingenable=false;
	
	class controls 
	{

	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Willie Stroker, v1.063, #Tisaza)
	////////////////////////////////////////////////////////

	class evo_bg: orangePicture
	{
		idc = 1201;
		text = "orangemenu\background.jpg";
		x = 0;
		y = 0.12;
		w = 1;
		h = 0.76;
	};
	class evo_logo: orangePicture
	{
		idc = 1202;
		text = "orangemenu\evo.jpg";
		x = 0.0375;
		y = 0.16;
		w = 0.15;
		h = 0.18;
	};
	class evo_close: orangeButton
	{
		idc = 1600;
		text = "Close"; //--- ToDo: Localize;
		action = "closedialog 0;";	
		x = 0.025;
		y = 0.8;
		w = 0.1875;
		h = 0.04;
	};
	class evo_teleport: orangeButton
	{
		idc = 1601;
		text = "Teleport"; //--- ToDo: Localize;
		action="[player] execVM ""orangemenu\teleport.sqf"";";
		x = 0.025;
		y = 0.4;
		w = 0.1875;
		h = 0.04;
	};
	class heal_yourcar: orangeButton
	{
		idc = 1602;
		text = "Fix your car"; //--- ToDo: Localize;
		action="[player] execVM ""orangemenu\fixcar.sqf"";";
		x = 0.025;
		y = 0.72;
		w = 0.1875;
		h = 0.04;
	};
	class evo_healyou: orangeButton
	{
		idc = 1603;
		text = "Heal yourself"; //--- ToDo: Localize;
		action="[player] execVM ""orangemenu\healp.sqf"";";
		x = 0.025;
		y = 0.64;
		w = 0.1875;
		h = 0.04;
	};
	class evo_god: orangeButton
	{
		idc = 1604;
		text = "Revive cursor"; //--- ToDo: Localize;
		action="[player] execVM ""orangemenu\revive.sqf"";";
		x = 0.025;
		y = 0.56;
		w = 0.1875;
		h = 0.04;
	};
	class evo_playertags: orangeButton
	{
		idc = 1605;
		text = "Show Playertags"; //--- ToDo: Localize;
		action="[player] execVM ""orangemenu\esp.sqf"";";
		x = 0.025;
		y = 0.48;
		w = 0.1875;
		h = 0.04;
	};
	class evo_list: orange2
	{
		idc = 1500;
		x = 0.2875;
		y = 0.4;
		w = 0.6625;
		h = 0.36;
	};
	class evo_activate: orangeButton
	{
		idc = 1606;
		text = "Activate Command"; //--- ToDo: Localize;
		x = 0.2875;
		y = 0.8;
		w = 0.6625;
		h = 0.04;
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////

		
};
};

