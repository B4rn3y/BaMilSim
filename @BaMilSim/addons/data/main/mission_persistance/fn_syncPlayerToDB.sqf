private ["_packet"];

_packet = [playerside,getplayeruid player];

_packet pushback [([BaMilSim_gear] call BaMilSim_fnc_mresarray),([[damage player]] call BaMilSim_fnc_mresarray),BaMilSim_alive,[getposatl player,getdir player],BaMilSim_playtime];


_packet remoteexec["BaMilSim_fnc_syncPlayerToDB",2];