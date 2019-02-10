class CfgPatches {
	class Uis {
	        units[] = {};
	        weapons[] = {};
	        requiredVersion = 0.1;
	        requiredAddons[] = { "A3_Weapons_F" };
	};
};

class CfgFunctions
{
	class MAIN
	{
		tag = "BaMilSim";

		class LoadingScreen
		{
			file = "\UIs\UI_functions\LoadingScreen";
			class closeLoadingScreen {};
			class openLoadingScreen {};
		};
	};
};


#include "BaMilSim_Templates.hpp"
#include "Dialogs.hpp"
#include "Displays.hpp"








