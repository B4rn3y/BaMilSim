class CfgPatches {
	class functions_base {
	        units[] = {};
	        weapons[] = {};
	        requiredVersion = 0.1;
	        requiredAddons[] = { "A3_Weapons_F" };
	};
};


class CfgFunctions
{
	class MAIN_2
	{
		tag = "BaMilSim";

		class functions
		{
			file = "\functions_base";
			class nearplayers {};
			class inString {};
			class arrayWithNull {};
			class ArrayRemoveDoubles {};

		};
	};
};

