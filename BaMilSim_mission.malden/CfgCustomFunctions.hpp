

class CfgFunctions
{
	class custom_functions
	{
		tag = "BaMilSim";
		class C_functions
		{
			file = "Custom_functions";
			class init_ambient {};
			class teleesp {};
			class animSync {};
			class exp_hint {};
			class take_seat {};
			class postInit_mission {postInit = 1;};
			class PBoats {};
			class PP {};
			class sirenLights {};
			class project_camera {};
			class sirenLightsConfig {};
			class sirenLightsEx {};
			class sirenLightsLoop {ext = ".fsm";};

		};
	};
};