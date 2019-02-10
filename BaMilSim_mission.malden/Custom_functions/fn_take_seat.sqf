

private ["_pos"];
if!(isnil "BaMilSim_sitting_chair") exitWith {["Du sitzt bereits..."] call BaMilSim_fnc_exp_hint};
BaMilSim_sitting_chair = _this select 0;
if(BaMilSim_sitting_chair getvariable["sitting",false]) exitWith {["Da sitzt bereits jemand..."] call BaMilSim_fnc_exp_hint};
player setVelocity [0,0,0];
player playaction "Civil";
waitUntil{animationState player isEqualTo "amovpercmstpsnonwnondnon"};
[player, "Crew"] remoteExec ["BaMilSim_fnc_animSync",-2,false];
BaMilSim_sitting_chair setvariable["sitting",true,true];

_pos = switch (typeof BaMilSim_sitting_chair) do
{
	case "Land_RattanChair_01_F":
	{
		[getPosatl BaMilSim_sitting_chair select 0,getPosatl BaMilSim_sitting_chair select 1,(getPosatl BaMilSim_sitting_chair select 2)-0.6]
	};

	case "Land_ArmChair_01_F":
	{
		[getPosatl BaMilSim_sitting_chair select 0,getPosatl BaMilSim_sitting_chair select 1,(getPosatl BaMilSim_sitting_chair select 2)-0.6]
	};

	case "Land_CampingChair_V2_F":
	{
		//[getPosatl MilSim_sitting_chair select 0,getPosatl MilSim_sitting_chair select 1,(getPosatl MilSim_sitting_chair select 2)]
		BaMilSim_sitting_chair modelToWorld [0,0,-1.4]
	};

	default
	{
		[getposatl BaMilSim_sitting_chair select 0, getposatl BaMilSim_sitting_chair select 1,((getposatl BaMilSim_sitting_chair select 2) +1)]
	};
};
 player setPosatl (getposatl BaMilSim_sitting_chair);

 player setDir ((getDir BaMilSim_sitting_chair) - 180);
 player setposatl _pos;

 BaMilSim_seat_action = player addaction["Aufstehen",{BaMilSim_sitting_chair setvariable["sitting",nil,true];player switchMove "";BaMilSim_sitting_chair = nil;[player, ""] remoteExec ["BaMilSim_fnc_animSync",-2,false]; player removeAction (_this select 2); BaMilSim_seat_action = nil;}];
