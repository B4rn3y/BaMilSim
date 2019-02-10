class CfgPatches {
	class data {
	        units[] = {};
	        weapons[] = {};
	        requiredVersion = 0.1;
	        requiredAddons[] = { "A3_Weapons_F" };
	};
};

class CfgFunctions
{
	class KRON_Strings
	{
		tag = "KRON";
		class Functions
		{
			file = "\data\main\functions\kron";
			class StrToArray{};
			class ArrayToStr{};
			class StrLeft{};
			class StrLen{};
			class StrRight{};
			class StrMid{};
			class StrIndex{};
			class StrInStr{};
			class Replace{};
			class StrUpper{};
			class StrLower{};
			class ArrayToUpper{};
			class Compare{};
			class findFlag{};
			class getArg{};
			class getArgRev{};
		};
	};

	class MAIN
	{
		tag = "BaMilSim";
		class functions
		{
			file = "\data\main\functions";
			class bool {};
			class mresArray {};
			class mresString {};
			class mToArray {};
			class numbersafe {};
			class binmake {};
			class itemInInventory {};
		};

		class atmosphere
		{
			file = "\data\main\atmosphere";
			class fog {ext = ".fsm";};
		};

		class init
		{
			file = "\data\main\Init";
			class init_functions {};
			class mainInit {ext = ".fsm";};
			class postinit {postinit = 1;};
			class preinit {preinit = 1;};
			class setupLoginData {};
			class variables {};
			class initVehicles {};
		};

		class mission_persistance
		{
			file = "\data\main\mission_persistance";
			class clearPlayerInventory {};
			class gear_to_VAR {};
			class inventory_closed {};
			class player_monitor {ext = ".fsm";};
			class step_update {};
			class syncPlayerToDB {ext = ".fsm";};
			class VAR_to_gear {};
			class survival {ext = ".fsm";};
			class GetOutMan {};
			class keyhandler {};
			class keyUp {};
			class onEachFrameHandler {};
			class stackOnEachFrame {};
		};

		class others
		{
			file = "\data\main\others";
			class admin_inform {};
			class intro {};
			class 3dCompass {};
		};
	};
};