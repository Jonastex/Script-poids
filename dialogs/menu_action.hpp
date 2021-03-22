/**
 * @author John life is dev 
 * @email Jonastex#2733
 * @create date 2020-11-28
 * @modify date 2020-11-28
 * @desc [description]
*/
class menu_action {
	idd = 2811;
	name = "menu_action";
	author = "John life is dev";
	onload = "[0] spawn john_fnc_gros;";

	class controlsbackground {
		class poids: RscStructuredText
		{
			idc = 032811;
			x = 0.345313 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.108281 * safezoneW;
			h = 0.055 * safezoneH;
		};
	};

	class controls {
		class pompe: RscButton
		{
			idc = -1;
			text = "Pompe";
			onbuttonclick = "[1] spawn john_fnc_gros;";
			x = 0.34918 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.0657422 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class squat: RscButton
		{
			idc = -1;
			text = "Squat";
			onbuttonclick = "[2] spawn john_fnc_gros;";
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.0657422 * safezoneW;
			h = 0.066 * safezoneH;
		};
	};
};
