/*---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------*/
TEAM_TERROR = DarkRP.createJob("Terrorist", {
	color = Color(255, 0, 0, 255),
	model = "models/player/phoenix.mdl",
	description = [[You are a terrorist. You raise havoc in the city and can terrorize lives of others.
		You can raid.
		You can mug.
		You cannot KOS government.
		You can call terror.]],
	weapons = {"lockpick", "m9k_ak47", "keypad_cracker"},
	command = "terrorist",
	max = 5,
	salary = 55,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_HITMAN = DarkRP.createJob("Hitman", {
	color = Color(255, 0, 0, 255),
	model = "models/player/guerilla.mdl",
	description = [[You are a Hitman, you are hired by people to kill a target. Watch out for the police because killing in public is illegal.]],
	weapons = {"m9k_svu", "weapon_deagle2"},
	command = "hitman",
	max = 2,
	salary = 60,
	admin = 0,
	vote = true,
	hasLicense = false
})

TEAM_HOTEL = DarkRP.createJob("Hotel Manager", {
	color = Color(0, 255, 255, 255),
	model = "models/player/Group01/Male_05.mdl",
	description = [[You are the Hotel Manager, you own the hotel right next to spawn.
		You cannot mug.
		You cannot raid.
		You cannot participate in raids.
		You cannot steal.
		You can kill people trespassing in hotel without buying a room.]],
	weapons = {},
	command = "hotel",
	max = 1,
	salary = 80,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_TERRORLEADER = DarkRP.createJob("Terrorist Leader", {
	color = Color(255, 0, 0, 255),
	model = "models/player/phoenix.mdl",
	description = [[You lead the terrorists. You raise havoc in the city and can terrorize lives of others. You are in charge of the terrorists.
		You can raid.
		You can mug.
		You cannot KOS government.
		You can call terror.]],
	weapons = {"lockpick", "keypad_cracker", "m9k_ak47", "weapon_jihadbomb"},
	command = "terroristleader",
	max = 1,
	salary = 65,
	admin = 0,
	vote = true,
	hasLicense = false,
	NeedToChangeFrom = TEAM_TERROR
})

TEAM_CINEMA = DarkRP.createJob("Cinema Owner", {
	color = Color(225, 0, 225, 255),
	model = "models/player/Group01/Male_08.mdl",
	description = [[You are the Cinema Owner. You run the movie theater! You can play movies and charge fees for entry. You can only be the cinema owner in the theater building.
		You cannot raid.
		You cannot mug.
		You cannot help raids or mugs.
		You follow the same guidelines as a normal citizen.]],
	weapons = {"stunstick"},
	command = "cinema",
	max = 1,
	salary = 45,
	admin = 0,
	vote = true,
	hasLicense = false
})

TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
	color = Color(152, 0, 182, 255),
	model = "models/eli.mdl",
	description = [[You are a Drug Dealer. You sell illegal narcotics to the people of the city. If you get caught doing your job, you may be arrested.
		You cannot raid.
		You cannot mug.
		You cannot participate in raids or mugs.]],
	weapons = {},
	command = "drugdealer",
	max = 2,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_BURRITO = DarkRP.createJob("Superior Thief", {
	color = Color(204, 255, 0, 255),
	model = "models//player/arctic.mdl",
	description = [[An extremely skilled theif.
		You may raid.
		You may mug.
		You may carjack.
		Custom Job for BurritOS 32Bit]],
	weapons = {"m9k_sig_p229r", "m9k_honeybadger", "lockpick", "unarrest_stick"},
	command = "burrito",
	max = 1,
	salary = 90,
	admin = 1,
	vote = false,
	hasLicense = false
})

TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(0, 255, 255, 255),
	model = "models//player/arctic.mdl",
	description = [[You are a Thief. You break into people's houses and steal their goods for a living.
		You can raid.
		You can mug.
		You can kidnap.]],
	weapons = {"lockpick", "unarrest_stick"},
	command = "thief",
	max = 5,
	salary = 65,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_GUARD = DarkRP.createJob("Guard", {
	color = Color(0, 255, 255, 255),
	model = "models/odessa.mdl",
	description = [[You are paid by those who want protection.
	You may kill those who try to raid or mug whoever you are defending.]],
	weapons = {"m9k_sig_p229r", "stunstick"},
	command = "thief",
	max = 2,
	salary = 50,
	admin = 0,
	vote = true,
	hasLicense = false
})

/*---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------*/
GAMEMODE.DefaultTeam = TEAM_CITIZEN


/*---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------*/
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

/*---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------*/
DarkRP.addHitmanTeam(TEAM_HITMAN)
