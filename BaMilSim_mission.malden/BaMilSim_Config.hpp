

class BaMilSim_settings {

	class Bambi_gear {
		uniforms[] = {"U_BG_Guerilla2_1"};// just arrays with stuff to add
		goggles[] = {"G_Bandanna_blk"};
		headgear[] = {"H_Bandanna_gry"};
		backpack[] = {"B_Carryall_khk"};
	};

	class settings {
		Spawn_with_map = 1; // 1 = with map  0 = without Map

		fatigue_enabled = 0; // 0 = fatigue of players disabled // 1 = the opposite

	};
	class Spawn_Points {
		civilian_spawnPoints[] = {{"Athira","\a3\ui_f\data\map\MapControl\bunker_ca.paa","spawn_athira"}}; // saved like:   [Name,Picture for LB,POS as Marker]
		west_spawnPoints[] = {{"Athira","\a3\ui_f\data\map\MapControl\bunker_ca.paa","spawn_athira"}};
		independent_spawnPoints[] = {{"Athira","\a3\ui_f\data\map\MapControl\bunker_ca.paa","spawn_athira"}};

	};
};











class CfgDebriefing
{
	class NotWhitelisted
	{
		title = "Mission Failed";
		subtitle = "Du wurdest nicht freigeschaltet um diesen Slot zu benutzen.";
		description = "Du bist nicht berechtig diesen Slot zu nutzen, Bewerbungen können im Forum getätigt werden!";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

	class Blacklisted
	{
		title = ">>>GESPERRt<<<";
		subtitle = "Du wurdest gesperrt.";
		description = ">>>>!Du wurdest für diesen Server gesperrt!<<<";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

	class Vars_set
	{
		title = ">>>ERROR Variablen<<<";
		subtitle = "Du hattest Variablen gesetzt.";
		description = ">>>>!Du hattest Variablen gesetzt die nicht hätten sein dürfen!<<<";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

	class Soft_whitelist
	{
		title = "Mission Failed";
		subTitle = "Soft Whitelist aktiv!";
		description = "Die Soft Whitelist ist auf dem Server aktuell aktiv, bitte versuche es zu einem späteren Zeitpunkt erneut";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

	class Aborted
	{
		title = "Getrennt!";
		subTitle = "Spielerdaten wurden gespeichert!";
		description = "Danke für das Spielen <3";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

	class Server_Error
	{
		title = "Server Fehler!";
		subTitle = "Es gab einen internen Server Fehler";
		description = "Der Server hatte beim Starten einen Fehler, bitte kontaktiere deswegen einen Admin wenn Sie nicht schon bescheid wissen, danke.";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

	class Bad_Version
	{
		title = "Version ungleich!";
		subTitle = "Ungleiche Version!";
		description = "Du und der Server benutzen eine andere Version von BaMilSim.";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

	class Error
	{
		title = "Fehler!";
		subTitle = "Es gab einen internen Fehler";
		description = "Es gab einen Fehler. Bitte connecte erneut zum Server und versuche es erneut.";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};

};