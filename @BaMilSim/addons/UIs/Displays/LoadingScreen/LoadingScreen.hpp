

class LoadingScreen {
	idd = 1337;
	duration = 10e10;
    fadein = 0;
    fadeout = 0;
	name= "LoadingScreen";
	onload = "uinamepespace setvariable['LoadingScreen',_this select 0]";
	movingEnable = false;
	enableSimulation = true;
	objects[] = {};

	class controlsBackground {
		class THE_SCREEN: BaMilSim_rscpicture
		{
			idc = -1;
			text = "UIs\textures\loadscreen.paa";
			x = -0.00520938 * safezoneW + safezoneX;
			y = -0.00379999 * safezoneH + safezoneY;
			w = 1.00635 * safezoneW;
			h = 1.00593 * safezoneH;
		};
	};

	class controls {};
};

