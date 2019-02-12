


	0 spawn {

		waituntil {!isnull (finddisplay 46)};
		waituntil{!isnil "BaMilSIm_adminlevel"};
		//(findDisplay 46) displaySetEventHandler ["KeyDown","if((_this select 1) == 54) then {[] call MilSim_fnc_PP;false}"];

		if(call BaMilSIm_adminlevel > 0) then {

			[] spawn BaMilSim_fnC_teleesp;

			["Loading Zeus...."] call BaMilSim_fnc_exp_hint;
			{
				group_curator = createGroup civilian;
				"ModuleCurator_F" createUnit [[0,0,0], group_curator, "bis_curator = this;"];
				"ModuleCuratorSetAttributesPlayer_F" createUnit [[0,0,0], group_curator, "zeusAttrib = this;"];
				"ModuleCuratorSetCoefs_F" createUnit [[0,0,0], group_curator, "zeusCosts = this;"];
				"ModuleCuratorAddPoints_F" createUnit [[0,0,0], group_curator, "zeusRessources = this;"];
			} remoteexec["BIS_FNC_SPAWN",2];   // bis_curatorUnit assignCurator bis_curator;

			bis_curatorUnit = player;
			publicVariable "bis_curatorUnit";
			sleep 5;
			{
				bis_curatorUnit assignCurator bis_curator;
			} remoteexec["BIS_FNC_SPAWN",2];
			sleep 2;
			["Zeus loaded"] call BaMilSim_fnc_exp_hint;
		};
	};





