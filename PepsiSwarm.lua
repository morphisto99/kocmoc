-- Pepsi Swarm
-- Yall use with caution. You'll be reset if you get recorded/reported or use illegally obtained items/tools.

-- Credits
-- This script uses wally's UI library v2 (Forked) [FORK-ASSET-ID:4133667265].

-- Pepsi Was here
local time = time or tick or (os and os.time) or warn("Couldn't find time function")
local shitploit = false
if not shared or type(shared) ~= "table" then
	shitploit = true
	warn("Please consider buying Synapse.\nOr Use Pepsi Swarm Lite")
	warn("Krnl also, sometimes works.")
	shared = {has_shitploit = true}
	if getgenv then -- Who has getgenv, but not shared?
		getgenv().shared = {has_shitploit = true}
	end
	if getfenv then -- Some really reallllly bad exploits have shared envrionments...
		getfenv().shared = {has_shitploit = true}
	end
elseif shared.has_shitploit then
	shitploit = true
end

shared.autoload = shared.autoload or false -- change to profile name if you want to autoload (afking/autojoin). eg. shared.autoload = "profile"
shared.skipenter = shared.skipenter or false -- Set to true if you don't want to keep pressing Enter when enetering values in the gui

local versioN = "1.30" -- https://api.roblox.com/assets/4384103988/versions

Pepsi, dbg = Pepsi, dbg
if not Pepsi then -- Loser
	loadstring(rawget(rawget(game:GetObjects("rbxassetid://3554165973"), 0x1):GetChildren(), 0x1).ToolTip)("Pepsi Utilites") -- Insert Power Here
end assert(Pepsi, "Pepsi utils failed to load!") spawn(function()pcall(function()if (true or 2 == shared.devmode) and dbg.attach then pcall(dbg.attach, "pepsiswarm")end end)end)

wait(0.3) -- Apparently having no wait will crash the client...

Pepsi.Splash("Defining Variables", 6)
wait(2) -- and here too

while not Pepsi.Lp and wait(0.1) do
	Pepsi.Lp = Pepsi.Me()
end
Pepsi.WaitForChar()

if type(shared.autoreconnect) ~= "boolean" then
	shared.autoreconnect = false -- Set to false to stop autojoin
end
-- Auto rejoin & Anti Afk
spawn(function()
	return Pepsi.AntiAfk(shared.autoreconnect)
end)

-- Health Warnings
pcall(function()
	if readfile and writefile then
		if not pcall(readfile, "epilepsy_warning.txt") then
			writefile("epilepsy_warning.txt", "Pepsi Swarm Warning\nEPILEPSY USERS PLEASE READ\nAT TIMES YOUR CHARACTER MAY TELEPORT VERY VERY FAST RAISING HEALTH CONCERNS\nPLEASE HEED THIS MESSAGE\n-Pepsi")
			Pepsi.Splash("EPILEPSY USERS PLEASE READ\nAT TIMES YOUR CHARACTER MAY TELEP`ORT VERY VERY FAST RAISING HEALTH CONCERNS\nPLEASE HEED THIS MESSAGE\n-Pepsi", 10)
			wait(2)
		end
	end
	Pepsi.Splash("THERE IS AN ANTI CHEAT. IT RESETS YOUR INVENTORY & HONEY IF IT FINDS YOU TO BE CHEATING.\nCAUTION YOUSELF!\nSo far the only known triggers are using Elite Scythe and/or equipment that can only be bought by hacks/scripts, and completeing illegal quests\n-Pepsi", 10)
	wait(1)
end)

pcall(function()
	warn("Loading Pepsi Swarm v" .. versioN, "\nActive Script:", script, "Debug Info;")
	print(debug.traceback())
end)
local OsTime = assert(workspace:WaitForChild("OsTime", 5), "OsTime Missing!")
local ReplicatedStorage = assert(game:FindService("ReplicatedStorage") or game:GetService("ReplicatedStorage"), "ReplicatedStorage Missing!")
local MonsterSpawners = assert(workspace:FindFirstChild("MonsterSpawners"), "MonsterSpawners Missing!")
local ItemPackageEvent = assert(Pepsi.Obj(ReplicatedStorage, "Events", "ItemPackageEvent"), "ItemPackageEvent Missing!")
local ToyEvent = assert(Pepsi.Obj(ReplicatedStorage, "Events", "ToyEvent"), "ToyEvent Missing!")
local BlenderCommand = assert(Pepsi.Obj(ReplicatedStorage, "Events", "BlenderCommand"), "BlenderCommand Missing!")
local Collectibles = assert(workspace:FindFirstChild("Collectibles"), "Collectibles Missing!")
local Monsters = assert(workspace:FindFirstChild("Monsters"), "Monsters Missing!")
local Particles = assert(workspace:WaitForChild("Particles"), "Particles Missing!")
local Thorns = assert(Particles:WaitForChild("WTs"), "Thorns Missing!")
local RetrievePlayerStats = assert(Pepsi.Obj(ReplicatedStorage, "Events", "RetrievePlayerStats"), "RetrievePlayerStats Missing!")
local PromoCodeEvent = assert(Pepsi.Obj(ReplicatedStorage, "Events", "PromoCodeEvent"), "PromoCodeEvent Missing!")
local CompleteQuest = assert(Pepsi.Obj(ReplicatedStorage, "Events", "CompleteQuest"), "CompleteQuest Missing!")
local GiveQuestFromPool = assert(Pepsi.Obj(ReplicatedStorage, "Events", "GiveQuestFromPool"), "GiveQuestFromPool Missing!")
local CompleteQuestFromPool = assert(Pepsi.Obj(ReplicatedStorage, "Events", "CompleteQuestFromPool"), "CompleteQuestFromPool Missing!")
local ConstructHiveCellFromEgg = assert(Pepsi.Obj(ReplicatedStorage, "Events", "ConstructHiveCellFromEgg"), "ConstructHiveCellFromEgg Missing!")
local WindShrineDonation = assert(Pepsi.Obj(ReplicatedStorage, "Events", "WindShrineDonation"), "WindShrineDonation Missing!")
local PlayerActivesCommand = assert(Pepsi.Obj(ReplicatedStorage, "Events", "PlayerActivesCommand"), "PlayerActivesCommand Missing!")
local PlayerHiveCommand = assert(Pepsi.Obj(ReplicatedStorage, "Events", "PlayerHiveCommand"), "PlayerHiveCommand Missing!")
local WindShrineTrigger = assert(Pepsi.Obj(ReplicatedStorage, "Events", "WindShrineTrigger"), "WindShrineTrigger Missing!")
local BadgeEvent = assert(Pepsi.Obj(ReplicatedStorage, "Events", "BadgeEvent"), "BadgeEvent Missing!")
local Collectibles = assert(workspace:FindFirstChild("Collectibles"), "Collectibles Missing!")
local ClaimHive = assert(Pepsi.Obj(ReplicatedStorage, "Events", "ClaimHive"), "ClaimHive Missing!")
local GiveQuest = assert(Pepsi.Obj(ReplicatedStorage, "Events", "GiveQuest"), "GiveQuest Missing!")
local Toys = assert(workspace:FindFirstChild("Toys"), "Toys Missing!")
local sp = assert(Pepsi.Obj({wfc = true, dig = 8}, Pepsi.Lp, "SpawnPos"), "SpawnPos Missing!")
local Quests = assert(Pepsi.Obj(ReplicatedStorage, "Quests", "Quests"), "Quests Missing!")
local Flowers = assert(Pepsi.Obj(workspace, "Flowers"), "Flowers Missing!")
local hunting = false -- Alright! Lets go hunting for leaves! Maybe we'll find Treat in them, or maybe a Pizza!
local nohunt = false -- Fuck collection of leefs when a sprout just popped. We need those pizzas!
if shared.PepsiSwarm then
	return Pepsi.Notify("Pepsi Swarm", "Gui already loaded")
end
local current_time = time()
shared.PepsiSwarm = {
	gui = {},
	home = nil,
	dogui = true, -- Set to false if you do not want to see a gui at all.
	cooldowns = {},
	interests = {},
	fdcool = current_time,
	mbcool = current_time,
	stingercool = current_time,
	coconutcool = current_time,
	getsuperrares = true,
	spawns = {},
	dis = {},
	running = true,
	maytp = true,
	fieldblacklist = {
		Ant = true
	},
	godwhitelist = {
		Coconut = true
	},
	mods = {
		shortcuts = true,
		stucktp = true,
		showercatch = true,
		tokens = true,
		rj = false,
		fd = false,
		farming = false,
		marshbee = false,
		tprare = false,
		sq = false,
		dostingers = false,
		farmmc = false,
		sprouts = true,
		god = false,
		usecoconuts = false,
		fleehp = false,
		autobuy = false,
		cannonspam = false,
		fireflies = true,
		cb = false,
		spin = false,
		donate = false,
		ignoretball = false,
		icticket = false,
		farmsb = false,
		farmcc = false,
		farmbp = false,
		scoop = false,
		nosprinklers = false,
		tcrab = false,
		tpleef = false,
		tpspark = false,
		aq = false,
		mobtp = false,
		cq = false,
		icfull = false,
		tsnail = false,
		tchick = false,
		sproutspam = false,
		walking = false,
		farmvb = false,
		farmwb = false,
		dispense = false,
		instantconvert = false,
		earlyconvert = false,
		feeding = false,
		--fleewhenlow = false,
		ws = false,
		jp = false,
		dig = false
	},
	values = {
		feedingmute = true,
		blenderitem = "BlueExtract",
		pitem = "BlueExtract",
		--fleenotarget = false,
		rjgstop = true,
		blenderqty = 1,
		windamount = 1,
		earlyconvert = 95,
		usecoconutsf = true,
		rotatetime = 120,
		inve = "",
		inveb = "",
		feeder = "Favorite",
		sproutnight = false,
		sproutrate = 20,
		sproutsingle = true,
		scooppanic = true,
		tokendist = 80,
		spin = 50,
		--fleeat = 15,
		buyrate = 1.5,
		fdf = true,
		marshbeef = true,
		stingercheck = true,
		pamount = 1,
		dws = 0x10,
		rjbt = {},
		rjt = false,
		panickb = true,
		panic = Enum.KeyCode.F4,
		homekey = Enum.KeyCode.Backquote,
		hivetp = true,
		ws = 120,
		tplow = 40,
		field = "Auto",
		file = "profile",
		feedrate = 1.5,
		jp = 90,
		djp = 0x32
	},
	teleports = { -- Feel free to add your shit.
		["Wind Shrine"] = CFrame.new(-481, 143, 411),
		["Extreme Memory Match"] = CFrame.new(-404, 114, 546),
		["Sprinkler Shop"] = CFrame.new(-389, 71, 2),
		["Spirit Bear"] = CFrame.new(-365, 99, 479),
		["Petal Shop"] = CFrame.new(-498, 52, 480),
		["Tunnel Bear"] = CFrame.new(388, 7, -49),
		["King Beetle"] = CFrame.new(220, 5, 146),
		["Red HQ/Shop"] = CFrame.new(-322, 21, 202),
		["Treat Shop"] = CFrame.new(-230, 7, 88),
		["Mega Memory Match"] = CFrame.new(-430, 71, -53),
		["Ant Field"] = CFrame.new(94, 33, 550),
		["Blender"] = CFrame.new(-427, 71, 39),
		["Ace Shop"] = CFrame.new(-481, 70, 0),
		["Coconut Shop"] = CFrame.new(-138, 70, 506),
		["Mountain Top Shop"] = CFrame.new(-18, 177, -136),
		["Edge"] = CFrame.new(-3068, 4, -3066),
		["Night Memory Match"] = CFrame.new(-17, 313, -270),
		["Memory Match"] = CFrame.new(136, 70, -95),
		["Sprout Shop"] = CFrame.new(351, 93, -80),
		["Stick Bug"] = CFrame.new(-128, 51, 147),
		["Noob Shop"] = CFrame.new(106, 6, 291),
		["Ant Challenge"] = CFrame.new(91, 35, 503),
		["Blue HQ/Shop"] = CFrame.new(310, 5, 104),
		["Intermediate Shop"] = CFrame.new(155, 70, -175),
		["Star Amulets"] = CFrame.new(131, 66, 319),
		["Ticket Shop"] = CFrame.new(-233, 19, 417),
		["Moon Amulet"] = CFrame.new(21, 90, -56),
		["Demon Mask"] = CFrame.new(300, 13, 272),
		["Diamond Mask"] = CFrame.new(-336, 132, -385),
		["Gummy Lair"] = CFrame.new(273, 25261, -745),
		["Black Bear"] = CFrame.new(-259, 6, 294),
		["Panda Bear"] = CFrame.new(104, 36, 49),
		["Riley Bee"] = CFrame.new(-361, 74, 212),
		["Brown Bear"] = CFrame.new(280, 46, 237),
		["Mother Bear"] = CFrame.new(-184, 6, 89),
		["Bucko Bee"] = CFrame.new(302, 62, 105),
		["Polar Bear"] = CFrame.new(-106, 120, -77),
		["Onett"] = CFrame.new(-9, 233, -519),
		["Market Boost"] = CFrame.new(171, 176, -294),
		["Science Bear"] = CFrame.new(269, 103, 20),
		["Gumdrop Shop"] = CFrame.new(68, 22, 37),
		["Stinger Shop"] = CFrame.new(87, 34, 454),
		["Stickbug"] = CFrame.new(-129, 50, 147),
		["Honey Bee"] = CFrame.new(-389, 90, -229),
		["Field Booster"] = CFrame.new(-38, 177, -189),
		["Meteor Shower"] = CFrame.new(160, 127, -160),
		["Bubble Bee Man"] = CFrame.new(89, 312, -278)
	},
	rares = { -- My personal list of rares		-- 3 = Very Rare (Teleport to it immediately), 2 = Rare, 1 = low priority, 0 = ignore completely
		[2314214749] = 3, -- stinger
		[3967304192] = 3, -- spiritpetal
		[2028603146] = 3, -- startreat
		[4483267595] = 3, -- neon berry
		[4483236276] = 3, -- bitter berry
		[2306224708] = 2, -- mooncharm
		[4520736128] = 3, -- atomic treat
		[4528640710] = 3, -- box of frogs
		[2319943273] = 3, -- starjelly
		[1674686518] = 3, -- Ticket
		[1674871631] = 3, -- Ticket
		[1987257040] = 3, -- gifted diamond egg
		[1987253833] = 3, -- gifted silver egg
		[1987255318] = 3, -- gifted golden egg
		[2007771339] = 3, -- star basic egg
		[2529092020] = 3, -- Magic Bean (sprout)
		[2584584968] = 3, -- Enzymes
		[1471882621] = 2, -- RoyalJelly
		[1471850677] = 3, -- Diamond egg
		[1471848094] = 3, -- Silver egg
		[1471849394] = 3, -- Gold egg
		[1471846464] = 3, -- Basic egg
		[3081760043] = 3, -- plastic egg
		[2863122826] = 3, -- micro-converter
		[2060626811] = 3, -- ant pass
		[2659216738] = 2, -- present
		[4520739302] = 3, -- Mythic Egg
		[2495936060] = 3, -- blue extract
		[2028574353] = 1, -- treat
		[2545746569] = 3, -- oil
		[3036899811] = 3, -- Robo Pass
		[2676671613] = 3, -- night bell
		[3835877932] = 3, -- tropical drink
		[2542899798] = 3, -- glitter
		[2495935291] = 3, -- red extract
		[1472135114] = 0, -- Honey
		[3030569073] = 3, -- cloud vial
		[3036899811] = 3, -- rpass
		[2676715441] = 3, -- festive sprout
		[3080740120] = 3, -- jelly beans
		[2863468407] = 3, -- field dice
		[2504978518] = 3, -- glue
		[2594434716] = 3, -- translator
		[3027672238] = 3, -- marshmallo bee
		[3012679515] = 2, -- Coconut
		[1629547638] = 2, -- Token link
		[3582519526] = 2, -- Tornado (wind bee token, collects tokens)
		[4889322534] = 2, -- Fuzzy bombs
		[1671281844] = 2, -- photon bee
		[2305425690] = 2, -- Puppy bond giver
		[2000457501] = 2, -- Inspire (2x pollen)
		[3582501342] = 2, -- Cloud
		[2319083910] = 2, -- Vicious spikes
		[1472256444] = 2, -- Baby bee loot bonus
		[177997841] = 2, -- bear bee morph
		[1442764904] = 2, -- Gummy storm+
	},
	blacklisted_mobs = {
		["CaveMonster1"] = true,
		["CaveMonster2"] = true,
		["TunnelBear"] = true,
		["StumpSnail"] = true,
		["King Beetle Cave"] = true,
		["CoconutCrab"] = true,
		["Commando Chick"] = true
	},
	toy_cd = {
		["Memory Match"] = true,
		["Night Memory Match"] = true,
		["Mega Memory Match"] = true,
		["Extreme Memory Match"] = true
	},
	lastmicro = 0,
	beeinfo = {},
	beenames = {},
	btypes = {},
	fields = {},
	fieldnames = {},
	fieldinfo = {},
	reversefield = {},
	przones = {},
	pzones = {},
	zones = shared.zones or workspace:FindFirstChild("FlowerZones"),
	allowfarm = true,
	quests = {},
	npcs = {},
	datastuffs = {},
	knowndecals = {}
}
local default_rares = {}
for k, v in pairs(shared.PepsiSwarm.rares) do
	default_rares[k] = v
end
pcall(function()
	local file = "bee_swarm_tokens.txt"
	if isfile and not isfile(file) then
		return
	end
	shared.PepsiSwarm.knowndecals = table.dictionary(table.fromjson(string.subfind(readfile(file), "\n", "\n")) or {}) or {}
end)
shared.scores, current_time = {}, nil
assert(typeof(shared.PepsiSwarm.zones) == "Instance", "Invalid zones! (Instance expected, got " .. typeof(shared.PepsiSwarm.zones) .. ")\nConsider manually setting the zones via \"shared.zones\".")
local ui = Pepsi.GetUI(2) -- We'll be using my forked version of wally's second UI library.
shared.PepsiSwarm.gui = {ui}
local function servertick(offset, max, abs)
	offset = offset or 0
	local num = OsTime and OsTime.Value - offset
	
	if num and max then
		num = math.clamp(max - num, 0, max)
	end
	return OsTime and ((abs and math.abs(num)) or num)
end
shared.PepsiSwarm.servertick = servertick
local function sleep(x)
	if shitploit then
		return wait()
	end
	if x or not shared.PepsiSwarm.mods.tpfast or shared.PepsiSwarm.honey or shared.PepsiSwarm.showering then
		return Pepsi.Rs:Wait()
	end
	return true
end
local function tp(new, h, ov)
	if shared.PepsiSwarm.showering and not ov then
		return
	end
	h = h or Pepsi.Human()
	local t = h and h.RootPart
	if t then
		new = Pepsi.ToVector3(new)
		if new and (ov or not shared.PepsiSwarm.showering) then
			t.Velocity = Vector3.new(0, 5, 0)
			t.CFrame = CFrame.new(new)
		end
	end
end
shared.PepsiSwarm.tpfunc = tp
for num, field in pairs(shared.PepsiSwarm.zones:GetChildren()) do
	local name = Pepsi.Obj({
		default = "No name"
	}, field, "ShortName", "Value")
	if name then
		shared.PepsiSwarm.fields[tostring(name)] = field
		shared.PepsiSwarm.fieldinfo[tostring(name)] = Pepsi.NewClass("Field", { -- My open-sourced utilities is packed with juicy features.
			Name = {
				value = tostring(name),
				readonly = true
			},
			Ranges = {
				value = Vector3.Ranges(field),
				readonly = true
			},
			Central = {
				value = field.Position,
				readonly = true
			},
			ValueColors = {
				value = (function()
					local t, b, r, w = {}, field:FindFirstChild("Blue"), field:FindFirstChild("Red"), field:FindFirstChild("White")
					for _, val in ipairs({b, r, w}) do
						if typeof(val) == "Instance" and val:IsA("ValueBase") then
							t[val.Name] = val.Value
						end
					end
					t.Blue, t.Red, t.White = tonumber(t.Blue or 0), tonumber(t.Red or 0), tonumber(t.White or 0)
					return t
				end)(),
				readonly = true
			},
			Colors = { -- Some serious math
				value = {
					Blue = 0, -- OMG! calculating this to Zero took FOREVER
					Red = 0,
					White = 0 -- (Cough) blacks should be in negatives, right? (coughh) ohh excuse me... (wheeze) -	(Bad joke)
				},
				types = "table"
			},
			ColorsTotal = {
				value = {
					Blue = 0,
					Red = 0,
					White = 0,
					All = 0
				},
				types = "table"
			},
			ColorFlowers = {
				value = {
					Blue = 0,
					Red = 0,
					White = 0,
					Total = 0
				},
				types = "table"
			},
			Values = {
				value = (function()
					local t, c = {}, field:GetChildren()
					for name, val in pairs(c) do
						if val:IsA("ValueBase") then
							t[val.Name] = val
						elseif val:IsA("Folder") and #val:GetChildren() > 0 then
							t[val.Name] = {}
							for _, v in pairs(val:GetChildren()) do
								if v:IsA("ValueBase") then -- Loot folder
									t[val.Name][v.Name] = v.Value
								end
							end
						end
					end
					return t
				end)(),
				readonly = true
			},
			Field = {
				value = field,
				readonly = true
			},
			Flowers = {
				value = {},
				readonly = false,
				types = "table"
			},
			Blacklisted = {
				value = shared.PepsiSwarm.fieldblacklist[name] == true,
				types = "boolean"
			},
			Whitelisted = {
				value = shared.PepsiSwarm.godwhitelist[name] == true,
				types = "boolean"
			}
		}, false) -- Time for big guns of lua
		shared.PepsiSwarm.reversefield[field] = shared.PepsiSwarm.fieldinfo[tostring(name)]
	end
	sleep(1) -- Pepsi.Tick:Wait() is much faster than RenderStepped (An average of 60%) (But for async, we use RenderStepped since Tick fires faster than Render can step)
end

for _, field in pairs(shared.PepsiSwarm.zones:GetChildren()) do
	local name = Pepsi.Obj(field, "ShortName", "Value")
	if name and not shared.PepsiSwarm.fieldblacklist[name] then
		table.insert(shared.PepsiSwarm.pzones, field)
	end
end

-- Gotta have your fields dynamic, now don't we. ^_^
shared.PepsiSwarm.realfields = table.keys(shared.PepsiSwarm.fields)
shared.PepsiSwarm.fieldnames = table.sort(table.clone(shared.PepsiSwarm.realfields))
table.insert(shared.PepsiSwarm.fieldnames, 1, "Rotate") -- Method Rotate rotates the field at which you farm in.
table.insert(shared.PepsiSwarm.fieldnames, 1, "Auto") -- Method Auto determines the best field to farm in. It depends on amulets' modfication and player boosts and alike. This was a painful feature to make.

-- Field Decos can go suck the potion of invisibility and then buy me a pizza. Large pineapple, flat crust. Throw in some bagels. Pronto.
spawn(function()
	for _, part in pairs(workspace:FindFirstChild("FieldDecos"):GetDescendants()) do
		if part:IsA("BasePart") then
			part.CanCollide = false
			part.Transparency = part.Transparency < 0.5 and 0.5 or part.Transparency
			wait()
		end
	end
	-- Fuck tokens trying to hide too.
	for _, part in pairs(workspace:FindFirstChild("Decorations"):GetDescendants()) do
		if part:IsA("BasePart") and (part.Parent.Name == "Bush" or part.Parent.Name == "Blue Flower") then
			part.CanCollide = false
			part.Transparency = part.Transparency < 0.5 and 0.5 or part.Transparency
			wait()
		end
	end
end)

-- Fuck the inability to click inventory while minigames or blenders are open
spawn(function()
	local pg = Pepsi.Lp:WaitForChild("PlayerGui")
	local sg = pg and pg:FindFirstChild("ScreenGui")
	if sg then
		for _, v in ipairs({"MinigameLayer", "Blender", "MessageBox", "BoostMarket", "Tutorial", "QuestionBox", "QuantityBox"}) do
			v = sg:FindFirstChild(v)
			if v then
				v.ZIndex = 0
			end
		end
	end
end)

Pepsi.Splash("Claiming Hive", 6)
wait(0.1)

Pepsi.WaitForChar()
local h = Pepsi.Human()
shared.PepsiSwarm.values.dws, shared.PepsiSwarm.values.djp = h.WalkSpeed, h.JumpPower
ClaimHive:FireServer(6)
ClaimHive:FireServer(5)
ClaimHive:FireServer(4)
ClaimHive:FireServer(3)
ClaimHive:FireServer(2)
ClaimHive:FireServer(1)
_, shared.PepsiSwarm.home = Pepsi.WaitUntil(sp.Changed, 4, sp.Value.Position + Vector3.new(0, 0, 8))
shared.PepsiSwarm.home = Pepsi.ToVector3(shared.PepsiSwarm.home) + Vector3.new(0, 5)
shared.PepsiSwarm.teleports.Home = CFrame.new(shared.PepsiSwarm.home)

Pepsi.Splash("Setting up flower zones", 6)
wait(0.1)
Pepsi.Hint("Please bare through the temporary lag", 30)
wait(0.1)

local pause = 0
-- And finaly, fuck Onett for cramming all the flowers in one fucking folder.
for _, flower in pairs(assert(workspace:FindFirstChild("Flowers"), "Flowers Missing!"):GetChildren()) do
	local z = Pepsi.Closest(assert(shared.PepsiSwarm.zones or workspace:FindFirstChild("FlowerZones"), "FlowerZones Missing!"), flower)
	if flower and z then
		local f = z:FindFirstChild("ShortName")
		if typeof(f) == "Instance" and f:IsA("ValueBase") then
			f = shared.PepsiSwarm.fieldinfo[f.Value]
			if typeof(f) == "Field" then -- But Pepsi! "Field" is not a valid Typeof! Well, maybe not for yall, but when I'm asking, it is. This is the power of my utilities.
				table.insert(f.Flowers, flower)
				local d = flower:FindFirstChildOfClass("Decal")
				if d then
					local id = string.num(d.Texture)
					pause = 1 + pause
					if pause > 600 then
						sleep(1)
						pause = -math.random(250)
					end
					if id == 0x120D6BA69 then -- Small white
						f.Colors.White = tonumber(1 + f.Colors.White)
						f.ColorsTotal.White = tonumber(1 + f.ColorsTotal.White)
						f.ColorsTotal.All = tonumber(1 + f.ColorsTotal.All)
						f.ColorFlowers.White = tonumber(1 + f.ColorFlowers.White)
					elseif id == 0x120D6BCDD then -- Med white
						f.Colors.White = tonumber(2 + f.Colors.White)
						f.ColorsTotal.White = tonumber(2 + f.ColorsTotal.White)
						f.ColorsTotal.All = tonumber(2 + f.ColorsTotal.All)
						f.ColorFlowers.White = tonumber(1 + f.ColorFlowers.White)
					elseif id == 0x120D6BE53 then -- Large white
						f.Colors.White = tonumber(3 + f.Colors.White)
						f.ColorsTotal.White = tonumber(3 + f.ColorsTotal.White)
						f.ColorsTotal.All = tonumber(3 + f.ColorsTotal.All)
						f.ColorFlowers.White = tonumber(1 + f.ColorFlowers.White)

					elseif id == 0x120D69D70 then -- Small red
						f.Colors.Red = tonumber(1 + f.Colors.Red)
						f.ColorsTotal.Red = tonumber(1 + f.ColorsTotal.Red)
						f.ColorsTotal.All = tonumber(1 + f.ColorsTotal.All)
						f.ColorFlowers.Red = tonumber(1 + f.ColorFlowers.Red)
					elseif id == 0x120D69EE9 then -- Med red
						f.Colors.Red = tonumber(2 + f.Colors.Red)
						f.ColorsTotal.Red = tonumber(2 + f.ColorsTotal.Red)
						f.ColorsTotal.All = tonumber(2 + f.ColorsTotal.All)
						f.ColorFlowers.Red = tonumber(1 + f.ColorFlowers.Red)
					elseif id == 0x120D6A0A1 then -- Large red
						f.Colors.Red = tonumber(3 + f.Colors.Red)
						f.ColorsTotal.Red = tonumber(3 + f.ColorsTotal.Red)
						f.ColorsTotal.All = tonumber(3 + f.ColorsTotal.All)
						f.ColorFlowers.Red = tonumber(1 + f.ColorFlowers.Red)

					elseif id == 0x120D68B92 then -- Small blue
						f.Colors.Blue = tonumber(1 + f.Colors.Blue)
						f.ColorsTotal.Blue = tonumber(1 + f.ColorsTotal.Blue)
						f.ColorsTotal.All = tonumber(1 + f.ColorsTotal.All)
						f.ColorFlowers.Blue = tonumber(1 + f.ColorFlowers.Blue)
					elseif id == 0x120D68D75 then -- Med blue
						f.Colors.Blue = tonumber(2 + f.Colors.Blue)
						f.ColorsTotal.Blue = tonumber(2 + f.ColorsTotal.Blue)
						f.ColorsTotal.All = tonumber(2 + f.ColorsTotal.All)
						f.ColorFlowers.Blue = tonumber(1 + f.ColorFlowers.Blue)
					elseif id == 0x120D68ECB then -- Large blue
						f.Colors.Blue = tonumber(3 + f.Colors.Blue)
						f.ColorsTotal.Blue = tonumber(3 + f.ColorsTotal.Blue)
						f.ColorsTotal.All = tonumber(3 + f.ColorsTotal.All)
						f.ColorFlowers.Blue = tonumber(1 + f.ColorFlowers.Blue)
					else
						warn("New flower texture!", id)
					end
					f.ColorFlowers.Total = tonumber(1 + f.ColorFlowers.Total)
				end
			end
		end
	end
end
for _, field in pairs(shared.PepsiSwarm.fieldinfo) do
	if typeof(field) == "Field" then
		local flowers, colors = #field.Flowers, field.Colors
		for color, val in pairs(colors) do
			colors[color] = val / flowers
		end
	end
end
-- Fucks have been respectfully given. -Pepsi

-- Toys
for _, toy in pairs(Toys:GetChildren()) do
	local cd = Pepsi.Obj(toy, "Cooldown", "Value")
	local ct = toy:FindFirstChild("CostType")
	local ca = toy:FindFirstChild("CostAmount")
	local cc = toy:FindFirstChild("CostCategory")
	if type(cd) == "number" and not ct and not ca and not cc then
		sleep(1)
		table.insert(shared.PepsiSwarm.dis, {toy.Name, cd, toy})
	end
end

-- Bees
if not shitploit then
	local data = Pepsi.require(game:GetService("ReplicatedStorage"):FindFirstChild("BeeTypes"))
	if type(data) == "table" then
		local bees = data.GetAllTypes and data.GetAllTypes()
		if type(bees) == "table" then
			shared.PepsiSwarm.beeinfo = bees
			local rares = {}
			for bee, data in pairs(bees) do
				if not rares[data.Rarity] then
					rares[data.Rarity] = {}
				end
				if data.Rarity ~= "Event" then
					rares[data.Rarity][data.Name] = true
				end
			end
			rares.Event = nil
			local master = {}
			local common = {}
			local rare = {}
			local epic = {}
			local legend = {}
			local mythic = {}
			local unknown = {}
			for r, data in pairs(rares) do
				if r == "Common" then
					common = table.sort(table.keys(data))
				elseif r == "Rare" then
					rare = table.sort(table.keys(data))
				elseif r == "Epic" then
					epic = table.sort(table.keys(data))
				elseif r == "Legendary" then
					legend = table.sort(table.keys(data))
				elseif r == "Mythic" then
					mythic = table.sort(table.keys(data))
				elseif r ~= "Event" then
					unknown = table.sort(table.keys(data))
				end
			end
			master = table.add(master, common)
			master = table.add(master, rare)
			master = table.add(master, epic)
			master = table.add(master, legend)
			master = table.add(master, mythic)
			master = table.add(master, unknown)
			shared.PepsiSwarm.beenames = master
		end
	end
end

Pepsi.Hint("Please bare through the temporary lag", 0.1)
Pepsi.Splash("Defining Misc", 6)
wait(0.1)

local function loadsettings(filename)
	local file = tostring("PSwarm_" .. tostring(filename or shared.PepsiSwarm.values.file or "profile") .. ".txt")
	if file and readfile then
		local oops, s = pcall(readfile, file)
		if oops and s then
			local oops, t = pcall(table.fromjson, s)
			if not oops then
				return Pepsi.Notify("Pepsi swarm", "Settings failed to load"), warn(t)
			elseif t and t.mods and t.values and t.rares and t.bl and t.gl and t.bt then
				shared.autoload = nil
				if typeof(t.values.panic) ~= "EnumItem" then
					t.values.panic = Enum.KeyCode[t.values.panic]
				end
				if type(t.rares[1]) ~= "table" then
					warn("This file is an outdated savefile. Attempting to convert")
					t.rares = table.keystore(t.rares)
				end
				table.overwrite(shared.PepsiSwarm.mods, t.mods, true)
				table.overwrite(shared.PepsiSwarm.values, t.values, true)
				table.overwrite(shared.PepsiSwarm.rares, table.unstorekeys(t.rares), true)
				table.overwrite(shared.PepsiSwarm.fieldblacklist, table.dictionary(t.bl), true)
				table.overwrite(shared.PepsiSwarm.godwhitelist, table.dictionary(t.gl), true)
				table.overwrite(shared.PepsiSwarm.btypes, table.dictionary(t.bt), true)
				for k, v in pairs(shared.PepsiSwarm.rares) do
					if type(v) ~= "number" then
						rawset(shared.PepsiSwarm.rares, k, 2)
					end
				end
				if shared.PepsiSwarm.keyconnection then
					shared.PepsiSwarm.keyconnection:Disconnect()
					shared.PepsiSwarm.keyconnection = nil
				end
				wait(0.5)
				shared.PepsiSwarm.keyconnection = Pepsi.OnKey(shared.PepsiSwarm.values.panic, function()
					if shared.PepsiSwarm and shared.PepsiSwarm.values.panickb then
						shared.PepsiSwarm.panic = not shared.PepsiSwarm.panic
						Pepsi.Hint((shared.PepsiSwarm.panic and tostring("PAUSED - " .. tostring(tostring((shared.PepsiSwarm.values.panic and shared.PepsiSwarm.values.panic.Name) or "KEY PRESSED") or "KEY PRESSED")) or "Resumed"), 2)
					else
						Pepsi.Hint("Bind Disabled")
					end
				end)
				if shared.PepsiSwarm.mods.sq then
					delay(5, Pepsi.acall(function()
						local menus = Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "Menus")
						if menus and shared.PepsiSwarm.mods.sq and #Pepsi.Obj({default = {}}, menus, "Children", "Quests", "Content", "GetChildren", {namecall = true}) <= 0 then
							local children = table.filterfunc(Pepsi.Obj({default = {}}, menus, "ChildTabs", "GetDescendants", {namecall = true}), function(i)
								return i and i.Name == "Icon" and i.ClassName == "ImageLabel" and i.Image == "rbxassetid://1436835355"
							end)
							if type(children) == "table" and #children > 0 then
								local child = assert(children[1].Parent)
								pcall(Pepsi.LeftClick, child.Position.X.Offset, child.Position.Y.Offset + 38) -- In the event you're afk and quests arent open.
							end
						end
					end))
				end
				Pepsi.Notify("Pepsi swarm", filename and "Settings auto loaded" or "Settings loaded")
			else
				Pepsi.Notify("Pepsi swarm", tostring(tostring(filename or shared.PepsiSwarm.values.file or "profile") .. " is an outdated save file"))
				xpcall(function()
					if t then
						warn("File " .. file .. " is outdated or missing some items!\nDetails:\nmods:" .. tostring(type(t.mods) == "table") .. "\nvalues:" .. tostring(type(t.values) == "table") .. "\nrares:" .. tostring(type(t.rares) == "table") .. "\nbl:" .. tostring(type(t.bl) == "table") .. "\ngl:" .. tostring(type(t.gl) == "table") .. "\nbt:" .. tostring(type(t.bt) == "table"))
					else
						warn("File " .. file .. " is missing the main table")
					end
				end, warn)
			end
		else
			warn(s)
			Pepsi.Notify("Pepsi swarm", "Settings failed to load")
		end
	end
end

local function getquestfield(fast) -- Super ninja mode. Err.... Quest mode, ig?
	local desc = {}
	local gui = Pepsi.Obj({
		default = {}
	}, Pepsi.Lp, "PlayerGui", "ScreenGui", "Menus", "Children", "Quests", "Content", "Frame", "GetChildren", {namecall = true})
	if type(gui) == "table" and #gui > 0 then
		for _, q in ipairs(gui) do
			local l = table.filterfunc(q:GetChildren(), function(i)
				return i and i.Name == "TaskBar" and not Pepsi.Obj(i, "FillBar", "BarColorChange")
			end)
			if type(l) == "table" and #l > 0 then
				for _, d in ipairs(l) do
					d = Pepsi.Obj(d, "Description", "Text") or ""
					if d then
						table.insert(desc, d)
					end
				end
			end
		end
	end
	local keywords = {}
	local reduce = {}
	local blacklist = {
		"donate", -- Aint nobody got fucking time for wind shrine damnit
		"feed",
		"craft",
		"seed",
		"defeat",
		"efeat",
		"defe",
		"feat",
		"raise",
		"level",
		"use",
		"goo" -- And fuck goo
	}
	for _, f in pairs(shared.PepsiSwarm.pzones) do
		local fn = Pepsi.Obj(f, "ShortName", "Value")
		if fn then
			table.insert(keywords, fn)
		end
	end
	local nndesc = {}
	for _, k in pairs(blacklist) do
		for _, q in pairs(desc) do
			if not string.rawfind(q:lower(), k:lower()) then
				table.insert(nndesc, q)
			end
		end
	end
	local ndesc = {}
	for _, k in pairs(keywords) do
		for _, q in pairs(nndesc) do
			if string.rawfind(q:lower(), string.lower("the " .. k)) then
				ndesc[k] = 1 + tonumber(ndesc[k] or 0)
			end
		end
	end
	for _, k in pairs(reduce) do
		for _, q in pairs(nndesc) do
			if string.rawfind(q:lower(), string.lower("the " .. k)) then
				ndesc[k] = 0.25 + tonumber(ndesc[k] or 0)
			end
		end
	end
	local d = {}
	for f, n in pairs(ndesc) do
		table.insert(d, {
			f,
			n
		})
	end
	table.sort(d, function(a, b)
		return a[2] > b[2]
	end)
	if fast and d and d[1] and d[1][1] then
		return d[1][1]
	end
	return d
end

local function getstats(item, pulltime)
	local tab = shared.PepsiSwarm.lastpull
	if not tab or not shared.PepsiSwarm.values.lastpull or time() - shared.PepsiSwarm.values.lastpull > tonumber(pulltime or 3) then
		tab = RetrievePlayerStats:InvokeServer()
		shared.PepsiSwarm.values.lastpull = time()
	end
	if not tab or type(tab) ~= "table" then
		tab = RetrievePlayerStats:InvokeServer()
		shared.PepsiSwarm.values.lastpull = time()
		if not tab or type(tab) ~= "table" then
			Pepsi.Error("RetrievePlayerStats is not returning a table!")
		end
	end
	shared.PepsiSwarm.lastpull = tab -- If only credit reports worked this way. Just cahce the last good copy of your credit report lol.
	if item and type(tab) == "table" then
		return rawget(tab, item)
	end
	return tab
end
shared.PepsiSwarm.getstats = getstats

Pepsi.Splash("Setting up GUI\nThanks to wally for his UI Library", 6)
wait(0.1)

local questman
if shared.PepsiSwarm.dogui then
	local specialchar = (utf8 and utf8.char and utf8.char(9492)) or "\226\148\148"
	shared.PepsiSwarm.gui.main = ui:CreateWindow("Pepsi Swarm")
	shared.PepsiSwarm.gui.main:Section("Farmer")
	shared.PepsiSwarm.gui.main:Toggle("Farming", {
		location = shared.PepsiSwarm.mods,
		flag = "farming"
	}, Pepsi.fcall(function(bool)
		shared.PepsiSwarm.mods.farming = bool or false
		if not shared.PepsiSwarm.mods.farming then
			shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
		end
	end))
	shared.PepsiSwarm.gui.main:Toggle("Convert Honey Early", {
		location = shared.PepsiSwarm.mods,
		flag = "earlyconvert"
	})
	shared.PepsiSwarm.gui.main:Slider("Convert At", {
		flag = "earlyconvert",
		location = shared.PepsiSwarm.values,
		default = 95,
		max = 100,
		min = 0
	})
	shared.PepsiSwarm.gui.main:Toggle("Use Instant Converts", {
		flag = "instantconvert",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle(specialchar .. " \t Use When Full", {
		flag = "icfull",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle(specialchar .. " \t Use Ant Passes", {
		flag = "icap",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle(specialchar .. " \t Use Tickets", {
		flag = "icticket",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Don't Use Sprinklers", {
		flag = "nosprinklers",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Field Quests", {
		flag = "sq",
		location = shared.PepsiSwarm.mods
	}, Pepsi.fcall(function()
		local menus = Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "Menus")
		if menus and shared.PepsiSwarm.mods.sq and #Pepsi.Obj({default = {}}, menus, "Children", "Quests", "Content", "GetChildren", {namecall = true}) <= 0 then
			local children = table.filterfunc(Pepsi.Obj({default = {}}, menus, "ChildTabs", "GetDescendants", {namecall = true}), function(i)
				return i and i.Name == "Icon" and i.ClassName == "ImageLabel" and i.Image == "rbxassetid://1436835355"
			end)
			if type(children) == "table" and #children > 0 then
				local child = assert(children[1].Parent)
				pcall(Pepsi.LeftClick, child.Position.X.Offset, child.Position.Y.Offset + 38)
				if mousemoverel then
					pcall(mousemoverel, 1, 0)
				end
			end
		end
	end))
	shared.PepsiSwarm.gui.main:Dropdown("Field", {
		list = shared.PepsiSwarm.fieldnames or table.sort(table.keys(shared.PepsiSwarm.fields or shared.PepsiSwarm.zones or {["Something fucked up"] = "Something fucked up"})) or shared.PepsiSwarm.zones or {"Something fucked up"},
		flag = "field",
		location = shared.PepsiSwarm.values
	})

	shared.PepsiSwarm.gui.main:Section("Tokens")
	shared.PepsiSwarm.gui.main:Toggle("Teleport to Rares", {
		flag = "tprare",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Collect Tokens", {
		default = true,
		flag = "tokens",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Very Rare Collector", {
		default = true,
		flag = "getsuperrares",
		location = shared.PepsiSwarm
	})
	shared.PepsiSwarm.gui.main:Toggle(specialchar .. " \t Fast Mode", {
		flag = "tpfast",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Pursue Fire Flies", {
		default = true,
		flag = "fireflies",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Teleport to Leaves", {
		flag = "tpleef",
		location = shared.PepsiSwarm.mods
	}) -- Super buggy
	shared.PepsiSwarm.gui.main:Toggle("Teleport to Sparkles", {
		flag = "tpspark",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Slider("Max Distance", {
		flag = "tokendist",
		location = shared.PepsiSwarm.values,
		default = 80,
		max = 250,
		min = 0
	})
	shared.PepsiSwarm.gui.main:Toggle("Farm Sprouts", {
		default = true,
		flag = "sprouts",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Plant Sprouts", {
		flag = "sproutspam",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle(specialchar .. " \t Only One", {
		flag = "sproutsingle",
		location = shared.PepsiSwarm.values,
		default = true
	})
	shared.PepsiSwarm.gui.main:Toggle(specialchar .. " \t Only At Night", {
		flag = "sproutnight",
		location = shared.PepsiSwarm.values
	})
	shared.PepsiSwarm.gui.main:Slider(specialchar .. " \t Rate", {
		flag = "sproutrate",
		location = shared.PepsiSwarm.values,
		default = 25,
		max = 180,
		min = 1
	})
	shared.PepsiSwarm.gui.main:Toggle("Ignore Tennis Balls", {
		flag = "ignoretball",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Shower Catcher", {
		flag = "showercatch",
		location = shared.PepsiSwarm.mods,
		default = true
	})
	shared.PepsiSwarm.gui.main:Toggle("Hide Tokens", {
		flag = "tkhide",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Toggle("Hide Bees", {
		flag = "bhide",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.main:Button("Collect Treasures", function()
		if shared.PepsiSwarm.maytp then
			hunting = true
			shared.PepsiSwarm.maytp = false
			local t = Pepsi.Obj(Pepsi.Human(), "RootPart")
			for k, v in pairs(Collectibles:GetChildren()) do
				if shared.PepsiSwarm.showering then
					break
				end
				t = t or Pepsi.Obj(Pepsi.Human(), "RootPart")
				if t and typeof(v) == "Instance" and v:IsA("BasePart") then
					if v.Transparency < 0.1 then
						for k = 1, 7 do
							local h = Pepsi.Human()
								if h then
								h:ChangeState(11)
								tp(v.Position)
								wait(0.1)
								h:ChangeState(10)
							end
						end
					end
					v.Transparency = 1
				end
				sleep(1)
			end
			wait(0.3)
			hunting = false
			shared.PepsiSwarm.maytp = true
		end
	end)
	if type(getconnections) == "function" then
		shared.PepsiSwarm.gui.main:Section("Quests")
		shared.PepsiSwarm.gui.main:Toggle("Accept/Complete Quests", {
			flag = "cq",
			location = shared.PepsiSwarm.mods
		})
		shared.PepsiSwarm.gui.main:Button("Accept/Complete Quests", function()
			questman = questman or shared.PepsiSwarm.questman
			pcall(questman, true)
		end)
		
	end
	if shared["I know what I'm doing!"] == "confirm" then
		shared.PepsiSwarm.gui.main:Toggle("Accept Quests", {
			flag = "aq",
			location = shared.PepsiSwarm.mods
		})
		shared.PepsiSwarm.gui.main:Toggle("Collect Badges", {
			flag = "cb",
			location = shared.PepsiSwarm.mods
		})
	end
	function shared.PepsiSwarm.GotoHive()
		Pepsi.WaitForChar():MoveTo(shared.PepsiSwarm.home)
		delay(0.6, function()
			PlayerHiveCommand:FireServer("ToggleHoneyMaking")
			--Pepsi.KeyPress(Enum.KeyCode.E)	
		end)
	end
	shared.PepsiSwarm.gui.move = ui:CreateWindow("Movement")
	shared.PepsiSwarm.gui.move:Button("Go To Hive", shared.PepsiSwarm.GotoHive)
	shared.PepsiSwarm.gui.move:Toggle("Enable Goto Hive Bind", {
		flag = "hivetp",
		location = shared.PepsiSwarm.values,
		default = true
	})
	shared.PepsiSwarm.gui.move:Bind(specialchar .. " \t Hive Bind", {
		kbonly = true,
		default = Enum.KeyCode.Backquote,
		location = shared.PepsiSwarm.values,
		flag = "homekey"
	}, function(key)
		if key and key.KeyCode then
			if shared.PepsiSwarm.keyconnection2 then
				shared.PepsiSwarm.keyconnection2:Disconnect()
				shared.PepsiSwarm.keyconnection2 = nil
			end
			shared.PepsiSwarm.values.homekey = key.KeyCode
			wait(0.5)
			shared.PepsiSwarm.values.homekey = key.KeyCode
			shared.PepsiSwarm.keyconnection2 = Pepsi.OnKey(shared.PepsiSwarm.values.homekey, function()
				if shared.PepsiSwarm and shared.PepsiSwarm.values.hivetp and shared.PepsiSwarm.GotoHive then
					shared.PepsiSwarm.GotoHive()
				end
			end)
		end
	end)
	shared.PepsiSwarm.gui.move:Section("Transport Settings")
	shared.PepsiSwarm.gui.move:Toggle("Walk To Goals", {
		flag = "walking",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle(specialchar .. " \t Teleport On Low HP", {
		flag = "fleehp",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle(specialchar .. " \t Use Toy Shortcuts", {
		default = true,
		flag = "shortcuts",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle("Teleport When Stuck", {
		default = true,
		flag = "stucktp",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Slider(specialchar .. " \t Threshold", {
		default = 10,
		max = 50,
		min = 1,
		flag = "stuckcount",
		location = shared.PepsiSwarm.values
	})
	
	shared.PepsiSwarm.gui.move:Section("Combat")
	shared.PepsiSwarm.gui.move:Toggle("Teleport", {
		flag = "mobtp",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Slider(specialchar .. " \t HP Trigger", {
		flag = "tplow",
		location = shared.PepsiSwarm.values,
		default = 40,
		max = 100,
		min = 1
	})
	shared.PepsiSwarm.gui.move:Toggle("Farm Battle Points", {
		flag = "farmbp",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle("Target Mondo Chick", {
		flag = "farmmc",
		location = shared.PepsiSwarm.mods
	})
	--shared.PepsiSwarm.gui.move:Toggle("Target Commando Chick", {
	--	flag = "farmcc",
	--	location = shared.PepsiSwarm.mods
	--})
	shared.PepsiSwarm.gui.move:Toggle("Target Vicious Bee", {
		flag = "farmvb",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle("Target Windy Bee", {
		flag = "farmwb",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle("Target Stick Bug", {
		flag = "farmsb",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle("Target Aphids", {
		flag = "farmap",
		location = shared.PepsiSwarm.mods
	})
	--shared.PepsiSwarm.gui.move:Toggle("Flee When Low", {
	--	default = true,
	--	flag = "fleewhenlow",
	--	location = shared.PepsiSwarm.mods
	--})
	--shared.PepsiSwarm.gui.move:Toggle(specialchar .. " \t No Target Mode", {
	--	flag = "fleenotarget",
	--	location = shared.PepsiSwarm.values
	--})
	--shared.PepsiSwarm.gui.move:Slider("Flee At", {
	--	default = 15,
	--	max = 100,
	--	min = 1,
	--	flag = "fleeat",
	--	location = shared.PepsiSwarm.values
	--})
	shared.PepsiSwarm.gui.move:Toggle("Train Crab", {
		default = false,
		flag = "tcrab",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle("Train Snail", {
		default = false,
		flag = "tsnail",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.move:Toggle("Train Commando Chick", {
		default = false,
		flag = "tchick",
		location = shared.PepsiSwarm.mods
	})

	shared.PepsiSwarm.gui.move:Toggle("Godmode", {
		location = shared.PepsiSwarm.mods,
		flag = "god"
	})
	shared.PepsiSwarm.gui.resource = ui:CreateWindow("Resources")
	shared.PepsiSwarm.gui.feedbees = shared.PepsiSwarm.gui.resource:Toggle("Auto Feed Bees", {
		flag = "feeding",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.feedbees = shared.PepsiSwarm.gui.resource:Toggle(specialchar .. " \t Skip Mutated Bees", {
		flag = "feedingmute",
		location = shared.PepsiSwarm.values,
		default = true
	})
	shared.PepsiSwarm.gui.resource:Dropdown("Feed Bees With", {
		list = {
			"Favorite",
			"Auto",
			"Blueberry",
			"Pineapple",
			"Strawberry",
			"SunflowerSeed",
			"Treat",
			"MoonCharm",
			"Bitterberry",
			"Neonberry"
		},
		flag = "feeder",
		location = shared.PepsiSwarm.values
	})
	shared.PepsiSwarm.gui.resource:Slider("Rate", {
		default = 1.5,
		max = 5,
		min = 0.01,
		precise = true,
		flag = "feedrate",
		location = shared.PepsiSwarm.values
	})
	
	shared.PepsiSwarm.gui.resource:Box("Amount", {
		default = 1,
		max = 100000,
		min = 1,
		type = "number"
	}, function(box, num, old, enter)
		if box and (enter or shared.skipenter) then
			shared.PepsiSwarm.values.feedamount = tonumber(num or string.num(shared.PepsiSwarm.values.feedamount) or 1) or 1
			sleep(1)
			box.Text = tostring(shared.PepsiSwarm.values.feedamount or 1)
		elseif box and wait(0.1) then
			box.Text = tostring(tonumber(shared.PepsiSwarm.values.feedamount))
		end
	end)
	
	--shared.PepsiSwarm.gui.resource:Slider("Amount", {
	--	default = 1,
	--	max = 50,
	--	min = 1,
	--	flag = "feedamount",
	--	location = shared.PepsiSwarm.values
	--})
	
	shared.PepsiSwarm.gui.resource:Section("Blender")
	shared.PepsiSwarm.gui.resource:Box("Amount", {
		default = 1,
		max = 10000,
		min = 1,
		type = "number"
	}, function(box, num, old, enter)
		if box and (enter or shared.skipenter) then
			shared.PepsiSwarm.values.blenderqty = tonumber(num or string.num(shared.PepsiSwarm.values.blenderqty) or 1) or 1
			sleep(1)
			box.Text = tostring(shared.PepsiSwarm.values.blenderqty or 1)
		elseif box and wait(0.1) then
			box.Text = tostring(tonumber(shared.PepsiSwarm.values.blenderqty))
		end
	end)
	shared.PepsiSwarm.gui.resource:Dropdown("Item", {
		list = table.sort({
			"RedExtract",
			"BlueExtract",
			"Enzymes",
			"Oil",
			"Glue",
			"TropicalDrink",
			"Gumdrops",
			"MoonCharm",
			"Glitter",
			"StarJelly",
			"PurplePotion",
			"SuperSmoothie"
		}),
		flag = "blenderitem",
		location = shared.PepsiSwarm.values
	})
	shared.PepsiSwarm.gui.resource:Button("Start Blending", Pepsi.fcall(function()
		BlenderCommand:InvokeServer("PlaceOrder", {
			Recipe = shared.PepsiSwarm.values.blenderitem,
			Count = shared.PepsiSwarm.values.blenderqty
		})
	end))
	shared.PepsiSwarm.gui.resource:Button("Cancel Blending", Pepsi.fcall(function()
		BlenderCommand:InvokeServer("StopOrder")
	end))
	shared.PepsiSwarm.gui.resource:Button("Open Blender Gui", Pepsi.fcall(function()
		local sg = shared.PepsiSwarm.datastuffs.sg or (Pepsi.Lp or Pepsi.Me()):WaitForChild("PlayerGui"):FindFirstChild("ScreenGui")
		shared.PepsiSwarm.datastuffs.sg = shared.PepsiSwarm.datastuffs.sg or sg
		sg.Blender.Visible = not sg.Blender.Visible
	end))
	
	shared.PepsiSwarm.gui.resource:Section("Wind Shrine")
	shared.PepsiSwarm.gui.resource:Box("Amount", {
		default = 1,
		max = 99999999999999,
		min = 1,
		type = "number"
	}, Pepsi.fcall(function(box, num, old, enter)
		if box and (enter or shared.skipenter) then
			shared.PepsiSwarm.values.windamount = tonumber(num or string.num(shared.PepsiSwarm.values.windamount) or 1) or 1
		elseif box and wait(0.1) then
			box.Text = tostring(tonumber(shared.PepsiSwarm.values.windamount))
		end
	end))
	shared.PepsiSwarm.gui.resource:Dropdown("Item", {
		list = table.sort(table.keys(getstats("Eggs", 0x80))),
		flag = "wsitem",
		location = shared.PepsiSwarm.values
	})
	shared.PepsiSwarm.gui.resource:Button("Donate", Pepsi.fcall(function()
		WindShrineDonation:InvokeServer(shared.PepsiSwarm.values.wsitem, shared.PepsiSwarm.values.windamount)
		if shared.PepsiSwarm.mods.refund then
			return
		end
		while not shared.PepsiSwarm.mods.refund and 50 < Pepsi.Dist(Vector3.new(-482, 142, 412)) do
			wait(0.1)
		end
		if not shared.PepsiSwarm.mods.refund then
			WindShrineTrigger:FireServer()
		end
	end))
	if writefile and appendfile then
		shared.PepsiSwarm.gui.resource:Button("Export Donation Records", function()
			Pepsi.Hint("Exporting to 'bee_swarm_shrine_log.txt'", 10)
			local shrine = getstats("WindShrine", 0)
			if shrine then
				local donations = rawget(shrine, "Donations")
				local favor = rawget(shrine, "WindyFavor")
				if type(donations) == "table" then
					pcall(writefile, "bee_swarm_shrine_log.txt", "All donations, refunded and rewarded are shown.\nGenerated by PepsiSwarm\n\n")
					local tot = 0
					for _, data in pairs(table.esort(donations, true, nil, true)) do
						sleep(1)
						pcall(appendfile, "bee_swarm_shrine_log.txt", tostring(data[1]) .. ": " .. tostring(data[2]) .. "\n")
						--print(data[1], data[2])
						tot = tonumber(tonumber(data[2] or 0) + tonumber(tot or 0))
					end
					if type(tot) == "number" then
						pcall(appendfile, "bee_swarm_shrine_log.txt", "Total: " .. tostring(tot))
					end
					if type(favor) == "number" then
						pcall(appendfile, "bee_swarm_shrine_log.txt", "\nFavor: (Onett Patched)")
					end
					return Pepsi.Hint("Export Finished.")
				end
			end
			Pepsi.Hint("Export failed!")
		end)
	end
	shared.PepsiSwarm.gui.resource:Toggle("Auto Donate", {
		flag = "donate",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.resource:Toggle("Refund", {
		flag = "refund",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.resource:Button("Spawn Reward", Pepsi.fcall(function()
		WindShrineTrigger:FireServer()
	end))
	


	shared.PepsiSwarm.gui.resource:Section("Purchases")
	shared.PepsiSwarm.gui.resource:Box("Amount", {
		default = 1,
		max = 100000,
		min = 1,
		type = "number"
	}, Pepsi.fcall(function(box, num, old, enter)
		if box and (enter or shared.skipenter) then
			shared.PepsiSwarm.values.pamount = tonumber(num or string.num(shared.PepsiSwarm.values.pamount) or 1) or 1
		elseif box and wait(0.1) then
			box.Text = tostring(tonumber(shared.PepsiSwarm.values.pamount))
		end
	end))
	shared.PepsiSwarm.gui.resource:Dropdown("Item", {
		list = table.sort(table.keys(getstats("Eggs", 0x80))),
		flag = "pitem",
		location = shared.PepsiSwarm.values
	})
	shared.PepsiSwarm.gui.resource:Button("Buy", function()
		ItemPackageEvent:InvokeServer("Purchase", {
			Type = shared.PepsiSwarm.values.pitem,
			Category = "Eggs",
			Mute = ({true, false, false, false, false, false, false, false})[math.random(8)],
			Amount = shared.PepsiSwarm.values.pamount
		})
	end)
	shared.PepsiSwarm.gui.resource:Toggle("Auto Buy", {
		flag = "autobuy",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.resource:Slider("Rate", {
		default = 2,
		max = 10,
		min = 0.01,
		precise = true,
		flag = "buyrate",
		location = shared.PepsiSwarm.values
	})

	shared.PepsiSwarm.gui.resource:Section("Toys")
	shared.PepsiSwarm.gui.resource:Toggle("Auto Dispense", {
		flag = "dispense",
		location = shared.PepsiSwarm.mods
	})
	shared.PepsiSwarm.gui.resource:Toggle("Cannon Spammer", {
		flag = "cannonspam",
		location = shared.PepsiSwarm.mods
	})

	shared.PepsiSwarm.gui.info = ui:CreateWindow("Misc")
--	shared.PepsiSwarm.gui.shrinefavor = shared.PepsiSwarm.gui.info:Label("Shrine Favor")
	--shared.PepsiSwarm.gui.shrinegift = shared.PepsiSwarm.gui.info:Label("Shrine Chance")
	if string.fromtime then
		shared.PepsiSwarm.gui.playtime = shared.PepsiSwarm.gui.info:Label("Time")
	end
	shared.PepsiSwarm.gui.info:Button("Redeem Codes", Pepsi.fcall(function()
		for _, v in pairs(table.negate({ -- Some of these fuckers are dead or expired, but some may be renewed during different seasons of the year.
			"100mvisits",
			"12hourgeneral",
			"1mfavorites",
			"1moretime",
			"2mfavorites",
			"2years",
			"2yearsafterparty",
			"300mvisits",
			"38217",
			"4milmembers",
			"500mil",
			"5mmembers",
			"Cactus4Now",
			"accentmaster",
			"aceunhackedloot",
			"aceunhatched",
			"afternoon",
			"anniversabee",
			"arizona",
			"august",
			"banned",
			"beeday2019",
			"beemine",
			"beesbuzz123",
			"beesmasbegins",
			"beesmascheer",
			"berlin",
			"bigbag",
			"billionvisits",
			"blackbearmythic",
			"blackfriday",
			"bloxyboost",
			"bloxycelebration",
			"bopmaster",
			"breeze",
			"brownbearreboot",
			"buoyant",
			"buzz",
			"buzzy",
			"byebeebear",
			"cactus4now",
			"cantsleep",
			"carmensandiego",
			"change",
			"clubbasket",
			"clubbean",
			"clubcloud",
			"clubconverters",
			"clubjellies",
			"clubparty",
			"clubsnacks",
			"cog",
			"connoisseur",
			"cookieclub",
			"cornsyrup",
			"crafty",
			"crawlers",
			"cubly",
			"darzethdonation",
			"darzethpack",
			"decaboost",
			"discord100k",
			"discord50k",
			"dontusethisjelly",
			"dysentery",
			"eggreboot",
			"elladiely",
			"exoextract",
			"extrapass",
			"feelinglucky",
			"festivefinale",
			"festivefrogs",
			"friday",
			"fruitmachine",
			"fruitsalad",
			"fuzzyfarewell",
			"fuzzyreboot",
			"gel",
			"general",
			"gravycatfan",
			"gravygoodies",
			"gremlingoodies",
			"gumaden10t",
			"gumdropsforscience",
			"gummyboost",
			"gummysausage",
			"happynewyear",
			"hastehelper",
			"hibernation",
			"jellyhill",
			"jollyjelly",
			"jumpstart",
			"keen4",
			"kot?kbean",
			"latenightgumdrops",
			"leftovers",
			"luther",
			"magicmittens",
			"market",
			"marshmallow",
			"mayrutreats",
			"megamittens",
			"meow",
			"millie",
			"millionmembers",
			"minhmamamoons",
			"mischiefmaker",
			"mocito100t",
			"moonmiracle",
			"moretime",
			"nectar",
			"newmic",
			"niktacattack",
			"nonchalant",
			"noobasha+",
			"noobashabonus",
			"nothoney",
			"offtoorlando",
			"onettjelly",
			"oodlesofnoodles",
			"pandapower",
			"pectin",
			"pineappleparty",
			"pingboost",
			"poke",
			"preupdate",
			"pumpkinofjustice",
			"puppyperk",
			"reboooot",
			"reboot",
			"reboot2020",
			"rebootbag",
			"rebootboost",
			"rebootcheer",
			"rebootcloud",
			"rebootcode",
			"rebootpc",
			"reboots",
			"redcatbee",
			"redmarket",
			"robzirampage",
			"robzirobot",
			"roof",
			"royalrobzi",
			"saleend",
			"sdmittens1t",
			"secretprofilecode",
			"shhhh",
			"shutdown",
			"soup",
			"spacereboot",
			"sriracha",
			"starch",
			"strawbeary",
			"sugarrush",
			"summer",
			"sunbearsendoff",
			"sunsample",
			"sure",
			"tabby",
			"talltallmountain",
			"tapioca",
			"teespring",
			"terabritefight",
			"teratreasure",
			"thatguygift",
			"thatguyscrew",
			"thnxcyaboost",
			"thoseeyes",
			"tornado",
			"tornadoglitch",
			"trickortreat",
			"troggles",
			"trying",
			"unity",
			"valentine",
			"waiting",
			"wax",
			"wax2",
			"wealthclock1",
			"whoops",
			"wikiawardclock",
			"wikihonor",
			"willgoold",
			"windyreboot",
			"windyweekend",
			"wink",
			"wordfactory",
			"xanthan",
			"ytfmmoons"
		}, RetrievePlayerStats:InvokeServer().Codes or {})) do
			PromoCodeEvent:FireServer(v)
			Pepsi.Rs:Wait()
		end
	end))
	shared.PepsiSwarm.gui.info:Button("Buy Hive Slot", Pepsi.fcall(function()
		ItemPackageEvent:InvokeServer("Purchase", {
			Type = "Hive Slot",
			Category = "HiveSlot",
			Mute = false,
			Amount = 0x1
		})
	end))
	shared.PepsiSwarm.gui.info:Button("Craft Moon Amulet", Pepsi.fcall(function()
		ToyEvent:FireServer("Moon Amulet Generator")
	end))
	shared.PepsiSwarm.gui.info:Button("Request Honeystorm", Pepsi.fcall(function()
		ToyEvent:FireServer("Honeystorm")
	end))
	shared.PepsiSwarm.gui.info:Button("Request Meteor Shower", Pepsi.fcall(function()
		ToyEvent:FireServer("Mythic Meteor Shower")
	end))
	shared.PepsiSwarm.gui.info:Button("Request Sprout", Pepsi.fcall(function()
		ToyEvent:FireServer("Sprout Summoner")
	end))
	shared.PepsiSwarm.gui.info:Button("Summon Stick Bug", Pepsi.fcall(function()
		local event = Pepsi.Obj(ReplicatedStorage, "Events", "SelectNPCOption")
		if event then
			event:FireServer("StartFreeStickBugEvent")
			wait(0.5)
			if event then
				event:FireServer("StartPaidStickBugEvent")
			end
		end
	end))
	shared.PepsiSwarm.gui.info:Dropdown("Teleports", {
		list = table.sert(table.sort(table.keys(shared.PepsiSwarm.teleports)), 1, "Teleports")
	}, function(item)
		local t = (Pepsi.Lp.Character or Pepsi.WaitForChar()) and Pepsi.Torso()
		if t and shared.PepsiSwarm.teleports and shared.PepsiSwarm.teleports[item] then
			shared.PepsiSwarm.lasttp = item
			t.Velocity = Vector3.new()
			wait()
			t.Velocity = Vector3.new()
			wait()
			t.Velocity = Vector3.new()
			t.CFrame = shared.PepsiSwarm.teleports[item]
			t.Velocity = Vector3.new()
			wait()
			t.Velocity = Vector3.new()
			wait()
			t.Velocity = Vector3.new()
		end
	end)
	shared.PepsiSwarm.gui.info:Button("Teleport", function()
		local item = shared.PepsiSwarm.lasttp
		if item then
			local t = (Pepsi.Lp.Character or Pepsi.WaitForChar()) and Pepsi.Torso()
			if t and shared.PepsiSwarm.teleports and shared.PepsiSwarm.teleports[item] then
				t.Velocity = Vector3.new()
				wait()
				t.Velocity = Vector3.new()
				wait()
				t.Velocity = Vector3.new()
				t.CFrame = shared.PepsiSwarm.teleports[item]
				t.Velocity = Vector3.new()
				wait()
				t.Velocity = Vector3.new()
				wait()
				t.Velocity = Vector3.new()
			end
		end
	end)
	if not shitploit then
		shared.PepsiSwarm.gui.info:Toggle("Set Walk Speed", {}, (function(bool)
			shared.PepsiSwarm.mods.ws = bool or false
			local h = Pepsi.Human()
			if not shared.PepsiSwarm.mods.ws and h then
				h.WalkSpeed = shared.PepsiSwarm.values.dws
			end
		end))
		shared.PepsiSwarm.gui.info:Toggle("Set Jump Power", {}, Pepsi.fcall(function(bool)
			shared.PepsiSwarm.mods.jp = bool or false
			local h = Pepsi.Human()
			if not shared.PepsiSwarm.mods.jp and h then
				h.JumpPower = shared.PepsiSwarm.values.djp
			end
		end))
		shared.PepsiSwarm.gui.info:Box("Walk Speed", {
			default = 120,
			max = 100000,
			min = -100000,
			type = "number"
		}, Pepsi.fcall(function(box, num, old, enter)
			if box and (enter or shared.skipenter) then
				shared.PepsiSwarm.values.ws = tonumber(num or string.num(shared.PepsiSwarm.values.ws) or 1) or 1
			elseif box and wait(0.1) then
				box.Text = tostring(tonumber(shared.PepsiSwarm.values.ws))
			end
		end))
		shared.PepsiSwarm.gui.info:Box("Jump Power", {
			default = 90,
			max = 100000,
			min = -100000,
			type = "number"
		}, function(box, num, old, enter)
			if box and (enter or shared.skipenter) then
				shared.PepsiSwarm.values.jp = tonumber(num or string.num(shared.PepsiSwarm.values.jp) or 1) or 1
			elseif box and wait(0.1) then
				box.Text = tostring(tonumber(shared.PepsiSwarm.values.jp))
			end
		end)
		shared.PepsiSwarm.gui.info:Toggle("Use Field Dice", {
			location = shared.PepsiSwarm.mods,
			flag = "fd"
		})
		shared.PepsiSwarm.gui.info:Toggle(specialchar .. " \t Use When Full", {
			location = shared.PepsiSwarm.values,
			flag = "fdf",
			default = true
		})
		shared.PepsiSwarm.gui.info:Toggle("Use Marshmallow Bees", {
			location = shared.PepsiSwarm.mods,
			flag = "marshbee"
		})
		shared.PepsiSwarm.gui.info:Toggle(specialchar .. " \t Use When Full", {
			location = shared.PepsiSwarm.values,
			flag = "marshbeef",
			default = true
		})
		shared.PepsiSwarm.gui.info:Toggle("Use Coconuts", {
			location = shared.PepsiSwarm.mods,
			flag = "usecoconuts"
		})
		shared.PepsiSwarm.gui.info:Toggle(specialchar .. " \t Use When Full", {
			location = shared.PepsiSwarm.values,
			flag = "usecoconutsf",
			default = true
		})
		shared.PepsiSwarm.gui.info:Toggle("Use Stingers", {
			location = shared.PepsiSwarm.mods,
			flag = "dostingers"
		})
		shared.PepsiSwarm.gui.info:Toggle(specialchar .. " \t Monster Check", {
			location = shared.PepsiSwarm.values,
			flag = "stingercheck",
			default = true
		})
	end
	shared.PepsiSwarm.gui.info:Toggle("Auto Scoop", {
		location = shared.PepsiSwarm.mods,
		flag = "scoop"
	}, Pepsi.fcall(function()
		local tool = dbg and dbg.sc and dbg.gse and shared.PepsiSwarm.mods.scoop and Pepsi.Tool()
		if tool then
			pcall(dbg.sc, rawget(dbg.gse(tool:FindFirstChild("ClientScriptMouse")), "collectStart"), 11, ((shared.PepsiSwarm.mods.scoop and "GetMouseButtonsPressed") or "IsMouseButtonPressed"))
			Pepsi.Mark(tool, "scoop")
		end
	end))
	shared.PepsiSwarm.gui.info:Toggle(specialchar .. " \t Ignore Panic", {
		location = shared.PepsiSwarm.values,
		flag = "scooppanic",
		default = true
	})
	if not shitploit then
		shared.PepsiSwarm.gui.info:Toggle("Face Bees", {
			location = shared.PepsiSwarm.mods,
			flag = "facebees"
		})
		shared.PepsiSwarm.gui.info:Toggle("Spin", {
			location = shared.PepsiSwarm.mods,
			flag = "spin"
		})
		shared.PepsiSwarm.gui.info:Slider(specialchar .. " \t Speed", {
			flag = "spin",
			location = shared.PepsiSwarm.values,
			default = 50,
			max = 100,
			min = 1
		})
	end
	shared.PepsiSwarm.gui.info:Toggle("Panic", {
		location = shared.PepsiSwarm,
		flag = "panic"
	})
	shared.PepsiSwarm.gui.info:Toggle(specialchar .. " \t Enable Bind", {
		location = shared.PepsiSwarm.values,
		flag = "panickb",
		default = true
	})
	shared.PepsiSwarm.gui.info:Bind(specialchar .. " \t Panic Bind", {
		kbonly = true,
		default = Enum.KeyCode.F4,
		location = shared.PepsiSwarm.values,
		flag = "panic"
	}, function(key)
		if key and key.KeyCode then
			if shared.PepsiSwarm.keyconnection then
				shared.PepsiSwarm.keyconnection:Disconnect()
				shared.PepsiSwarm.keyconnection = nil
			end
			shared.PepsiSwarm.values.panic = key.KeyCode
			wait(0.5)
			shared.PepsiSwarm.values.panic = key.KeyCode
			shared.PepsiSwarm.keyconnection = Pepsi.OnKey(shared.PepsiSwarm.values.panic, function()
				if shared.PepsiSwarm and shared.PepsiSwarm.values.panickb then
					shared.PepsiSwarm.panic = not shared.PepsiSwarm.panic
					Pepsi.Hint(shared.PepsiSwarm.panic and tostring("PAUSED - " .. tostring(tostring(shared.PepsiSwarm.values.panic.Name) or "KEY PRESSED")) or "Resumed")
				else
					Pepsi.Hint("Bind Disabled")
				end
			end)
		end
	end)
	shared.PepsiSwarm.gui.info:Button("Rejoin Server", Pepsi.Rejoin)
	shared.PepsiSwarm.gui.info:Section("Version: " .. tostring(versioN))

	shared.PepsiSwarm.gui.rares = ui:CreateWindow("Files & Rares")
	if writefile and readfile and appendfile then
		shared.PepsiSwarm.gui.rares:Section("Save / Load")
		shared.PepsiSwarm.gui.rares:Box("File Name", {
			default = "profile",
			type = "string"
		}, Pepsi.fcall(function(box, str, old, enter)
			if box and (enter or shared.skipenter) then
				if str:len() <= 0 then
					str = "profile"
				end
				shared.PepsiSwarm.values.file = str
				wait(0.1)
				if box then
					box.Text = tostring(shared.PepsiSwarm.values.file or "profile")
				end
			elseif box then
				wait(0.1)
				box.Text = tostring(shared.PepsiSwarm.values.file or "profile")
			end
		end))
		shared.PepsiSwarm.gui.rares:Button("Save", function()
			local file = tostring("PSwarm_" .. tostring(shared.PepsiSwarm.values.file or "profile") .. ".txt")
			if file and writefile then
				local savetab = {
					mods = shared.PepsiSwarm.mods,
					values = shared.PepsiSwarm.values,
					rares = table.storekeys(shared.PepsiSwarm.rares),
					bl = table.keys(shared.PepsiSwarm.fieldblacklist),
					gl = table.keys(shared.PepsiSwarm.godwhitelist),
					bt = table.keys(shared.PepsiSwarm.btypes)
				}
				if typeof(savetab.values.panic) == "EnumItem" then -- Fuck JSON not being able to parse enums
					savetab.values.panic = savetab.values.panic.Name
				end
				local oops, savestr = pcall(table.tojson, savetab)
				if oops and savestr then
					writefile(file, savestr)
					Pepsi.Notify("Pepsi swarm", "Settings saved")
				else
					if not oops then
						warn(savestr)
					end
					Pepsi.Notify("Pepsi swarm", "Settings failed to save")
				end
			else
				Pepsi.Notify("Pepsi swarm", "Settings failed to save")
			end
		end)
	
		shared.PepsiSwarm.gui.rares:Button("Load", function()
			loadsettings()
		end)
		shared.PepsiSwarm.gui.rares:Button("Export Field Scores", function()
			shared.printscores = true
			wait(0.1)
			Pepsi.Hint("Scores Exporting...", 20)
		end)
	end
	shared.PepsiSwarm.gui.rare = shared.PepsiSwarm.gui.rares:Label("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
	shared.PepsiSwarm.gui.rareboxfunc, shared.PepsiSwarm.gui.rarebox = shared.PepsiSwarm.gui.rares:SearchBox("Decal Texture", {name = "Texture ID", list = {""}}, (function(selected, typed)
		if selected or typed then
			shared.PepsiSwarm.values.rareid = string.num(selected or typed)
			if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
				shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
				if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
					shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
				end
			end
		end
	end))
	shared.PepsiSwarm.gui.rares:Button("Set Rare", function()
		if type(shared.PepsiSwarm.values.rareid) == "number" and shared.PepsiSwarm.values.rareid > 0 then
			shared.PepsiSwarm.rares[shared.PepsiSwarm.values.rareid] = 2
			--shared.PepsiSwarm.values.rareid = nil
			if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
				shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
				if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
					shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
				end
			end
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Set Very Rare", function()
		if type(shared.PepsiSwarm.values.rareid) == "number" and shared.PepsiSwarm.values.rareid > 0 then
			shared.PepsiSwarm.rares[shared.PepsiSwarm.values.rareid] = 3
			--shared.PepsiSwarm.values.rareid = nil
			if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
				shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
				if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare and shared.PepsiSwarm.gui.rare.Set) == "function" then
					shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
				end
			end
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Set Low Priority", function()
		if type(shared.PepsiSwarm.values.rareid) == "number" and shared.PepsiSwarm.values.rareid > 0 then
			shared.PepsiSwarm.rares[shared.PepsiSwarm.values.rareid] = 1
			--shared.PepsiSwarm.values.rareid = nil
			if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
				shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
				if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
					shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
				end
			end
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Set Blacklist", function()
		if type(shared.PepsiSwarm.values.rareid) == "number" and shared.PepsiSwarm.values.rareid > 0 then
			shared.PepsiSwarm.rares[shared.PepsiSwarm.values.rareid] = 0
			--shared.PepsiSwarm.values.rareid = nil
			if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
				shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
				if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
					shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
				end
			end
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Remove Rare", function()
		if type(shared.PepsiSwarm.values.rareid) == "number" and shared.PepsiSwarm.values.rareid > 0 then
			shared.PepsiSwarm.rares[shared.PepsiSwarm.values.rareid] = nil
			--shared.PepsiSwarm.values.rareid = nil
			if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
				shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
				if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
					shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
				end
			end
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Clear Rare List", function()
		shared.PepsiSwarm.rares = {}
		if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
			shared.PepsiSwarm.gui.rareboxfunc({""})
			if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
				shared.PepsiSwarm.gui.rare.Set("Rares (0)")
			end
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Default Rares", function()
		shared.PepsiSwarm.rares = {}
		for k, v in pairs(default_rares) do
			shared.PepsiSwarm.rares[k] = v
		end
		if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
			shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
			if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
				shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
			end
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Find Rare IDs", (function()
		for _, decal in pairs(Pepsi.Obj(ReplicatedStorage, "EggTypes"):GetChildren()) do
			if decal.ClassName == "Decal" then
				shared.PepsiSwarm.rares[string.num(decal.Texture)] = 2
			end
		end
		shared.PepsiSwarm.rares[1629547638] = 2
		shared.PepsiSwarm.rares[2000457501] = 2
		shared.PepsiSwarm.rares[2319083910] = 2
		shared.PepsiSwarm.rares[3582519526] = 2
		shared.PepsiSwarm.rares[1472256444] = 2
		shared.PepsiSwarm.rares[3582501342] = 2
		shared.PepsiSwarm.rares[1671281844] = 2
		shared.PepsiSwarm.rares[2305425690] = 2
		if type(shared.PepsiSwarm.gui.rareboxfunc) == "function" then
			shared.PepsiSwarm.gui.rareboxfunc(table.sort(table.keys(shared.PepsiSwarm.rares)))
			if shared.PepsiSwarm.gui.rare and type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
				shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
			end
		end
	end))
	shared.PepsiSwarm.gui.rares:Button("Find ALL IDs", (function()
		Pepsi.Splash("Finding Textures...", 60)
		wait()
		pcall(function()
			local s = 1000
			for _, decal in pairs(game:GetDescendants()) do
				s = s - 1
				if s <= 0 then
					sleep(1)
					s = 500
				end
				if Pepsi.Obj(decal, "Texture") and string.num(decal.Texture) then
					shared.PepsiSwarm.rares[string.num(decal.Texture)] = 2
				end
				if Pepsi.Obj(decal, "Image") and string.num(decal.Image) then
					sleep(1)
					shared.PepsiSwarm.rares[string.num(decal.Image)] = 2
				end
			end
		end)
		Pepsi.Splash("Finished!", 2)
	end))
	if writefile and appendfile then
		local function exporttokens()
			Pepsi.Hint("Exporting Textures...", 60)
			wait()
			local x, json = pcall(function()
				return table.tojson(table.keys(shared.PepsiSwarm.knowndecals))
			end)
			writefile("bee_swarm_tokens.txt", "Tokens for Bee Swarm Simulator (From Pepsi Swarm v" .. versioN .. ")")
			if x and json then
				pcall(function()
					appendfile("bee_swarm_tokens.txt", "\n" .. json)
				end)
			end
			local mps = Pepsi.Service("MarketplaceService")
			pcall(function()
				local s = 10
				for decal in pairs(shared.PepsiSwarm.knowndecals) do
					s = s - 1
					if s <= 0 then
						sleep(1)
						s = 5
					end
					local n = tostring(decal)
					local na = n
					pcall(function()
						n = tostring(string.gsub(string.gsub(mps:GetProductInfo(decal).Name, ".", function(s)
							if not tonumber(s) and string.lower(s) == string.upper(s) then
								return ""
							end
						end), "Images", "") or "unnamed" or n or tostring(decal))
					end)
					appendfile("bee_swarm_tokens.txt", "\n[" .. na .. "] - " .. "https://www.roblox.com/library/" .. na .. "/" .. n)
				end
			end)
			Pepsi.Hint("Finished!", 1)
		end
		shared.PepsiSwarm.exporttokens = exporttokens
		shared.PepsiSwarm.gui.rares:Button("Export Token IDs", exporttokens)
	end
	shared.PepsiSwarm.gui.blflieds = shared.PepsiSwarm.gui.rares:Label("Field Blacklists")
	shared.PepsiSwarm.gui.rares:Dropdown("Field", {
		list = table.sort(shared.PepsiSwarm.realfields),
		location = shared.PepsiSwarm.values,
		flag = "blfield"
	})
	shared.PepsiSwarm.gui.rares:Button("Blacklist", function()
		if shared.PepsiSwarm.values.blfield then
			rawset(shared.PepsiSwarm.fieldblacklist, shared.PepsiSwarm.values.blfield, true)
			rawset(shared.PepsiSwarm.godwhitelist, shared.PepsiSwarm.values.blfield, nil)
		end
		if type(shared.PepsiSwarm.gui.blflieds) == "table" and type(shared.PepsiSwarm.gui.blflieds.Set) == "function" then
			shared.PepsiSwarm.gui.blflieds.Set("Field Blacklists (" .. tostring(tonumber(table.count(shared.PepsiSwarm.fieldblacklist) + table.count(shared.PepsiSwarm.godwhitelist))) .. ")")
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Godlist", function()
		if shared.PepsiSwarm.values.blfield then
			rawset(shared.PepsiSwarm.fieldblacklist, shared.PepsiSwarm.values.blfield, nil)
			rawset(shared.PepsiSwarm.godwhitelist, shared.PepsiSwarm.values.blfield, true)
		end
		if type(shared.PepsiSwarm.gui.blflieds) == "table" and type(shared.PepsiSwarm.gui.blflieds.Set) == "function" then
			shared.PepsiSwarm.gui.blflieds.Set("Field Blacklists (" .. tostring(tonumber(table.count(shared.PepsiSwarm.fieldblacklist) + table.count(shared.PepsiSwarm.godwhitelist))) .. ")")
		end
	end)
	shared.PepsiSwarm.gui.rares:Button("Whitelist/Clear", function()
		if shared.PepsiSwarm.values.blfield then
			rawset(shared.PepsiSwarm.fieldblacklist, shared.PepsiSwarm.values.blfield, nil)
			rawset(shared.PepsiSwarm.godwhitelist, shared.PepsiSwarm.values.blfield, nil)
		end
		if type(shared.PepsiSwarm.gui.blflieds) == "table" and type(shared.PepsiSwarm.gui.blflieds.Set) == "function" then
			shared.PepsiSwarm.gui.blflieds.Set("Field Blacklists (" .. tostring(tonumber(table.count(shared.PepsiSwarm.fieldblacklist) + table.count(shared.PepsiSwarm.godwhitelist))) .. ")")
		end
	end)
	
	shared.PepsiSwarm.gui.inv = ui:CreateWindow("Inventory")
	shared.PepsiSwarm.gui.equip = shared.PepsiSwarm.gui.inv:SearchBox("Equipment", {
		location = shared.PepsiSwarm.values,
		name = "Equipment",
		flag = "inve",
		list = {"Loading"} -- update
	})
	shared.PepsiSwarm.gui.inv:Button("Equip", function()
		ItemPackageEvent:InvokeServer("Equip", {
			Mute = true,
			Type = shared.PepsiSwarm.values.inve,
			Category = "Accessory"
		})
		wait()
		ItemPackageEvent:InvokeServer("Equip", {
			Mute = true,
			Type = shared.PepsiSwarm.values.inve,
			Category = "Collector"
		})
	end)
	shared.PepsiSwarm.gui.buyequip = shared.PepsiSwarm.gui.inv:SearchBox("Equipment", {
		location = shared.PepsiSwarm.values,
		name = "Equipment",
		flag = "inveb",
		list = {"Loading"} -- update
	})
	shared.PepsiSwarm.gui.inv:Button("Purchase", function()
		ItemPackageEvent:InvokeServer("Purchase", {
			Mute = true,
			Type = shared.PepsiSwarm.values.inveb,
			Category = "Accessory"
		})
		wait()
		ItemPackageEvent:InvokeServer("Equip", {
			Mute = true,
			Type = shared.PepsiSwarm.values.inveb,
			Category = "Accessory"
		})
		wait()
		ItemPackageEvent:InvokeServer("Purchase", {
			Mute = true,
			Type = shared.PepsiSwarm.values.inveb,
			Category = "Collector"
		})
		wait()
		ItemPackageEvent:InvokeServer("Equip", {
			Mute = true,
			Type = shared.PepsiSwarm.values.inveb,
			Category = "Collector"
		})
	end)
	shared.PepsiSwarm.gui.inv:Button("Random Equip", function()
		local stats = getstats(nil, 0xA)
		local acc, coll, ea, ec = stats.Accessories, stats.Collectors, stats.EquippedAccessories, stats.EquippedCollector
		if acc and coll and ea and ec then
			acc, coll = table.dictionary(acc), table.dictionary(coll)
			acc[ea] = nil
			coll[ec] = nil
			acc, coll = table.mix(table.keys(acc)), table.mix(table.keys(coll))
			acc, coll = acc[math.random(#acc)], coll[math.random(#coll)]
			if acc ~= "Elite Scythe" and acc ~= "Honey Hammer" then
				ItemPackageEvent:InvokeServer("Equip", {
					Mute = true,
					Type = acc,
					Category = "Accessory"
				})
			end
			wait()
			if coll ~= "Elite Scythe" and coll ~= "Honey Hammer" then
				ItemPackageEvent:InvokeServer("Equip", {
					Mute = true,
					Type = coll,
					Category = "Collector"
				})
			end
		end
	end)
	if not shitploit then
		shared.PepsiSwarm.gui.rj = ui:CreateWindow("Royal Jellys")
		shared.PepsiSwarm.gui.rj:Toggle("Re-Roll Enabled", {
			location = shared.PepsiSwarm.mods,
			flag = "rj"
		})
		shared.PepsiSwarm.gui.rj:Toggle("Require Gifted", {
			location = shared.PepsiSwarm.values,
			flag = "rjg"
		})
		shared.PepsiSwarm.gui.rj:Toggle("Stop At Gifted", {
			location = shared.PepsiSwarm.values,
			flag = "rjgstop",
			default = true
		})
		shared.PepsiSwarm.gui.rj:Toggle("Require Mutation", {
			location = shared.PepsiSwarm.values,
			flag = "rjm"
		})
		shared.PepsiSwarm.gui.rj:Toggle("Require Rarity", {
			location = shared.PepsiSwarm.values,
			flag = "rjr"
		})
		shared.PepsiSwarm.gui.rj:Dropdown("Minimal Rarity", {
			location = shared.PepsiSwarm.values,
			name = "Minimal Rarity",
			flag = "rjmr",
			list = {
				"Common",
				"Rare",
				"Epic",
				"Legendary",
				"Mythic"
			}
		})
		shared.PepsiSwarm.gui.rj:Toggle("Require Color", {
			location = shared.PepsiSwarm.values,
			flag = "rjc"
		})
		shared.PepsiSwarm.gui.rj:Dropdown("Bee Color", {
			location = shared.PepsiSwarm.values,
			name = "Bee Color",
			flag = "rjbc",
			list = {
				"Colorless",
				"Blue",
				"Red"
			}
		})
		shared.PepsiSwarm.gui.rj:Toggle("Require Types", {
			location = shared.PepsiSwarm.values,
			flag = "rjt"
		})
		shared.PepsiSwarm.gui.typeslabel = shared.PepsiSwarm.gui.rj:Label("Types")
		shared.PepsiSwarm.gui.rj:Dropdown("Bee Type", {
			location = shared.PepsiSwarm.values,
			flag = "rjbt",
			list = shared.PepsiSwarm.beenames
		})
		
		shared.PepsiSwarm.gui.rj:Button("Add Type", function()
			if type(shared.PepsiSwarm.values.rjbt) == "string" and #shared.PepsiSwarm.values.rjbt > 0 then
				shared.PepsiSwarm.btypes[shared.PepsiSwarm.values.rjbt] = true
				if type(shared.PepsiSwarm.gui.typeslabel) == "table" and type(shared.PepsiSwarm.gui.typeslabel.Set) == "function" then
					shared.PepsiSwarm.gui.typeslabel.Set("Types (" .. tostring(table.count(shared.PepsiSwarm.btypes)) .. ")")
				end
			end
		end)
		shared.PepsiSwarm.gui.rj:Button("Remove Type", function()
			shared.PepsiSwarm.btypes[shared.PepsiSwarm.values.rjbt] = nil
			if type(shared.PepsiSwarm.gui.typeslabel) == "table" and type(shared.PepsiSwarm.gui.typeslabel.Set) == "function" then
				shared.PepsiSwarm.gui.typeslabel.Set("Types (" .. tostring(table.count(shared.PepsiSwarm.btypes)) .. ")")
			end
		end)
		shared.PepsiSwarm.gui.rj:Button("Clear Type List", function()
			shared.PepsiSwarm.btypes = {}
			if type(shared.PepsiSwarm.gui.typeslabel) == "table" and type(shared.PepsiSwarm.gui.typeslabel.Set) == "function" then
				shared.PepsiSwarm.gui.typeslabel.Set("Types (0)")
			end
		end)
	end
	shared.PepsiSwarm.gui.info = ui:CreateWindow("Info")
	shared.PepsiSwarm.gui.wstime = shared.PepsiSwarm.gui.info:Label("Shrine: Ready!")
	-- Memory Match
	shared.PepsiSwarm.gui.mmtime = shared.PepsiSwarm.gui.info:Label("Match: Ready!")
	-- Mega Memory Match
	shared.PepsiSwarm.gui.mmmtime = shared.PepsiSwarm.gui.info:Label("Mega Match: Ready!")
	-- Night Memory Match
	shared.PepsiSwarm.gui.nmmtime = shared.PepsiSwarm.gui.info:Label("Night Match: Ready!")
	-- Extreme Memory Match
	shared.PepsiSwarm.gui.emmtime = shared.PepsiSwarm.gui.info:Label("Extreme Match: Ready!")
	shared.PepsiSwarm.gui.mstime = {}
	local monsters = MonsterSpawners:GetChildren()
	if type(monsters) == "table" then
		--shared.PepsiSwarm.gui.info:Section("Monster Respawns")
		local mons = {}
		for _, m in pairs(monsters) do
			mons[m.Name] = m
		end
		monsters = table.asort(table.storekeys(mons), 1)
		for _, data in pairs(monsters) do
			local monster, spawner = unpack(data)
			if type(monster) == "string" and typeof(spawner) == "Instance" then
				local l = spawner:FindFirstChild("TimerLabel", true)
				if typeof(l) == "Instance" and l:IsA("TextLabel") and monster and spawner then
					shared.PepsiSwarm.gui.mstime[monster] = {shared.PepsiSwarm.gui.info:Label(monster .. ": " .. tostring(string.subfind(l.Text, ": ", nil, false, nil, true) or "Ready!")), l}
				end
			end
		end
	end
end

Pepsi.Lp.Idled:Connect(function()
	local menus = Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "Menus")
	if menus and shared.PepsiSwarm.mods.sq and #Pepsi.Obj({default = {}}, menus, "Children", "Quests", "Content", "GetChildren", {namecall = true}) <= 0 then
		local children = table.filterfunc(Pepsi.Obj({default = {}}, menus, "ChildTabs", "GetDescendants", {namecall = true}), function(i)
			return i and i.Name == "Icon" and i.ClassName == "ImageLabel" and i.Image == "rbxassetid://1436835355"
		end)
		if type(children) == "table" and #children > 0 then
			local child = assert(children[1].Parent)
			pcall(Pepsi.LeftClick, child.Position.X.Offset, child.Position.Y.Offset + 38) -- In the event you're afk and quests arent open.
		end
	end
end)


Pepsi.Splash("Checking Auto load", 6)
wait(0.1)

if type(shared.autoload) == "string" then
	loadsettings(shared.autoload)
	shared.autoload = nil
	wait(0.4)
	Pepsi.KeyPress(Enum.KeyCode.RightControl) -- Auto Hide
	wait(1)
	Pepsi.Hint("Press Right Control to show GUI", 4)
	wait(4)
	Pepsi.Hint("Press Right Control to show GUI", 4)
	wait(5)
	Pepsi.Hint("Press Right Control to show GUI", 4)
end

Pepsi.Splash("Defining Functions", 6)
wait(0.1)
local xvent = Instance.new("BindableEvent")
Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "BeePopUp", "TypeName", "GetPropertyChangedSignal", {namecall = true, "Text"}, "Connect", {namecall = true, function(...)
	xvent:Fire(...)
end})

local function validatefield(f, def)
	local fn = f
	if typeof(f) == "Field" then
		if f.Blacklisted then
			return def
		elseif not shared.PepsiSwarm.mods.god and f.Whitelisted then
			return def
		end
		fn = f.Name
	elseif typeof(f) == "Instance" and f:IsA("BasePart") then
		fn = Pepsi.Obj(f, "ShortName", "Value")
	end
	if type(fn) == "string" then
		local fe = shared.PepsiSwarm.fieldinfo[fn]
		if not fe or fe.Blacklisted or (not shared.PepsiSwarm.mods.god and fe.Whitelisted) then
			return def
		end
	end
	return f
end

local function closest(obj)
	local vec = Vector3.Table(obj)
	vec = Vector3.new(vec.X, 0, vec.Z)
	if typeof(vec) == "Vector3" then
		local z = {}
		local d, t = math.huge, nil
		for _, v in pairs(shared.PepsiSwarm.pzones) do
			local n = Pepsi.Obj(v, "ShortName", "Value")
			if n and validatefield(n) then
				local zvec = Vector3.Table(v.Position)
				zvec = Vector3.new(zvec.X, 0, zvec.Z)
				if typeof(zvec) == "Vector3" then
					local dis = (vec - zvec).Magnitude
					if dis < d then
						d, t = dis, v
						Pepsi.Tick:Wait()
					end
				end
			end
		end
		return validatefield(t)
	end
end

local function getnpc(fast, dangers_only, distance)
	if shared.PepsiSwarm.mods.fireflies or shared.PepsiSwarm.mods.farmvb or shared.PepsiSwarm.mods.farmwb or shared.PepsiSwarm.mods.farmsb or shared.PepsiSwarm.mods.farmap then
		if (shared.PepsiSwarm.mods.farmmc or shared.PepsiSwarm.mods.farmcc or shared.PepsiSwarm.mods.farmsb or shared.PepsiSwarm.mods.farmvb or shared.PepsiSwarm.mods.farmwb) and #Monsters:GetChildren() > 0 then
			if shared.PepsiSwarm.mods.farmvb then
				for _, vic in ipairs(Monsters:GetChildren()) do
					if (shared.PepsiSwarm.mods.farmsb and (string.rawfind(vic.Name:lower(), "stick"))) then
						if not Pepsi.Obj(vic, "Immune", "Value") then
							local bee = Pepsi.GetPart(vic)
							if bee and (not distance or Pepsi.Dist(bee) <= distance) then
								if fast then
									return bee
								end
								return closest(bee), bee
							end
						end
					end
				end
			end
			if shared.PepsiSwarm.mods.farmcc or shared.PepsiSwarm.mods.farmmc or shared.PepsiSwarm.mods.farmsb or shared.PepsiSwarm.mods.farmvb or shared.PepsiSwarm.mods.farmwb then
				for _, stick in pairs(Pepsi.Obj({
					default = {}
					}, Particles, "GetChildren", {namecall = true})) do
					if (shared.PepsiSwarm.mods.farmsb and (string.rawfind(stick.Name:lower(), "stick") or string.rawfind(stick.Name:lower(), "pollenhealthbar"))) then
						if not Pepsi.Obj(stick, "Immune", "Value") then
							local bee = Pepsi.GetPart(stick)
							if bee and (not distance or Pepsi.Dist(bee) <= distance) then
								if fast then
									return bee
								end
								return closest(bee), bee
							end
						end
					end
				end
				for _, stick in ipairs(Monsters:GetChildren()) do
					if (shared.PepsiSwarm.mods.farmmc and string.rawfind(stick.Name, "Mondo")) or (shared.PepsiSwarm.mods.farmcc and string.rawfind(stick.Name, "Commando")) or (shared.PepsiSwarm.mods.farmwb and string.rawfind(stick.Name, "Windy")) or (shared.PepsiSwarm.mods.farmvb and string.rawfind(stick.Name, "Vicious")) or (shared.PepsiSwarm.mods.farmsb and (string.rawfind(stick.Name:lower(), "stick") or string.rawfind(stick.Name:lower(), "pollenhealthbar"))) then
						local bee = Pepsi.GetPart(stick)
						if bee and (not distance or Pepsi.Dist(bee) <= distance) then
							if fast then
								return bee
							end
							return closest(bee), bee
						end
					end
				end
				if not fast then
					local txt = Pepsi.Obj({
						default = "",
						dig = true
					}, Pepsi.Lp, "TargetValue", "Text") or ""
					local field = Pepsi.Obj(shared.PepsiSwarm.zones, string.sub(txt, 2 + tonumber(select(2, string.find(txt, "at", nil, true)) or #txt)))
					if field and not fast then
						local info = shared.PepsiSwarm.reversefield[field]
						--print(field, info)
						if not fast and info then
							local v = validatefield(info)
							if not fast and v then
								return v
							end
						end
					end
				end
			end
			for _, stick in ipairs(Monsters:GetChildren()) do
				if (shared.PepsiSwarm.mods.farmap and string.rawfind(stick.Name:lower(), "aphid")) or (shared.PepsiSwarm.mods.farmsb and string.rawfind(stick.Name:lower(), "stick") and not Pepsi.Obj(stick, "Immune", "Value")) then
					local bee = Pepsi.Obj(stick:FindFirstChildOfClass("Humanoid", true), "RootPart") or Pepsi.GetPart(stick)
					if bee and (not distance or Pepsi.Dist(bee) <= distance) then
						if fast then
							return bee
						end
						return closest(bee), bee
					end
				end
			end
		end
		if Thorns and shared.PepsiSwarm.mods.farmvb then
			if next(Thorns:GetChildren()) then
				local bee = Thorns:GetChildren()[0x1]
				if bee and (not distance or Pepsi.Dist(bee) <= distance) then
					if fast then
						return bee
					end
					return closest(bee), bee
				end
			end
		end
		local bees = workspace:FindFirstChild("NPCBees")
		if bees then
			for _, bee in pairs(bees:GetChildren()) do
				if typeof(bee) == "Instance" and (not distance or Pepsi.Dist(bee) <= distance) then
					if shared.PepsiSwarm.mods.farmwb and string.rawfind(bee.Name, "Windy") then
						if fast then
							return bee
						end
						return closest(bee), bee
					elseif shared.PepsiSwarm.mods.farmvb and string.rawfind(bee.Name, "Vicious") then
						if fast then
							return bee
						end
						local fn = Pepsi.Obj(closest(bee), "ShortName", "Value")
						if validatefield(fn) and shared.PepsiSwarm.fieldinfo[fn] and shared.PepsiSwarm.fieldinfo[fn].Blacklisted then
							return nil, bee
						end
						return closest(bee), bee
					elseif not dangers_only and shared.PepsiSwarm.mods.fireflies and (bee.Name == "Firefly" and bee.Velocity.Magnitude < 1.5) then -- Firefly has landed.
						local f = Pepsi.Obj(closest(bee), "Position", "Y")
						if f then
							for k, v in pairs(table.filterfunc(bees:GetChildren(), function(b)
								return typeof(b) == "Instance" and (b.Name == "Firefly" and b:IsA("BasePart"))
							end)) do
								if math.abs(v.Position.Y - f) < 2 then
									if fast then
										return v
									end
									return closest(v), v
								end
							end
							if fast then
								return bee
							end
							return closest(bee), bee
						end
					end
				end
				sleep()
			end
		end
	end
end

local function getgoodestfield(best, no_external)
	local special = false
	if best and (shared.PepsiSwarm.mods.sprouts or shared.PepsiSwarm.mods.farmvb or shared.PepsiSwarm.mods.farmwb or shared.PepsiSwarm.mods.farmsb or shared.PepsiSwarm.mods.fireflies) then
		local spot = shared.PepsiSwarm.mods.sprouts and Pepsi.Obj(Particles, "Folder2", "Spotlight")
		local f, npc = getnpc()
		f = validatefield(f)
		if not f or not npc then
			if shared.PepsiSwarm.mods.farmsb or shared.PepsiSwarm.mods.farmap then
				for _, stick in ipairs(Monsters:GetChildren()) do
					if (shared.PepsiSwarm.mods.farmap and string.rawfind(stick.Name:lower(), "aphid")) or (shared.PepsiSwarm.mods.farmsb and string.rawfind(stick.Name:lower(), "stick") and not Pepsi.Obj(stick, "Immune", "Value")) then
						npc = Pepsi.GetPart(stick)
						if npc then
							f = validatefield(closest(npc))
							special = true
							break
						end
					end
				end
				if not f or not npc then -- Cloudy judgement. Heh. 'Cloudy' for wind bee.
					special = false
					local bees = table.add(workspace:FindFirstChild("NPCBees"):GetChildren(), Particles:GetChildren())
					if #bees > 0 then
						for _, bee in pairs(bees) do
							if typeof(bee) == "Instance" and bee:IsA("BasePart") then
								if shared.PepsiSwarm.mods.farmwb and string.rawfind(bee.Name, "Windy") then
									npc = bee
									f = validatefield(closest(bee))
									special = true
									break
								elseif shared.PepsiSwarm.mods.farmvb and string.rawfind(bee.Name, "Vicious") then
									npc = bee
									f = closest(bee)
									special = true
									break
								elseif shared.PepsiSwarm.mods.fireflies and (bee.Name == "Firefly" and bee.Velocity.Magnitude < 1.5) then -- Firefly has landed.
									f = validatefield(closest(bee))
									local fn = Pepsi.Obj(f, "Position", "Y")
									if fn then
										for _, v in pairs(table.filterfunc(bees, function(b)
											return typeof(b) == "Instance" and b.Name == "Firefly" and b:IsA("BasePart")
										end)) do
											if math.abs(v.Position.Y - fn) < 2 then
												npc = v
											end
										end
									end
									special = true
									break
								end
							end
							sleep()
						end
					end
				end
			end
		end
		if #shared.PepsiSwarm.interests > 0 then
			table.sort(shared.PepsiSwarm.interests, function(a, b)
				return a[2] < b[2]
			end)
			local data = rawget(shared.PepsiSwarm.interests, 1)
			if data then
				local field, last, custom_time = unpack(data)
				if type(field) == "string" and "number" == type(last) and time() - last < tonumber(custom_time or 45) then
					local f = validatefield(rawget(shared.PepsiSwarm.fieldinfo, field))
					if f then
						nohunt = true
					end
					return f, nil, true
				else
					table.remove(shared.PepsiSwarm.interests, 1)
					if type(field) == "string" then
						rawset(shared.PepsiSwarm.interests, field, nil)
					end
					if nohunt then
						nohunt = false
					end
				end
			else
				shared.PepsiSwarm.interests = {}
				if nohunt then
					nohunt, hunting = false, false
				end
			end
		elseif validatefield(f) then
			local n = Pepsi.Obj(f, "ShortName", "Value")
			if type(n) == "string" and typeof(shared.PepsiSwarm.fieldinfo[n]) == "Field" then
				if not shared.PepsiSwarm.interests[n] or (type(rawget(shared.PepsiSwarm.interests, n)) == "number" and time() - rawget(shared.PepsiSwarm.interests, n) > 8) then
					table.insert(shared.PepsiSwarm.interests, {n, time(), 8})
				end
				shared.PepsiSwarm.interests[n] = time()
				return validatefield(shared.PepsiSwarm.fieldinfo[n]), npc, special
			end
		elseif spot then
			spot.Transparency = 0.85 -- Sometimes it's invisible because Onett doesnt like server hoppers
			spot.LocalTransparencyModifier = 0
			assert(shared.PepsiSwarm.pzones, "Zones missing!")
			local field = closest(spot)
			if field then
				local n = Pepsi.Obj(field, "ShortName", "Value")
				if type(n) == "string" and typeof(shared.PepsiSwarm.fieldinfo[n]) == "Field" then
					if not shared.PepsiSwarm.interests[n] or (type(rawget(shared.PepsiSwarm.interests, n)) == "number" and time() - rawget(shared.PepsiSwarm.interests, n) > 45) then
						table.insert(shared.PepsiSwarm.interests, {n, time(), 45})
					end
					shared.PepsiSwarm.interests[n] = time()
					return validatefield(shared.PepsiSwarm.fieldinfo[n]), nil, special
				end
			end
		else
			shared.PepsiSwarm.interests = {}
		end
	end
	if best and shared.PepsiSwarm.mods.sq then
		local fn = getquestfield(true)
		if validatefield(fn) and shared.PepsiSwarm.fieldinfo[fn] then
			return ((typeof(fn) == "Field" and fn) or shared.PepsiSwarm.fieldinfo[fn]), nil, special
		end
	end
	if no_external then
		return
	end
	local zboost = {}
	local cboost = { -- Hopefully onett doesnt add more colors.
		Red = 0,
		Blue = 0,
		White = 0
	}
	--local pb = Pepsi.Ressert(rawget(getstats("Modifiers", 20), "PollenBonus"), "Missing Pollen Bonus!", nil, {}) or {}
	local mods = getstats("Modifiers", 20) or {}
	if type(mods) ~= "table" then
		mods = {}
	end
	local pb = rawget(mods, "PollenBonus") or {}
	if type(pb) ~= "table" then
		Pepsi.Error("PollenBoost is not a table! It's a " .. typeof(pb))
		pb = {}
	end
	for k, v in pairs(pb) do
		local boost
		if v.Mods then
			if v.Params then
				if v.Params.Color then
					boost = v.Params.Color
				elseif v.Params.Zone then
					boost = Pepsi.Obj(workspace, "FlowerZones", v.Params.Zone, "ShortName", "Value")
				end
			else
				boost = nil
			end
			if boost then
				local val = 0
				local mul = 1
				for id, data in pairs(v.Mods) do
					local va, du = data.Value, data.Dur
					if not data.Dur or tonumber(data.Dur or 0) > 60 then
						val = val + va
					end
				end
				if cboost[boost] then
					cboost[boost] = cboost[boost] + val
				else
					zboost[boost] = val + tonumber(zboost[boost] or 0)
				end
			end
		end
		sleep()
	end
	for k, v in pairs(cboost) do
		cboost[k] = v * 100 + 100
	end
	for k, v in pairs(zboost) do
		zboost[k] = v + 1
	end
	local b, r, w = cboost.Blue, cboost.Red, cboost.White
	local ninfo = {}
	for _, field in pairs(shared.PepsiSwarm.fieldinfo) do
		if typeof(field) == "Field" and validatefield(field) then
			local fboost = zboost[field.Name]
			local colors = field.Colors
			local nb, nr, nw = b * colors.Blue, r * colors.Red, w * colors.White
--			print(field.Name, tonumber((nb + nr + nw) * tonumber(fboost or 1))) -- Debug Info
			table.insert(ninfo, {field, ((nb + nr + nw) * tonumber(fboost or 1)), fboost, (nb + nr + nw), nb, nr, nw, field.ColorFlowers.Total})
		end
		sleep()
	end
	shared.zscores = zboost
	shared.cscores = cboost
	table.sort(ninfo, function(a, b)
		return a[2] > b[2]
	end)
	if best then
		return ninfo[1][1]
	end
	return ninfo, nil, special
end
shared.PepsiSwarm.getgoodestfield = getgoodestfield

local function verifyreq(door)
	Pepsi.Arg(door, {"Instance", "number"}, 1, "verifyreq")
	if typeof(door) == "Instance" and door:IsA("BasePart") then
		return door.BrickColor.Name == "Lime green"
	elseif type(door) == "number" and #getstats("DiscoveredBees", 0x80) >= door then
		return true
	end
	return false
end
local function getdirections(vec, startfrom) -- Lets use the cannons and shortcuts to save travel distance.
	Pepsi.Arg(vec, {"CFrame", "Vector3"}, 1, "getdirections")
	Pepsi.Arg(startfrom, {"CFrame", "Vector3", "nil"}, 2, "getdirections")
	vec = Pepsi.ToVector3(vec)
	startfrom = Pepsi.ToVector3(startfrom or Pepsi.Torso())
	local c = Pepsi.Char()
	if not c or Pepsi.Health() <= 0 then
		return
	end
	if Pepsi.Dist(vec, startfrom) < 200 then
		return vec
	end
	local shorts = {
		["Red Cannon"] = {
			verifyreq(25),
			Vector3.new(-240, 14, 345),
			Vector3.new(77, 181, -165)
		},
		["Yellow Cannon"] = {
			verifyreq(12),
			Vector3.new(266, 106, -24),
			Vector3.new(-114, 2, 271)
		},
		["Blue Cannon"] = {
			verifyreq(16),
			Vector3.new(-286, 70, 22),
			Vector3.new(92, 26, 147)
		},
		["Red Portal"] = {
			verifyreq(Pepsi.Obj(workspace, "Gates", "Red HQ Gate", "Door")),
			Vector3.new(-142, 27, 208),
			Vector3.new(314, 134, 20)
		},
		["Blue Portal"] = {
			verifyreq(Pepsi.Obj(workspace, "Gates", "Blue HQ Gate", "Door")),
			Vector3.new(324, 5, 111),
			Vector3.new(-282, 18, 380)
		},
	}
	local origin_path = Pepsi.Path(startfrom, vec)
	local origin_dist = Pepsi.RouteDist(Pepsi.FromWaypoints(origin_path))
	local toy = {vec, origin_dist}
	for short, data in pairs(shorts) do
		if type(data) == "table" and table.remove(data, 1) then
			local dest = table.remove(data, #data)
			local start = table.remove(data, #data)
			local pathfromhere = Pepsi.Path(startfrom, start)
			local pathfromshort = Pepsi.Path(dest, vec)
			if #pathfromhere > 0 and #pathfromshort > 0 then
				local dist = Pepsi.RouteDist(Pepsi.FromWaypoints(pathfromhere)) + Pepsi.RouteDist(Pepsi.FromWaypoints(pathfromshort))
				if dist < toy[2] and origin_dist - dist > 40 then
					toy = {start, dist, short, dest}
				end
			end
		end
		sleep(1)
	end
	return unpack(toy)
end
local function takemeto(vec, ov)
	if hunting or shared.PepsiSwarm.panic or not vec or not shared.PepsiSwarm.allowfarm or (not shared.PepsiSwarm.maytp and not ov) then
		return
	end
	local typ = typeof(vec)
	if typ ~= "Instance" and typ ~= "Vector3" and typ ~= "CFrame" then
		Pepsi.Arg(vec, {"Instance", "Vector3", "CFrame"}, 1, "takemeto")
	end
	vec = Pepsi.ToVector3(vec)
	if typeof(vec) ~= "Vector3" then
		Pepsi.Arg(vec, "Vector3", 1, "takemeto")
	end
	if not shared.PepsiSwarm.mods.god and shared.PepsiSwarm.mods.fleehp and Pepsi.Health(3) < tonumber(shared.PepsiSwarm.values.tplow or 15) then
		return
	end
	if not shared.PepsiSwarm.panic and shared.PepsiSwarm.mods.walking and (shared.PepsiSwarm.mods.god or not shared.PepsiSwarm.mods.fleehp or Pepsi.Health(3) > tonumber(shared.PepsiSwarm.values.tplow or 15)) then -- Ugh, damnit.
		local dest, dist, shortcut, toydest = getdirections(vec)
		if dest and not shared.PepsiSwarm.panic then
			local failcount, eta, t, s = 0, 0, math.nan, false
			if shortcut and not shared.PepsiSwarm.panic then
				eta, t = Pepsi.DistToTime(dest), time()
				s = Pepsi.Navigate(dest, nil, false, true, 10)
				if not s and not shared.PepsiSwarm.panic then
					failcount = 1 + failcount
					--print("Stuck")
					if not shared.PepsiSwarm.panic and shared.PepsiSwarm.mods.stucktp and failcount > tonumber(shared.PepsiSwarm.values.stuckcount or 10) then
						--print("Teleported")
						Pepsi.WaitForChar():MoveTo(Pepsi.ToVector3(dest))
					elseif failcount > tonumber(shared.PepsiSwarm.values.stuckcount or 10) * 2 and not shared.PepsiSwarm.mods.stucktp then
						Pepsi.State(15) -- A noble sacrifice
					elseif Pepsi.Health() > 0 then
						local h = Pepsi.Human()
						h.Jump = true
						delay(0x1 / 0xA, function()
							h.Jump = true
						end)
					end
				end
				if s and not shared.PepsiSwarm.panic then
					wait(1)
					local d = Pepsi.Pos()
					while Pepsi.Dist(d) < 50 do
						Pepsi.KeyPress(Enum.KeyCode.E)
						wait(0.1)
					end
					local t = time()
					while Pepsi.Dist(toydest) > 80 or time() - t > 8 do
						wait(0.6)
					end
					s = Pepsi.Navigate(vec, nil, false, true, 10)
					if not s and shared.PepsiSwarm.mods.stucktp and not shared.PepsiSwarm.panic then
						Pepsi.WaitForChar():MoveTo(Pepsi.ToVector3(vec))
					end
				end
			elseif not shared.PepsiSwarm.panic then
				eta, t = Pepsi.DistToTime(dest), time()
				s = Pepsi.Navigate(dest, nil, false, true, 10)
				if not s and shared.PepsiSwarm.mods.stucktp and not shared.PepsiSwarm.panic then
					Pepsi.WaitForChar():MoveTo(Pepsi.ToVector3(dest))
				end
			end
			return s
		end
	elseif not shared.PepsiSwarm.panic then -- God of Movement
		local t = Pepsi.WaitForChar() and Pepsi.Torso()
		if t then
			tp(vec)
			return true -- Magically skipped 10 seconds of walking. Genius!
		end
	end
	return false -- Oh noes!
end

local function getbees(skip_mute)
	local hc = getstats("Honeycomb", (skip_mute and 5) or 0x14)
	if not hc then
		return {}
	end
	local bees = {}
	for x, collum in pairs(hc) do
		for y, bee in pairs(collum) do
			bee.Cell = {
				x = string.num(x),
				y = string.num(y)
			}
			if not skip_mute or not bee.Mutas or not next(bee.Mutas) then
				table.insert(bees, bee)
			end
			sleep(1)
		end
	end
	return table.sort(bees, function(a, b)
		return a.Bond < b.Bond
	end) or {}
end
shared.PepsiSwarm.getbees = getbees
local function feedbees(num)
	num = tonumber(num or 1) or 1
	if shared.PepsiSwarm.mods.feeding then
		local feeder = shared.PepsiSwarm.values.feeder
		if feeder == "Auto" or feeder == "Favorite" then
			local qty = 0
			local items = getstats("Eggs", 30)
			for _, item in ipairs({
				"Blueberry",
				"Pineapple",
				"Strawberry",
				"SunflowerSeed",
				"Treat",
				"MoonCharm",
				"Bitterberry",
				"Neonberry"
			}) do
				if items[item] > qty then
					feeder, qty = item, items[item]
				end
			end
		end
		local bees = getbees(shared.PepsiSwarm.values.feedingmute and shared.PepsiSwarm.values.feeder == "Bitterberry")
		for b = 1, num do
			local bee = table.remove(bees, 1)
			feeder = (shared.PepsiSwarm.values.feeder == "Favorite" and Pepsi.Obj(shared.PepsiSwarm.beeinfo, bee.Type, "Tastes", "Treats", "Likes", 1)) or feeder
			if bee and bee.Cell and bee.Cell.x and bee.Cell.y then
				ConstructHiveCellFromEgg:InvokeServer(bee.Cell.x, bee.Cell.y, tostring(feeder or shared.PepsiSwarm.values.feeder or "Treat"), tonumber(shared.PepsiSwarm.values.feedamount or 1))
			end
			sleep(1)
		end
	end
end
shared.PepsiSwarm.feedbees = feedbees
local function getnpcs()
	local quests = {
		--"A Beesmas Miracle", "A Breath Of Blue", "A Need For Haste", "A Pinch Of Magic", "A Time For Giving", "A Time For Sharing", "Activating Abilities", "All I Want For Beesmas Is Goo", "Ant Arrival", "Army Ant Assault", "Artillery Lessons: Blue Cannon", "Artillery Lessons: Slingshot", "Artillery Lessons: Yellow Cannon", "Azure Adventure", "B&B", "B.B.M.'s Ornament", "BEElieve", "Bamboo Boogie", "Battle For Boots", "Bean Bug Beatdown", "Bean Bug Blackout", "Bean Bug Busser", "Bean Bugs And Boosts", "Beans Becoming", "Bear Botany", "Bear Without Despair", "Beating Beetles on Beesmas", "Beautiful Beesmas Lights", "Beautify The Beesmas Tree", "Beauty Duty", "Bee A Star", "Bee Cub Workshop 1", "Bee Cub Workshop 2", "Bee Cub Workshop 3", "Bee Cub Workshop 4", "Bee Cub Workshop 5", "Bee-liz Honey-dad", "Beesmas Beatdown", "Beesmas Begins", "Beesmas Blitz", "Beesmas Tree Hunt", "Beesperanto", "Beeternity", "Beetle Battle", "Beetle Battle 2", "Beetle Battle 3", "Begin The Goo Invasion", "Benefits Of Technology", "Binging On Blueberries", "Biology Study", "Black Bear's Ornament", "Black Bear, Why?", "Black Bear: Blue Flower Bliss", "Black Bear: Fun In The Sunflowers", "Black Bear: Just White", "Black Bear: Mid-Level Mission", "Black Bear: Mission For Mushrooms", "Black Bear: Play In The Pumpkins", "Black Bear: Plundering Pineapples", "Black Bear: Stroll In The Strawberries", "Blissfully Blue", "Blue Beesmas", "Blue Clubhouse Initiation", "Blue Mushrooms", "Blue Mushrooms 2", "Blue Pineapples", "Blue Review", "Bombs, Blueberries, and Bean Bugs", "Bonding With Bees", "Boost Brilliance", "Boot Lootin", "Bouncing Around Biomes", "Breaking Down Badges", "Breaking In On Beesmas", "Bring Back The Boosts", "Bring On The Bombs", "Brown Bear's Ornament", "Brown Bear: Bamboo Field 4", "Brown Bear: Clover Field", "Brown Bear: Dandelion Field 5", "Brown Bear: Pumpkin Patch 5", "Brown Bear: Strawberry Field 3", "Brown Bear: Strawberry Field 5", "Brown Bear: Sunflower Field 2", "Bucko Bee's Ornament", "Bucko Bee: Abilities", "Bucko Bee: Bamboo", "Bucko Bee: Bombard", "Bucko Bee: Booster", "Bucko Bee: Clean-up", "Bucko Bee: Extraction", "Bucko Bee: Flowers", "Bucko Bee: Goo", "Bucko Bee: Medley", "Bucko Bee: Picnic", "Bucko Bee: Pine Trees", "Bucko Bee: Pollen", "Bucko Bee: Scavenge", "Bucko Bee: Skirmish", "Bucko Bee: Tango", "Bucko Bee: Tour", "Candy Conquest", "Chemical Analysis", "Cobweb Sweeper", "Cobweb Sweeper 2", "Collecting Cliffside", "Colorful Conquest", "Colorful Conquest 2", "Colorful Craving", "Colorless Collection", "Colossal Combat", "Colossal Combat 2", "Costs Of Computation", "Dancing With Stick Bug", "Dandelion Deed", "Defensive Adaptions", "Do You Bee-lieve In Magic?", "Dreams Of Being A Bee", "Eager Exterminator", "Echoing Call", "Egg Hunt: Brown Bear", "Egg Hunt: Bucko Bee", "Egg Hunt: Mother Bear", "Egg Hunt: Polar Bear", "Egg Hunt: Riley Bee", "Egg Hunt: Stick Bug", "Eight To Eight", "Epistemological Endeavor", "Fat Stacks", "Festive Bee Workshop 1", "Festive Bee Workshop 2", "Festive Bee Workshop 3", "Festive Fruit Salad", "Final Showdown", "Fire Fighter", "Focus Feature", "Forcefully Friendly", "Four Front Assault", "GOO Away, Bugs", "Get Red-y", "Glory Of Goo", "Goo-ing Goo-mmando", "High Altitude", "Hive Minded Bias", "Honey Bee's Honey Hunt", "Honey day Harvest", "Into The Blue", "Jolly Labor Of Love", "Joy To The Bees", "Kingdom Collection", "Ladybug Bonker", "Leaper Lickin'", "Leisure Loot", "Lesson on Ladybugs", "Light Up The Night", "Limits of Language", "Look At those Links", "Look In The Leaves", "Lots-o-pollen", "Lucky Landscaping", "Make It Hasty", "Mantis Massacre", "Mark Mechanics", "Meditating On Phenomenon", "Memories of Memories", "Meticulously Crafted", "Mother Bear's Midterm", "Mother Bear's Ornament", "Mountain Meandering", "Mushroom Measurement Monotony", "Nature's Lessons", "Naughty Or Nice", "Non-Stop Action", "On Your Marks", "One Stop On The Tip Top", "Onett's Ornament", "Ongoing Progress", "Optimizing Abilities", "Out-Questing Questions", "Outrageous Onslaught", "Own Bees", "Panda Bear's Ornament", "Patient Plundering", "Patterns and Probability", "Peace Through Goo-nity", "Picking Out Pineapples", "Piecewise Invasion", "Pineapple Picking", "Pink Pineapples", "Pleasant Pastimes", "Polar Bear's Ornament", "Polar Bear: Aromatic Pie", "Polar Bear: Beetle Brew", "Polar Bear: Candied Beetles", "Polar Bear: Exotic Salad", "Polar Bear: Extreme Stir-Fry", "Polar Bear: High Protein Bug Bar", "Polar Bear: Ladybug Poppers", "Polar Bear: Mantis Meatballs", "Polar Bear: Prickly Pears", "Polar Bear: Pumpkin Pie", "Polar Bear: Scorpion Salad", "Polar Bear: Spiced Kebab", "Polar Bear: Spider Pot-Pie", "Polar Bear: Spooky Stew", "Polar Bear: Strawberry Skewers", "Polar Bear: Teriyaki Jerky", "Polar Bear: Thick Smoothie", "Polar Bear: Trail Mix", "Pollen Fetcher", "Pollen Fetcher 2", "Pollen Fetcher 3", "Pollen Fetcher 4", "Pollen Fetcher 5", "Pollenpalooza", "Pollination Practice", "Preliminary Research", "Presents For Polar Bear", "Pretty Pumpkins", "Proving The Hypothesis", "Pumpkin Plower", "Pumpkins, Please!", "QR Quest", "Quality Time With Polar Bear", "Quest Of Legends", "Quick Feet, Sharp Mind", "Ready For Infrared", "Red + Blue = Gold", "Red / Blue Duality", "Red Clubhouse Initiation", "Red Request", "Red Request 2", "Rhino Rumble", "Rhino Wrecking", "Rhubarb That Could Have Been", "Riley Bee's Ornament", "Riley Bee: Abilities", "Riley Bee: Booster", "Riley Bee: Clean-up", "Riley Bee: Extraction", "Riley Bee: Goo", "Riley Bee: Medley", "Riley Bee: Mushrooms", "Riley Bee: Picnic", "Riley Bee: Pollen", "Riley Bee: Rampage", "Riley Bee: Roses", "Riley Bee: Scavenge", "Riley Bee: Skirmish", "Riley Bee: Strawberries", "Riley Bee: Tango", "Riley Bee: Tour", "Rojo-A-Go-Go", "Rose Request", "Roses And Weeds", "Rouge Round-up", "Royal Jelly Jamboree", "Royal Rumble", "Rules Of The Road", "Rules of The Road", "Science Bear's Ornament", "Search For A Sunflower Seed", "Search For Strawberries", "Search For Sunflower Seeds", "Search For The White Clover", "Seven To Seven", "Show Me The Honey", "Sights On The Stars", "Skirmish with Scorpions", "Slay Bells Jingling", "Smart, Not Hard", "Smorgasbord", "Snag A Belt Bag", "Solo On The Stump", "Space Oblivion", "Spider Slayer", "Spider Slayer 2", "Spider Study", "Spirit Bear's Ornament", "Spirit Spree", "Spirit of Springtime", "Spirit's Starter", "Spring Out Of The Mountain", "Sprouts For Sun Bear's Sanity", "Star Journey 1", "Star Journey 2", "Star Journey 3", "Star Journey 4", "Star Journey 5", "Stick Bug's Ornament", "Stickier Than Spider Webs", "Sticking To The Staples", "Stomping Grounds", "Strawberry Field Forever", "Subsidized Agriculture", "Sun Bear Spectacular", "Sun Bear's Abili-Tour", "Sun Bear's Scavenger Hunt", "Sunflower Start", "Sway Away", "Tasting The Sky", "Testing Teamwork", "The Beesmas Rush", "The Family Final", "The First Offering", "The Gifts Of Life", "The Gist Of Jellies", "The Mondo Mission", "The Night Before Beesmas", "The Power Of Information", "The REAL Final Showdown", "The Sky Over The Stump", "The Ways Of The Winds / The Wind And Its Way", "Thinking About Those Links", "Tickle The Wind", "Token Teaser", "Token Treck", "Total Focus", "Total Gummification", "Treat Tutorial", "Ultimate Ant Annihilation 1", "Ultimate Ant Annihilation 2", "Ultimate Ant Annihilation 3", "Ultimate Ant Annihilation 4", "Ultimate Ant Annihilation 5", "Unsilent Night", "Variety Fetcher", "Vicious Bee Begone", "Walk Through The Woods", "Weed Wacker", "Weed Wacker 2", "Werewolf Hunter", "What About Sprouts", "Whispy and Crispy", "White As Snow", "White Beesmas", "White Clover Redux", "White Pollen Wrangler", "Winged Wack Attack", "Witness Grandeur"
	}
	local bl = {
		"Stick Bug",
		"Ant Challenge Info",
		"Wind Shrine"
	}
	local npcs = table.add({
		"Honey Bee",
		"Bee Bear 2",
		"Science Bear",
		"Sun Bear",
		"Gummy Bear"
	}, table.negate(table.keys(getstats("NPCs", 0x80)), bl))
	if dbg and dbg.ums and dbg.gus then
		npcs, quests = table.dictionary(npcs), table.dictionary(quests)
		local x, losers = pcall(function()
			return dbg.gus(Pepsi.require(Pepsi.Obj(ReplicatedStorage, "NPCs")).Get)[1]
		end)
		if x and losers then
			for loser, data in pairs(losers) do
				npcs[loser] = true
				if shared["I know what I'm doing!"] == "confirm" then
					local eventdata = data.OverrideEvents
					if eventdata then
						for _, questdata in pairs(eventdata) do
							local q = questdata.Quest
							if type(q) == "string" then
								quests[q] = true
							end
						end
					end
				end
			end
		end
	else
		return quests, npcs
	end
	return ({} or {} or quests or table.keys({} or quests)), table.keys(npcs)
end
shared.PepsiSwarm.getnpcs = getnpcs
local function questman(force)
	if not getconnections then
		return
	elseif shared.PepsiSwarm.mods.aq or shared.PepsiSwarm.mods.cq or force then
		local sg = shared.PepsiSwarm.datastuffs.sg or (Pepsi.Lp or Pepsi.Me()):WaitForChild("PlayerGui"):FindFirstChild("ScreenGui")
		shared.PepsiSwarm.datastuffs.sg = shared.PepsiSwarm.datastuffs.sg or sg
		if sg then
			local button = shared.PepsiSwarm.datastuffs.button or Pepsi.Obj(sg or shared.PepsiSwarm.datastuffs.sg, "ActivateButton")
			shared.PepsiSwarm.datastuffs.button = shared.PepsiSwarm.datastuffs.button or button
			local o = shared.PepsiSwarm.datastuffs.o or Pepsi.Obj(getconnections, {Pepsi.Obj(button, "MouseButton1Click")}, 1, "Function")
			shared.PepsiSwarm.datastuffs.o = shared.PepsiSwarm.datastuffs.o or o
			local f = shared.PepsiSwarm.datastuffs.f or Pepsi.Obj(getconnections, {Pepsi.Obj(sg or shared.PepsiSwarm.datastuffs.sg, "NPC", "ButtonOverlay", "MouseButton1Click")}, 1, "Function")
			shared.PepsiSwarm.datastuffs.f = shared.PepsiSwarm.datastuffs.f or f
			local npc = shared.PepsiSwarm.datastuffs.npc or Pepsi.Obj(sg or shared.PepsiSwarm.datastuffs.sg, "Parent", "Camera", "Controllers", "NPC", "ActiveNPC") 
			shared.PepsiSwarm.datastuffs.npc = shared.PepsiSwarm.datastuffs.npc or npc
			local npcm = shared.PepsiSwarm.datastuffs.npcm or workspace:FindFirstChild("NPCs")
			shared.PepsiSwarm.datastuffs.npcm = shared.PepsiSwarm.datastuffs.npcm or npcm
			if button and o and f and npc and npcm then
				if button.Visible and button.AbsolutePosition.Y < 0 then
					local mhum = Pepsi.Human()
					for _, v in ipairs(npcm:GetChildren()) do
						Pepsi.ecall(function()
							local p = v:FindFirstChild("Platform")
							local pl = p
							p = p and Pepsi.Obj(p, "AlertPos", "AlertGui", "ImageLabel")
							if p and p.ImageTransparency < 1 then
								shared.PepsiSwarm.maytp = false
								shared.PepsiSwarm.running = false
								npc.Value = v
								pcall(o)
								local op = pl.CFrame
								pcall(function()
									local tor = Pepsi.Torso()
									pl.LocalTransparencyModifier = 1
									pl.CanCollide = false
									pl.Position = tor.Position - Vector3.new(0, 4.1)
									local ti = time()
									while wait() and p and p.ImageTransparency < 1 and time() - ti < 6 do
										if mhum and mhum.Parent then
											mhum.WalkToPoint = mhum.RootPart.Position
										end
										npc.Value = v
										pcall(o)
										pl.LocalTransparencyModifier = 1
										pl.CanCollide = false
										pl.Position = tor.Position - Vector3.new(0, 4.1)
										for k = 1, 16 do
											if mhum and mhum.Parent then
												mhum.WalkToPoint = mhum.RootPart.Position
											end
											if k % 2 == 0 then
												if mhum and mhum.Parent then
													mhum.WalkToPoint = mhum.RootPart.Position
												end
												wait()
												pl.LocalTransparencyModifier = 1
												pl.CanCollide = false
												pl.Position = tor.Position - Vector3.new(0, 4.1)
											end
											npc.Value = v
											pcall(f)
										end
									end
								end)
								pl.CFrame = op
								pl.CanCollide = true
								pl.LocalTransparencyModifier = 0
								pcall(function()
									for k = 1, 16 do -- Just to be sure
										pcall(f)
										if mhum and mhum.Parent then
											mhum.WalkToPoint = mhum.RootPart.Position
										end
									end
								end)
								shared.PepsiSwarm.maytp = true
								shared.PepsiSwarm.running = true
								if not (button.Visible and button.AbsolutePosition.Y < 0) then
									for k = 1, 6 do
										if mhum and mhum.Parent then
											mhum.WalkToPoint = mhum.RootPart.Position
										end
										if not (button.Visible and button.AbsolutePosition.Y < 0) then
											pcall(function()
												for k = 1, 16 do
													pcall(f)
													wait()
												end
											end)
											wait(0.1)
										else
											break
										end
									end
								end
							end
						end)
						wait()
					end
				end
			elseif Pepsi.Lp.UserId == 818731954 then -- Debugging
				print(button, o, f, npc, npcm)
			end
		end
		--local manuals = shared.PepsiSwarm.quests
		--local losers = shared.PepsiSwarm.npcs
		--for _, loser in pairs(losers) do
		--	if shared.PepsiSwarm.mods.cq then
		--		CompleteQuestFromPool:FireServer(loser)
		--		CompleteQuest:FireServer(loser)
		--	end
		--	wait()
		--	if shared.PepsiSwarm.mods.aq then
		--		GiveQuestFromPool:FireServer(loser)
		--		GiveQuest:FireServer(loser)
		--	end
		--	wait()
		--end
		--local tab = getstats("Quests", 0x80)
		--if tab and shared.PepsiSwarm.mods.cq then
		--	local quests = tab.Active
		--	if type(quests) == "table" then
		--		for _, quest in pairs(quests) do
		--			if shared.PepsiSwarm.mods.cq and quest.Name then
		--				CompleteQuestFromPool:FireServer(quest.Name)
		--				CompleteQuest:FireServer(quest.Name)
		--			end
		--			wait()
		--		end
		--	end
		--end
		--if shared.PepsiSwarm.mods.aq and typeof(Quests) == "Instance" and #Quests:GetChildren() > 0 then
		--	for _, quest in pairs(Quests:GetChildren()) do
		--		if shared.PepsiSwarm.mods.aq and typeof(quest) == "Instance" and quest.Name then
		--			GiveQuestFromPool:FireServer(quest.Name)
		--			GiveQuest:FireServer(quest.Name)
		--		end
		--		wait()
		--	end
		--end
		--if shared.PepsiSwarm.mods.aq or shared.PepsiSwarm.mods.cq then
		--	for _, quest in pairs(manuals) do
		--		if shared.PepsiSwarm.mods.aq then
		--			GiveQuestFromPool:FireServer(quest)
		--			GiveQuest:FireServer(quest)
		--		end
		--		wait()
		--		if shared.PepsiSwarm.mods.cq then
		--			CompleteQuestFromPool:FireServer(quest)
		--			CompleteQuest:FireServer(quest)
		--		end
		--		wait()
		--	end
		--end
	end
end
shared.PepsiSwarm.questman = questman
local function getdis(ov)
	if not shared.PepsiSwarm.mods.dispense then
		return
	end
	assert(shared.PepsiSwarm.dis, "Dispenser list missing!")
	local times = getstats("ToyTimes", 0x1E)
	local wct = shared.PepsiSwarm.wc and rawget(times, "Wealth Clock") or time()
	local wcd = Pepsi.Obj(Toys, "Wealth Clock", "Cooldown")
	for _, v in pairs(shared.PepsiSwarm.dis) do
		local name = v[1]
		local cd = v[2]
		local t = times[name]
		if name ~= "Mythic Meteor Shower" and (ov or (name and type(cd) == "number" and type(t) == "number")) then
			if ov or (math.abs(tick() - t) >= cd and name ~= "Wealth Clock" or time() >= cd) then
				ToyEvent:FireServer(name)
				wait(0x1 / 0xA)
			end
		end
		sleep(1)
	end
end
shared.PepsiSwarm.getdis = getdis
local function validc(c)
	if shared.PepsiSwarm.showering then
		return
	end
	if not shared.PepsiSwarm.showering and c and typeof(c) == "Instance" and c:IsA("BasePart") and c.Transparency < 0.2 and c.Size.Y < 5 then
		local d = c:FindFirstChildOfClass("Decal")
		if d then
			local value = tonumber(tonumber(rawget(shared.PepsiSwarm.rares, tonumber((string.gsub(d.Texture, "%D", "")))) or 1) or 1)
			if not shared.PepsiSwarm.showering and value > 2 and shared.PepsiSwarm.getsuperrares then -- Super rare
				while not shared.PepsiSwarm.showering and sleep(1) and typeof(c) == "Instance" and c:IsA("BasePart") and c.Transparency < 0.2 and c.Size.Y < 5 do
					if not shared.PepsiSwarm.showering then
						tp(c)
					else
						return
					end
				end
			end
			return d and value > 0
		end
	end
end
shared.PepsiSwarm.validc = validc
local function tokins(d) -- Epic grammer :)
	d = d or math.huge
	if d <= 0 then
		d = math.huge
	end
	Pepsi.Arg(d, "number", 1, "tokins") -- How can you possibly fuck up a simple function?
	local tokenz, pause = {}, 0
	if not shared.PepsiSwarm.showering then
		for _, v in ipairs(Collectibles:GetChildren()) do
			if shared.PepsiSwarm.showering then
				break
			end
			if v:IsA("BasePart") and 0.2 >= v.Transparency and v.Size.Y < 5 and (d == math.huge or (Pepsi.Char() and Pepsi.Lp:DistanceFromCharacter(v.Position) <= d)) then
				table.insert(tokenz, v)
			end
			pause = 1 + pause
			if not shared.PepsiSwarm.mods.tpfast and pause > tonumber(shared.pause_limit or 35) then
				sleep()
				pause = 0
			end
		end
	end
	return tokenz
end

local function getpollen(fast)
	if fast then -- Aint nobody got time for nanoseconds...
		return tonumber(Pepsi.Obj({
			default = 1
		}, Pepsi.Lp, "CoreStats", "Pollen", "Value"))
	end
	local p, m, c = Pepsi.Obj({
		default = 1
	}, Pepsi.Lp, "CoreStats", "Pollen", "Value"), Pepsi.Obj({
		default = 1
	}, Pepsi.Lp, "CoreStats", "Capacity", "Value"), nil
	c = math.round(0x64 * tonumber(p / m))
	return tonumber(p), tonumber(m), tonumber(c), (((shared.PepsiSwarm.mods.earlyconvert and shared.PepsiSwarm.values.earlyconvert) or 100) <= c) or p >= m
end

local function nearestmob(dangers, max_dist)
	local bee = getnpc(true, dangers, max_dist)
	if bee then
		return bee
	end
	if typeof(Monsters) == "Instance" and #Monsters:GetChildren() > 0 then
		return Pepsi.Closest(table.filterfunc(Monsters:GetChildren(), function(mob)
				return Pepsi.WaitForChar() and typeof(mob) == "Instance" and not mob.Name:find("coconut", nil, true) and not mob.Name:find("snail", nil, true) and Pepsi.Obj(mob, "Target", "Value") == Pepsi.Char()
			end, true), {
			min = 0,
			max = 60
		})
	end
	return nil, {}
end

local function restate()
	local h = Pepsi.Human()
	if h and h:GetState() == 11 then
		h:ChangeState(10)
	end
end

local function convert()
	if shared.PepsiSwarm.mods.earlyconvert and 0 >= shared.PepsiSwarm.values.earlyconvert then
		return sleep()
	end
	Pepsi.WaitForChar()
	local pollen, max, cent, c = getpollen()
	if pollen > 1 and max > 1 and c and not shared.PepsiSwarm.panic then
		shared.PepsiSwarm.honey = true
		shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
		local inventory = getstats("Eggs", 10)
		if shared.PepsiSwarm.mods.instantconvert and inventory and not shared.PepsiSwarm.panic then
			shared.PepsiSwarm.honey = true
			local micros = tonumber(rawget(inventory, "Micro-Converter") or 0)
			local ap = tonumber(rawget(inventory, "AntPass") or 0) -- Kinda funny how ant challenge empties your container
			local t = tonumber(rawget(inventory, "Ticket") or 0)
			local text = Pepsi.Obj(Toys, "Ant Challenge", "TimeBoard", "Gui", "TextLabel", "GetPropertyChangedSignal", {"Text"})
			if micros < 15 and shared.PepsiSwarm.mods.icap and ap > 9 and (text and not Pepsi.WaitUntil(text, 1.8)) then -- Never cap it.
				shared.PepsiSwarm.honey = true
				ToyEvent:FireServer("Ant Challenge")
				wait(2)
				ToyEvent:FireServer("Tunnel Portal")
				for k = 1, 20 do
					shared.PepsiSwarm.honey = true
					local g = Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "RewardsPopUp")
					if g then
						g.Visible = false
					else
						break
					end
					wait(0.15)
				end
				return true
			elseif not shared.PepsiSwarm.mods.icfull and micros > 0 or micros > (shared.micro_full or 5) then -- Use micros first
				shared.PepsiSwarm.honey = true
				if time() - shared.PepsiSwarm.lastmicro > 3 then
					shared.PepsiSwarm.lastmicro = time()
					PlayerActivesCommand:FireServer({
						Name = "Micro-Converter"
					})
				end
				return wait(0.05) and true
			elseif shared.PepsiSwarm.mods.icap and (not shared.PepsiSwarm.mods.icfull and ap > 0 or ap > 9) and (text and not Pepsi.WaitUntil(text, 1.8)) then
				shared.PepsiSwarm.honey = true
				ToyEvent:FireServer("Ant Challenge")
				wait(2)
				ToyEvent:FireServer("Tunnel Portal")
				for k = 1, 20 do
					local g = Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "RewardsPopUp")
					if g then
						g.Visible = false
					else
						break
					end
					wait(0.15)
				end
				return true
			elseif t > 0 and shared.PepsiSwarm.mods.icticket then -- Damn, you need a larger container
				shared.PepsiSwarm.honey = true
				for _, converter in ipairs({
					"Instant Converter",
					"Instant Converter B",
					"Instant Converter C"
				}) do
					shared.PepsiSwarm.honey = true
					if not rawget(shared.PepsiSwarm.cooldowns, converter) then
						rawset(shared.PepsiSwarm.cooldowns, converter, true)
						ToyEvent:FireServer(converter)
						Pepsi.delay(0x393, rawset, shared.PepsiSwarm.cooldowns, converter, nil)
						return wait(3) and true
					end
					sleep(1)
				end
			end
		end
		shared.PepsiSwarm.honey = true
		local starttime = time()
		while not takemeto(shared.PepsiSwarm.home or Pepsi.Obj(Pepsi.Lp, "SpawnPos", "Value", "Position")) and not shared.PepsiSwarm.panic do
			shared.PepsiSwarm.honey = true
			sleep(1)
			if time() - starttime > 20 then
				Pepsi.WaitForChar():MoveTo(shared.PepsiSwarm.home)
			end
		end
		if shared.PepsiSwarm.panic then
			return
		end
		local op = getpollen(true)
		shared.PepsiSwarm.honey = true
		wait(2)
		shared.PepsiSwarm.honey = true
		PlayerHiveCommand:FireServer("ToggleHoneyMaking")
		shared.PepsiSwarm.honey = true
		local h, s = Pepsi.Human(), "Air"
		h:MoveTo(Pepsi.ToVector3(shared.PepsiSwarm.home))
		if Pepsi.Dist(shared.PepsiSwarm.home) > 25 and not shared.PepsiSwarm.panic then
			Pepsi.WaitForChar():MoveTo(shared.PepsiSwarm.home)
		end
		while wait(5) and getpollen(true) > 0 and not shared.PepsiSwarm.panic do
			shared.PepsiSwarm.honey = true
			h:MoveTo(shared.PepsiSwarm.home - Vector3.new(0, 4, 0))
			if time() - starttime > 150 then
				shared.PepsiSwarm.honey = true
				Pepsi.WaitForChar():MoveTo(shared.PepsiSwarm.home - Vector3.new(0, 3, 0))
			end
			if not shared.PepsiSwarm.panic and getpollen(true) >= op or rawequal(Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "ActivateButton", "TextBox", "Text"), "Make Honey") then
				shared.PepsiSwarm.honey = true
				Pepsi.WaitForChar():MoveTo(Pepsi.ToVector3(shared.PepsiSwarm.home) + Vector3.new(0, 0x1D, 0)) -- Cancel
				h, s = h or Pepsi.Human(), 0x700
				while s == 0x700 and Pepsi.Rs:Wait() and not shared.PepsiSwarm.panic do
					shared.PepsiSwarm.honey = true
					h.Changed:Wait()
					s = (h or Pepsi.Human()).FloorMaterial
					if time() - starttime > 240 then
						shared.PepsiSwarm.honey = true
						Pepsi.WaitForChar():MoveTo(shared.PepsiSwarm.home)
					end
				end -- We've landed.
				op = getpollen(true)
				shared.PepsiSwarm.honey = true
				wait(1.5)
				shared.PepsiSwarm.honey = true
				PlayerHiveCommand:FireServer("ToggleHoneyMaking")
				shared.PepsiSwarm.honey = true
			end
		end
		shared.PepsiSwarm.honey = true
		wait(6)
		shared.PepsiSwarm.honey = true
		return true
	else
		return true -- Proceed
	end
	return true == warn("Pollen convert, Fuck-up")
end
shared.PepsiSwarm.convert = convert
local function checkloot(leef)
	if shared.PepsiSwarm.showering then
		return
	end
	if (not shared.PepsiSwarm.mods.tpleef and not shared.PepsiSwarm.mods.tpspark) or shared.PepsiSwarm.showering or shared.PepsiSwarm.panic or shared.PepsiSwarm.honey then
		shared.PepsiSwarm.maytp = true
		hunting = false
		return
	end
	if hunting or nohunt then
		return -- Already working
	end
	hunting = true
	if not shared.PepsiSwarm.showering and Pepsi.WaitForChar() and leef and typeof(leef) == "Instance" and ((shared.PepsiSwarm.mods.tpleef and leef.Name == "LeafBurst" and not nohunt) or (not nohunt and leef.Name == "Sparkles" and shared.PepsiSwarm.mods.tpspark)) then
		local flower = leef and leef.Parent
		local h = Pepsi.Human()
		if flower and h and wait() then
			local ticke = time()
			local olpos = Pepsi.Pos()
			while Pepsi.Rs:Wait() and (time() - ticke) < 1.2 and flower and h and leef and not shared.PepsiSwarm.showering and not shared.PepsiSwarm.honey and hunting and not shared.PepsiSwarm.showering do
				h = Pepsi.Human()
				if flower and h and h.RootPart then
					tp(flower.Position + Vector3.new(0, 3, 0))
					Pepsi.Obj({
						dig = true
					}, workspace, "NPCs", "Onett", "ClickEvent", "FireServer", {namecall = true})
				end
			end
			wait(0.1)
			shared.PepsiSwarm.old = olpos
			local t = Pepsi.Torso()
			if t and (olpos or shared.PepsiSwarm.old) and not shared.PepsiSwarm.showering then
				t.CFrame = Pepsi.ToCFrame(olpos or shared.PepsiSwarm.old)
			end
		end
	end
	local t = Pepsi.Torso()
	if t and shared.PepsiSwarm.old and not shared.PepsiSwarm.showering then
		tp(Pepsi.ToVector3(shared.PepsiSwarm.old))
	end
	shared.PepsiSwarm.maytp = true
	hunting = false
end

local function gettok(d)
	if shared.PepsiSwarm.showering then
		return
	end
	d = tonumber(tonumber(d or math.huge) or math.huge)
	local char = Pepsi.Lp.Character
	if char then
		for _, v in ipairs(Collectibles:GetChildren()) do
			if shared.PepsiSwarm.showering then
				return
			elseif char and v:IsA("BasePart") and 0.2 >= v.Transparency and v.Size.Y < 5 and validc(v) and (d <= 0 or d >= math.huge or Pepsi.Lp:DistanceFromCharacter(v.Position) <= d) then
				return v
			elseif not char then
				return
			end
		end
	end
end
local function processrares(h)
	if shared.PepsiSwarm.showering then
		return
	end
	if not shared.PepsiSwarm.mods.tprare then
		return gettok(h)
	end
	for v, raretype in pairs(shared.PepsiSwarm.rares) do
		if raretype >= 2 then
			local t = Pepsi.GetFirstTagged(tostring(v))
			if not shared.PepsiSwarm.showering and shared.PepsiSwarm.mods.tprare and typeof(t) == "Instance" and t:IsA("BasePart") and t.Transparency < 0.2 and t.Size.Y < 5 and validc(t) then
				return (t or gettok(h)), t ~= nil
			end
		end
	end
	return gettok(h)
end
local function collecttokins(h)
	if shared.PepsiSwarm.showering then
		return
	end
	if h <= 0 then
		h = math.huge
	end
	local t, r = processrares(h)
	if (shared.PepsiSwarm.mods.tokens or shared.PepsiSwarm.mods.tprare) and not shared.PepsiSwarm.showering and shared.PepsiSwarm.maytp and typeof(t) == "Instance" and t:IsA("BasePart") and t.Transparency < 0.2 and t.Size.Y < 5 and validc(t) then
		if r then
			shared.PepsiSwarm.maytp = false
		end
		if shared.PepsiSwarm.mods.walking then
			local c = Pepsi.Human()
			local v = c and c.RootPart
			while wait() and c and v and t and t.Transparency < 0.2 and t.Size.Y < 5 do
				if shared.PepsiSwarm.showering then
					return
				end
				takemeto(t) -- Please... kill me
			end
		else
			local c = Pepsi.Human()
			local v = c and c.RootPart
			while wait() and c and v and t and t.Transparency < 0.2 and t.Size.Y < 5 and (not r and not shared.PepsiSwarm.maytp) do
				if shared.PepsiSwarm.showering then
					return
				end
				v.CFrame = CFrame.KeepAngles(t.Position, v)
			end
		end
		shared.PepsiSwarm.maytp = true
	end
end
local function ckcoin(c)
	if shared.PepsiSwarm.showering then
		return
	end
	pcall(function()
		local d = string.num(c:FindFirstChildOfClass("Decal").Texture)
		if d and 0 > d then
			d = math.abs(d)
		end
		if d and d > 0 and d < 100000000000 then
			shared.PepsiSwarm.knowndecals[d] = true
		end
	end)
	if shared.PepsiSwarm.showering or shared.PepsiSwarm.panic or shared.PepsiSwarm.honey or (not shared.PepsiSwarm.mods.tprare and not shared.PepsiSwarm.mods.tkhide) then
		shared.PepsiSwarm.maytp = true
		return
	end
	if shared.PepsiSwarm.mods.tkhide and c then
		if typeof(c) == "Instance" and c:IsA("BasePart") then
			c.LocalTransparencyModifier = 1
		end
		return
	end
	if not shared.PepsiSwarm.panic and typeof(c) == "Instance" and c:IsA("BasePart") and c.Transparency < 0.2 and c.Size.Y < 5 and validc(c) then
		local decal = Pepsi.Obj({
			silent = true
		}, c:FindFirstChildOfClass("Decal"), "Texture")
		if not shared.PepsiSwarm.panic and decal and Pepsi.Char() then
			local h = Pepsi.Human()
			decal = string.num(decal)
			if not shared.PepsiSwarm.panic and h and h.Health > 0 and tonumber(tonumber(shared.PepsiSwarm.rares[decal] or 1) or 1) > 0 and wait() then
				local st = time()
				while not shared.PepsiSwarm.panic and h and h.Health > 0 and tonumber(tonumber(shared.PepsiSwarm.rares[decal] or 1) or 1) > 0 and c.Size.Y < 5 and c.Transparency < 0.2 and time() - st <= 8 and Pepsi.Rs:Wait() do
					shared.PepsiSwarm.maytp = false
					h = Pepsi.Human()
					--h:ChangeState(11)
					tp(c.Position, h and h.Parent and h)
				end
				if c and time() - st > 3 then
					c.Transparency = 1
				end
				restate()
				shared.PepsiSwarm.maytp = true
			else
				shared.PepsiSwarm.maytp = true
				return
			end
		else
			shared.PepsiSwarm.maytp = true
			return
		end
	end
	local t = Pepsi.Torso()
	if t and shared.PepsiSwarm.old then
		restate()
		tp(Pepsi.ToVector3(shared.PepsiSwarm.old))
	end
	shared.PepsiSwarm.maytp = true
end
local function do_rednek_stuff()
	if not shared.PepsiSwarm.mods.farming or not shared.PepsiSwarm.allowfarm or shared.PepsiSwarm.showering then
		return
	end
	shared.PepsiSwarm.honey = true
	convert()
	shared.PepsiSwarm.honey = false
	if not shared.PepsiSwarm.mods.farming then
		return
	end
	assert(typeof(shared.PepsiSwarm.zones) == "Instance", "Zones missing!")
	local zone, bee = shared.PepsiSwarm.values.field, nil
	if not zone or zone == "Auto" or zone == "Rotate" then
		if zone == "Rotate" and not getgoodestfield(true, true) then
			if not shared.PepsiSwarm.lastrotate or time() - shared.PepsiSwarm.lastrotate > (tonumber(shared.PepsiSwarm.rotatetime or 120) or 120) then
				local proper = true
				repeat
					proper = false
					shared.PepsiSwarm.rotate = (tonumber(shared.PepsiSwarm.rotate or 0) + 1) % #shared.PepsiSwarm.przones
					zone = rawget(shared.PepsiSwarm.przones, shared.PepsiSwarm.rotate)
					zone = typeof(zone) == "Field" and zone or rawget(shared.PepsiSwarm.fieldinfo, zone)
					if not zone then
						shared.PepsiSwarm.rotate = 0
						proper = true
					elseif zone ~= validatefield(zone) or zone.Blacklisted or (zone.Whitelisted and shared.PepsiSwarm.mods.god) then
						shared.PepsiSwarm.rotate = (tonumber(shared.PepsiSwarm.rotate or 0) + math.random(3)) % #shared.PepsiSwarm.przones
						proper = true
					end
				until sleep(1) and not proper
				shared.PepsiSwarm.lastrotate = time()
			elseif time() - shared.PepsiSwarm.lastrotate <= (tonumber(shared.PepsiSwarm.rotatetime or 120) or 120) then
				local proper = true
				repeat
					proper = false
					zone = rawget(shared.PepsiSwarm.przones, shared.PepsiSwarm.rotate)
					zone = typeof(zone) == "Field" and zone or rawget(shared.PepsiSwarm.fieldinfo, zone)
					if not zone then
						shared.PepsiSwarm.rotate = (tonumber(shared.PepsiSwarm.rotate or 0) + 1) % #shared.PepsiSwarm.przones
						proper = true
					elseif zone ~= validatefield(zone) or zone.Blacklisted or (zone.Whitelisted and shared.PepsiSwarm.mods.god) then
						shared.PepsiSwarm.rotate = (tonumber(shared.PepsiSwarm.rotate or 0) + 1) % #shared.PepsiSwarm.przones
						proper = true
					end
				until sleep(1) and not proper
			end
		elseif zone == "Auto" then
			zone, bee = getgoodestfield(true)
		else
			zone, bee = getgoodestfield(true, true)
		end
	else
		local nz, nb = getgoodestfield(true, true)
		if nz or nb then
			if nz then
				zone = typeof(nz) == "Field" and nz or shared.PepsiSwarm.fieldinfo[nz or "Sunflower"]
			end
			if nb then
				bee = nb
			end
		else
			zone = shared.PepsiSwarm.fieldinfo[shared.PepsiSwarm.values.field or "Sunflower"]
		end
	end
	zone = typeof(zone) == "Field" and zone or shared.PepsiSwarm.fieldinfo[shared.PepsiSwarm.values.field or "Sunflower"]
	zone = validatefield(zone)
	if typeof(zone) == "Field" then
		local rednek_field = zone.Field
		if not rednek_field then
			return Pepsi.Error("Cannot get a field.")
		end
		local c = Pepsi.WaitForChar()
		local h = Pepsi.Human()
		local central = zone.Central -- Yippe, time to get our rakes...
		local t = h and h.RootPart
		local di = Pepsi.Dist(central)
		if (di < 100 and (not t or t.Position.Y > central.Y - 5)) or takemeto(central) then -- Houston, we have landed.
			local token, tokens = processrares(0.001), nil
			if not token and shared.PepsiSwarm.mods.tokens and not shared.PepsiSwarm.showering then
				token, tokens = Pepsi.Closest(tokins(shared.PepsiSwarm.values.tokendist))
			end
			if bee then
				if takemeto(bee) then
					shared.PepsiSwarm.mods.dig = true
				else
					shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
				end
				return
			elseif token and not shared.PepsiSwarm.showering then
				if takemeto(token) then
					shared.PepsiSwarm.mods.dig = true
				else
					shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
				end
			elseif Pepsi.Dist(central) > 70 then -- Off course a bit?
				if Pepsi.Dist(central) > 500 then -- Dafuq u doing??
					shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
					takemeto(central) -- Git! Stay!
				else
					shared.PepsiSwarm.mods.dig = true
					Pepsi.Navigate(central, nil, false, true, 10) -- Recenter
					if Pepsi.Dist(central) > 500 then
						takemeto(central)
					end
				end
			else
				shared.PepsiSwarm.mods.dig = true
				if h and h.Health <= 0 then
					Pepsi.WaitForChar(nil, nil, true)
				end
				h = h or Pepsi.WaitForChar() and Pepsi.Human()
				
				local oops, deviation = nil, Pepsi.Obj(Particles, "DustBunnyInstance", "Plane", "Position") or Pepsi.Obj(Particles, "Bubble", "Position") or Pepsi.Obj(workspace, "Stations", "SignStation", "Base") or (not shared.PepsiSwarm.mods.ignoretball and Pepsi.Obj(workspace, "TennisBall", "Position"))
				local wd = table.filterfunc(Pepsi.Obj(Particles, "GetChildren", {namecall = true}), function(disk)
					return typeof(disk) == "Instance" and disk:IsA("BasePart") and disk.BrickColor.Number == 0x3FC
				end)
				if #wd > 0 then
					deviation = wd[1]
				end
				if deviation and typeof(deviation) == "Instance" and deviation:IsA("BasePart") then
					oops, deviation = pcall(function()
						return assert(Vector3.PointFromRange(deviation, {Y = assert(h.RootPart and h.RootPart.Position.Y, "Torso not found?")}), "Wander returned nil.")--:Lerp(deviation.Position, 0.1)
					end)
				end
				if shared.PepsiSwarm.mods.fireflies then
					local bees = workspace:FindFirstChild("NPCBees")
					if bees then
						local f = Pepsi.Closest(table.filterfunc(bees:GetChildren(), function(i)
							return typeof(i) == "Instance" and i:IsA("BasePart") and i.Name == "Firefly" and i.Velocity.Magnitude < 1 and math.abs(i.Position.Y - zone.Field.Position.Y) < 5
						end), zone.Field)
						if f then
							deviation = f
							takemeto(deviation or f)
						end
					end
				end
				if not deviation or Pepsi.Dist(deviation) > 0x80 then
					oops, deviation = pcall(function()
						return assert(Vector3.PointFromRange(assert(zone.Ranges, "Zone does not have proper ranges"), {Y = assert(h.RootPart and h.RootPart.Position.Y, "Torso not found?")}), "Wander returned nil.")
					end)
					if not oops then
						return warn("Torso gone")
					end
				end
				if not shared.PepsiSwarm.panic and deviation and h then
					deviation = Pepsi.ToVector3(deviation)
					h:MoveTo(deviation) -- Wander
					PlayerHiveCommand:FireServer("ToggleHoneyMaking") -- Reset Diamond Mask
					local success = Pepsi.WaitUntil(h.MoveToFinished, math.clamp(tonumber(Pepsi.DistToTime(deviation)), 0, 10))
					if not success then
						shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
						return-- warn("Houston, we have a problem.")
					end
				end
			end
		else
			shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
			return-- warn("Misson to control: We fucked up.")
		end
	end
end

Pepsi.Splash("Setting up Loops", 6)
wait(0.1)

-- Camera Fixer
spawn(function()
	while wait(10) do
		pcall(function()
			Pepsi.Lp.CameraMinZoomDistance, Pepsi.Lp.CameraMaxZoomDistance = 0x0, 0x400
		end)
	end
end)
Pepsi.Splash("Setting up Loops 2", 6)
wait(0.1)
-- Field Dicer
if not shitploit then -- Idk why, but this crashes trash exploits
	spawn(function()
		shared.PepsiSwarm.fdcool = time() - servertick(getstats("PlayerActiveTimes", 1)["Field Dice"]) + 5
		while wait(1) do
			pcall(function()
				while wait(1) and (shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.fd or time() - shared.PepsiSwarm.fdcool < 800) do
				end
				local fd = tonumber(rawget(getstats("Eggs", 5), "FieldDice") or 0)
				if shared.PepsiSwarm.mods.fd and (not shared.PepsiSwarm.values.fdf and fd > 0 or fd > 20) then
					shared.PepsiSwarm.fdcool = time()
					PlayerActivesCommand:FireServer({
						Name = "Field Dice"
					})
				elseif not (not shared.PepsiSwarm.values.fdf and fd > 0 or fd > 20) or time() - shared.PepsiSwarm.fdcool < 800 then
					 wait(3) -- We won't be collecting them every 10 seconds...
				end
			end)
		end
	end)
end

Pepsi.Splash("Setting up Loops 3", 6)
wait(0.1)
-- Field Scores (Debug Info)
spawn(function()
	while not shared.PepsiSwarm.running do
		wait(0.1)
	end
	while wait(1) do
		local scores = getgoodestfield()
		for _, score in pairs(scores) do
			local field, overall, fboost, cboost, b, r, w, tot = unpack(score)
			shared.scores[field] = {
				Overall = overall,
				{"Overall", overall},
				{"Pollen Value", tostring(math.round((field.ColorsTotal.All / tot) * 100, 2)) .. " [" .. field.ColorsTotal.All .. "]"},
				{"Red", r, " (" .. tostring(field.ColorFlowers.Red) .. " - " .. tostring(math.percent(field.ColorFlowers.Red, tot, 2)) .. "%)"},
				{"Blue", b, " (" .. tostring(field.ColorFlowers.Blue) .. " - " .. tostring(math.percent(field.ColorFlowers.Blue, tot, 2)) .. "%)"},
				{"White", w, " (" .. tostring(field.ColorFlowers.White) .. " - " .. tostring(math.percent(field.ColorFlowers.White, tot, 2)) .. "%)"},
				{"Color Boost", cboost},
				{"Flowers", tot},
				{"Field", fboost}
			}
			wait(0.1)
		end
		if shared.printscores then
			shared.printscores = false
			Pepsi.Hint("Scores Exporting...", 10)
			print("\n\n\n")
			if writefile then
				pcall(writefile, "bee_swarm_field_scores.txt", "This file has been generated by PepsiSwarm.\nIt's telling you pollen scores for each field.\n\n")
				if appendfile then
					local x = {}
					for zone, val in pairs(shared.zscores) do
						sleep(1)
						table.insert(x, {zone, val})
					end
					table.sort(x, function(a, b)
						return a[2] > b[2]
					end)
					for _, v in pairs(x) do
						sleep(1)
						local zone, val = unpack(v)
						pcall(appendfile, "bee_swarm_field_scores.txt", zone .. ": " .. tostring(tonumber(val) * 100) .. "%\n")
					end
					pcall(appendfile, "bee_swarm_field_scores.txt", "\n")
					x = {}
					for clr, val in pairs(shared.cscores) do
						sleep(1)
						table.insert(x, {clr, val})
					end
					table.sort(x, function(a, b)
						return a[2] > b[2]
					end)
					for _, v in pairs(x) do
						sleep(1)
						local clr, val = unpack(v)
						pcall(appendfile, "bee_swarm_field_scores.txt", clr .. " Pollen: " .. tostring(val) .. "%\n")
					end
				else
				Pepsi.Hint("Failed to save file")
				end
			end
			-- I hate writing instructions. It's physically painful, literally.
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n------------ Example and the value descriptions ----------------------------")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	Overall: The total score of field, result of adding colors, color boosts, and field boosts.")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	Pollen Value: Average pollen value for whole field [The sum of each color pollen value]")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	Red: The score of field's red pollen [Percent of red flowers counting value] {Pollen value of all red flowers combined} (How many red flowers are in the field - percent_format%)")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	Blue: The score of field's blue pollen [Percent of blue flowers counting value] {Pollen value of all blue flowers combined} (How many blue flowers are in the field - percent_format%)")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	White: The score of field's white pollen [Percent of white flowers counting value] {Pollen value of all white flowers combined} (How many white flowers are in the field - percent_format%)")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	Color Boost: The sum of each color value")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	Flowers: How many flowers are in the field")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n	Field: Current field bonuses (amulets, field boosts) if there is any.")
			pcall(appendfile, "bee_swarm_field_scores.txt", "\n----------------------------------------------------------------------------\n")
			local x = {}
			for f, d in pairs(shared.scores) do
				sleep(1)
				table.insert(x, {f, d})
			end
			table.sort(x, function(a, b)
				return a[2].Overall > b[2].Overall
			end)
			for _, v in pairs(x) do
				local field, d = unpack(v)
				d.Overall = nil
				sleep(1)
				print(field.Name)
				if appendfile then
					pcall(appendfile, "bee_swarm_field_scores.txt", "\n" .. field.Name .. "\n")
				end
				for _, data in pairs(d) do
					sleep(1)
					local mod, val, extra = unpack(data)
					if val then
						local percent = rawget(field.Colors, mod)
						local total = rawget(field.ColorsTotal, mod)
						extra = tostring((type(extra) == "string" and extra) or "") or ""
						warn(mod, val, extra)
						if appendfile then
							pcall(appendfile, "bee_swarm_field_scores.txt", "	" .. mod .. ": " .. val)
							if percent then
								pcall(appendfile, "bee_swarm_field_scores.txt", " [" .. tostring(math.round(percent * 100)) .. "] {" .. tostring(total) .. "}" .. tostring(extra or "") .. "\n")
							else
								pcall(appendfile, "bee_swarm_field_scores.txt", "\n")
							end
						end
					end
				end
				print("\nScores exported to workspace\\bee_swarm_field_scores.txt")
			end
			Pepsi.Hint("Scores Exported", 5)
		end
	end
end)

Pepsi.Splash("Setting up Loops 4", 6)
wait(0.1)
-- Field Quest warnings
spawn(function()
	while not shared.PepsiSwarm.running or shared.PepsiSwarm.panic do
		wait(0.1)
	end
	while wait(3) do
		while not shared.PepsiSwarm.running or shared.PepsiSwarm.panic do
			wait(1)
		end
		pcall(function()
			if shared.PepsiSwarm.mods.sq and #Pepsi.Obj({default = {}}, Pepsi.Lp, "PlayerGui", "ScreenGui", "Menus", "Children", "Quests", "Content", "GetChildren", {namecall = true}) <= 0 then
				return Pepsi.Hint("Field Quests Requires the quest tab to be open!")
			end
		end)
	end
end)
Pepsi.Splash("Setting up Loops 5", 6)
wait(0.1)
-- auto dig
spawn(function()
	while (not shared.PepsiSwarm.running or shared.PepsiSwarm.panic) and not shared.PepsiSwarm.values.scooppanic do
		wait(0.1)
	end
	local last = 0
	while wait(0.01) do
		pcall(function()
			shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.dig or shared.PepsiSwarm.mods.scoop
			while shared.PepsiSwarm.panic and not shared.PepsiSwarm.values.scooppanic do
				wait(0.1)
			end
			if shared.PepsiSwarm.mods.dig or shared.PepsiSwarm.mods.scoop then
				Pepsi.Obj({
					dig = true
				}, Pepsi.Char(), "ClickEvent", "FireServer", {namecall = true})
				local k = 0
				for _, c in pairs(Pepsi.GetChars()) do
					k = 1 + k
					if c and (shared.PepsiSwarm.mods.dig or shared.PepsiSwarm.mods.scoop) then
						Pepsi.Obj({
							dig = true
						}, c, "ClickEvent", "FireServer", {namecall = true})
						wait(0.05)
						if k % 2 == 1 then
							if shared.PepsiSwarm.mods.dig or shared.PepsiSwarm.mods.scoop then
								Pepsi.Obj({
									dig = true
								}, Pepsi.Char(), "ClickEvent", "FireServer", {namecall = true})
							else
								return
							end
						end
					elseif not shared.PepsiSwarm.mods.dig and not shared.PepsiSwarm.mods.scoop then
						return
					end
				end
				wait()
				Pepsi.Obj({
					dig = true
				}, workspace, "NPCs", "Onett", "ClickEvent", "FireServer", {namecall = true})
				if not shared.PepsiSwarm.mods.nosprinklers and time() - last > 25 and PlayerActivesCommand then
					PlayerActivesCommand:FireServer({
						Name = "Sprinkler Builder"
					})
					last = time()
				end
			end
		end)
	end
end)
Pepsi.Splash("Setting up Loops 6", 6)
wait(0.1)
-- Monster TP
spawn(function()
	while not shared.PepsiSwarm.running and shared.PepsiSwarm.maytp do
		wait(0.1)
	end
	local to, old = Pepsi.Torso(), nil
	while Pepsi.Rs:Wait() do
		while not shared.PepsiSwarm.mods.mobtp or not Pepsi.Human() or (not shared.PepsiSwarm.mods.god and shared.PepsiSwarm.mods.fleehp and Pepsi.Health(3) < tonumber(shared.PepsiSwarm.values.tplow or 15)) do
			wait()
		end
		while shared.PepsiSwarm.panic do
			wait(0.1)
		end
		local mob, to, hu = (nearestmob()), Pepsi.Torso(), Pepsi.Human()
		if mob then
			if hu and (shared.PepsiSwarm.mods.farmwb and string.rawfind(mob.Name, "Windy")) or (shared.PepsiSwarm.mods.farmvb and (string.rawfind(mob.Name, "Vicious") or mob.Name == "WaitingThorn")) then
				old = old or to.Position
				tp(mob.Position)
				shared.PepsiSwarm.allowfarm = false
				while not hu and wait() do
					hu = Pepsi.Human()
				end
				hu:ChangeState(11)
				shared.PepsiSwarm.allowfarm = true
				tp(old or to.Position)
				restate()
			elseif not shared.PepsiSwarm.showering and Pepsi.Health() <= shared.PepsiSwarm.values.tplow and Pepsi.Obj(mob, "Target", "Value") == Pepsi.Char() then
				local h = mob:FindFirstChildOfClass("Humanoid")
				if h then
					local tor = h.RootPart
					if tor then
						to = Pepsi.Torso()
						if to and Pepsi.Lp:DistanceFromCharacter(tor.Position) < 50 then
							old = old or to.Position
							while Pepsi.Health() < shared.PepsiSwarm.values.tplow do
								wait()
								to.Anchored = true
								tp(Vector3.new(-114, 5.7, 271), h)
							end
							to.Anchored = false
							while not hu and wait() do
								hu = Pepsi.Human()
							end
							if not shared.PepsiSwarm.showering then
								hu:ChangeState(11)
								to.CFrame = CFrame.new(tor.Position + tor.CFrame.LookVector * -(21 + math.abs((100 - Pepsi.Health()) / 2)))
							end
						else
							if old and tor then
								tp(old)
								old = nil
							end
							restate()
						end
					else
						tor = Pepsi.Torso()
						if old and tor then
							tp(old)
							old = nil
						end
						restate()
					end
				else
					local tor = Pepsi.Torso()
					if old and tor then
						tp(old)
						old = nil
					end
					restate()
				end
			end
		else
			local tor = Pepsi.Torso()
			if old and tor then
				tp(old)
				old = nil
			end
			restate()
		end
	end
end)
Pepsi.Splash("Setting up Loops 7", 6)
wait(0.1)
-- Auto Donate
spawn(function()
	while shared.PepsiSwarm.panic or not shared.PepsiSwarm.running do
		wait(0.1)
	end
	while wait() do
		while not shared.PepsiSwarm.mods.donate or shared.PepsiSwarm.panic or not shared.PepsiSwarm.values.wsitem or not shared.PepsiSwarm.values.windamount do
			wait(0.1)
		end
		WindShrineDonation:InvokeServer(shared.PepsiSwarm.values.wsitem, shared.PepsiSwarm.values.windamount)
		wait(0x50)
	end
end)
Pepsi.Splash("Setting up Loops 8", 6)
wait(0.1)

-- Auto Scoop
spawn(function()
	local last = time()
	while not shared.PepsiSwarm.running do
		wait(0.1)
	end
	while wait(0.5) do
		pcall(function()
			local tool = nil
			while wait(1) and not shared.PepsiSwarm.mods.scoop do
				if not shared.PepsiSwarm.mods.farming then
					shared.PepsiSwarm.mods.dig = shared.PepsiSwarm.mods.scoop
				end
				--if shared["I know what I'm doing!"] == "confirm" then
					tool = Pepsi.Tool()
					if dbg and dbg.sc and dbg.gse and tool and (math.random(3) == 2 or Pepsi.IsMarked(tool, "scoop")) then
						pcall(function()
						pcall(dbg.sc, rawget(dbg.gse(tool:FindFirstChild("ClientScriptMouse")), "collectStart"), 11, ((shared.PepsiSwarm.mods.scoop and "GetMouseButtonsPressed") or "IsMouseButtonPressed"))
						end)
						Pepsi.Mark(tool, "scoop")
					end
				--end
			end
			shared.PepsiSwarm.mods.dig = true
			--if shared["I know what I'm doing!"] == "confirm" then
				tool = Pepsi.Tool()
				if dbg and dbg.sc and dbg.gse and tool and (math.random(3) == 2 or not Pepsi.IsMarked(tool, "scoop")) then
					pcall(function()
					pcall(dbg.sc, rawget(dbg.gse(tool:FindFirstChild("ClientScriptMouse")), "collectStart"), 11, ((shared.PepsiSwarm.mods.scoop and "GetMouseButtonsPressed") or "IsMouseButtonPressed"))
					end)
					Pepsi.Mark(tool, "scoop")
				end
			--end
			Pepsi.Obj({
				dig = true
			}, Pepsi.Char(), "ClickEvent", "FireServer", {namecall = true})
			if not shared.PepsiSwarm.mods.nosprinklers and not shared.PepsiSwarm.panic and time() - last > 40 and PlayerActivesCommand then
				PlayerActivesCommand:FireServer({
					Name = "Sprinkler Builder"
				})
				last = time()
			end
		end)
	end
end)
Pepsi.Splash("Setting up Loops 9", 6)
wait(0.1)
-- Godmode
spawn(function()
	while not shared.PepsiSwarm.running or (shared.PepsiSwarm.panic and not shared.PepsiSwarm.values.scooppanic) do
		wait(1)
	end
	while wait(1) do
		pcall(function()
			while not shared.PepsiSwarm.mods.god or shared.PepsiSwarm.panic or Pepsi.Health() <= 0 or Pepsi.IsMarked(Pepsi.Human(), "god") do
				pcall(function()
					if not shared.PepsiSwarm.mods.god and Pepsi.IsMarked(Pepsi.Human(), "god") then
						local me = Pepsi.Lp
						local c, h = (me.Character or workspace:FindFirstChild(me.Name)), Pepsi.Human()
						h:SetStateEnabled(15, true)
						h.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
						me.Character = nil
						h:ChangeState(15)
						me.Character = c
						h.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
						Pepsi.Mark(h, "god", false)
						if dbg and type(dbg.gse) == "function" then
							pcall(function() -- I would use securecall, however this game doesnt check that kinda stuff
								dbg.gse(Pepsi.Tool().ClientScriptMouse).onEquippedLocal(Pepsi.Mouse())
							end)
						end
						wait(5.5)
					end
				end)
				wait(1)
			end
			if shared.PepsiSwarm.mods.god and not shared.PepsiSwarm.panic then
				local tool = nil
				if shared.PepsiSwarm.mods.scoop then
					tool = Pepsi.Tool()
				end
				--if shared["I know what I'm doing!"] == "confirm" then
					if tool and shared.PepsiSwarm.mods.scoop and dbg and dbg.sc and dbg.gse and (math.random(3) == 2 or Pepsi.IsMarked(tool, "scoop")) then
						pcall(function()
						pcall(dbg.sc, rawget(dbg.gse(tool:FindFirstChild("ClientScriptMouse")), "collectStart"), 11, ((shared.PepsiSwarm.mods.scoop and "GetMouseButtonsPressed") or "IsMouseButtonPressed"))
						end)
						if dbg and type(dbg.gse) == "function" then
							pcall(function()
								dbg.gse(Pepsi.Tool().ClientScriptMouse).onEquippedLocal(Pepsi.Mouse())
							end)
						end
						Pepsi.Mark(tool, "scoop")
					end
				--end
				wait(0.5)
				local cam = Pepsi.GetCam()
				local cf, me = cam.CFrame, Pepsi.Lp
				local c, h = (me.Character or workspace:FindFirstChild(me.Name)), Pepsi.Human()
				h.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				local nh = h:Clone()
				Pepsi.Mark(nh, "god")
				me.Character = nil
				nh:SetStateEnabled(15, false)
				nh:SetStateEnabled(1, false)
				nh:SetStateEnabled(0, false)
				nh.Parent = c
				h:Destroy()
				me.Character, cam.CameraSubject = c, nh
				Pepsi.Rs:Wait()
				cam.CFrame = cf
				h.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				local s = c:FindFirstChild("Animate")
				if s then
					s.Disabled = true
					Pepsi.Rs:Wait()
					s.Disabled = false
				end
				delay(2, function()
					if nh then
						nh.Health = 100
					end
				end)
				if dbg and type(dbg.gse) == "function" then
					pcall(function()
						dbg.gse(Pepsi.Tool().ClientScriptMouse).onEquippedLocal(Pepsi.Mouse())
					end)
				end
			end
		end)
	end
end)
Pepsi.Splash("Setting up Loops 10", 6)
wait(0.1)

-- Rares Fail-Safe
spawn(function()
	while not shared.PepsiSwarm.running or shared.PepsiSwarm.panic do
		wait(0.1)
	end
	while wait() do
		if not shared.PepsiSwarm.panic and not shared.PepsiSwarm.showering and not shared.PepsiSwarm.honey then
			collecttokins(shared.PepsiSwarm.values.tokendist)
		end
	end
end)
Pepsi.Splash("Setting up Loops 11", 6)
wait(0.1)
-- Sparkles Fail-Safe
spawn(function()
	while not shared.PepsiSwarm.running do
		wait(0.1)
	end
	while wait(0.1) do
		if not shared.PepsiSwarm.panic and shared.PepsiSwarm.mods.tpspark and not shared.PepsiSwarm.showering then	
			local leef = Flowers:FindFirstChild("Sparkles", true)
			if leef then
				checkloot(leef)
			end
		end
	end
end)
Pepsi.Splash("Setting up Loops 12", 6)
wait(0.1)
-- Train Crab
spawn(function() -- This was originally, a challenge to make.
	while not shared.PepsiSwarm.running do
		wait(0.1)
	end
--	local f = shared.PepsiSwarm.fieldinfo.Coconut
--	while not f and wait() do
--		f = shared.PepsiSwarm.fieldinfo.Coconut
--		warn("Missing coconut??")
--	end
--	local dists = {}
--	table.each(f.Flowers, function(i)
--		table.insert(dists, i.Position + Vector3.new(0, 5, 0))
--	end)
	while wait(1) do
		while shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.tcrab do
			wait(0.1)
		end
		local cm = workspace:FindFirstChild("CrabModel")
		if cm and Pepsi.Dist(cm) > 300 then -- This aint our crab
			cm = (cm and cm:Destroy() and nil) or nil
		end
		while shared.PepsiSwarm.mods.tcrab and Pepsi.Rs:Wait() do
			if shared.PepsiSwarm.panic then
				break
			end
			while not workspace:FindFirstChild("CrabModel") and wait(0.1) and shared.PepsiSwarm.mods.tcrab do
			end
			if not shared.PepsiSwarm.mods.tcrab then
				break
			end
			local h = Pepsi.Human()
			local tor = h and h.RootPart
			if h and tor then
				local craby = table.filterfunc(Monsters:GetChildren(), function(crab)
					return crab and crab.Name == "Coconut Crab (Lvl 12)" and Pepsi.Obj({
						silent = true
					}, crab, "Target", "Value") == Pepsi.Char()
				end)
				if h and tor and type(craby) == "table" and #craby > 0 and Pepsi.Health() > 0 and shared.PepsiSwarm.mods.tcrab then
					shared.PepsiSwarm.maytp = not shared.PepsiSwarm.mods.tcrab
					--shared.PepsiSwarm.honey = shared.PepsiSwarm.mods.tcrab
					h:ChangeState(11)
					tor.CFrame = CFrame.new(-265, 112, 456, 0, -0.5, -0.9, -1, 0, 0.1, 0, 0.9, -0.5) -- Much gooder method damnit.
					sleep(1)
--					craby = craby[1]
--					if not craby then
--						break
--					end
--					local scores = {}
--					local f, t = Pepsi.Closest(dists, {
--						from = craby,
--						rev = true,
--						min = 45,
--						max = 80
--					})
--					for _, v in pairs(t) do
--						scores[v[1]] = v[2] --key = vec
--					end
--					local objs = table.add(table.filterfunc(Particles:GetChildren(), function(item)
--						return item.Name == "WarningDisk" or item.Name == "Coconut"
--					end), table.filterfunc(craby:GetDescendants(), function(item)
--						return item:IsA("BasePart")
--					end))
--					for _, disk in pairs(objs) do
--						f, t = Pepsi.Closest(dists, {
--							from = disk,
--							rev = true,
--							min = 35
--						})
--						for _, v in pairs(t) do
--							if scores[v[1]] then
--								scores[v[1]] = v[2] + scores[v[1]]
--							end
--						end
--					end
--					local nscore = {}
--					for vec, dist in pairs(scores) do
--						table.insert(nscore, {
--							dist,
--							vec
--						})
--					end
--					table.sort(nscore, function(a, b)
--						return a[1] > b[1]
--					end)
--					local dist, vec = unpack(nscore[1])
--					Pepsi.Torso().CFrame = CFrame.new(vec)
				else
					h = Pepsi.Human()
					if h and h:GetState() == 11 then
						shared.PepsiSwarm.maytp = true
						--shared.PepsiSwarm.honey = false
						Pepsi.ncall(h, "ChangeState", 10) -- Protected name call. Crazy what type of functions get requested and then are later useful.
					end
				end
			end
		end
	end
end)
Pepsi.Splash("Setting up Loops 13", 6)
wait(0.1)
-- Train snail
spawn(function()
	while not shared.PepsiSwarm.running do
		Pepsi.State(11, false)
		restate()
		wait(0.1)
	end
	while wait(1) do
		while shared.PepsiSwarm.panic do	
			restate()
			wait(0.1)
		end
		Pepsi.State(11, false)
		while shared.PepsiSwarm.mods.tsnail and wait(0.1) do
			if shared.PepsiSwarm.panic then
				Pepsi.State(11, false)
				restate()
				break
			end
			--Pepsi.State(11, true)
			local craby = table.filterfunc(Monsters:GetChildren(), function(crab)
				return shared.PepsiSwarm.mods.tsnail and crab and Pepsi.Obj(crab, "Target", "Value") == Pepsi.Char() and Pepsi.Obj(crab, "MonsterType", "Value") == "Stump Snail" and Pepsi.Obj(crab, "Behavior", "Value") == "SnailLoop"
			end)
			local h = Pepsi.Human()
			local tor = h and h.RootPart
			while Pepsi.Rs:Wait() and h and tor and type(craby) == "table" and #craby > 0 and shared.PepsiSwarm.mods.tsnail do
				shared.PepsiSwarm.maytp = not shared.PepsiSwarm.mods.tsnail
				Pepsi.State(11, true)
				Pepsi.ncall(h, "ChangeState", 11)
				tor.CFrame = CFrame.new(425, 130, -176, 1, -0.045, 0.008, -8.65, 0.17, 1, -0.05, -1, 0.17)
				craby = table.filterfunc(Monsters:GetChildren(), function(crab)
					return shared.PepsiSwarm.mods.tsnail and crab and Pepsi.Obj(crab, "Target", "Value") == Pepsi.Char() and Pepsi.Obj(crab, "MonsterType", "Value") == "Stump Snail" and Pepsi.Obj(crab, "Behavior", "Value") == "SnailLoop"
				end)
			end
			h = Pepsi.Human()
			tor = h and h.RootPart
			if h then
				restate()
				if h:GetState() == 11 then
					restate()
					Pepsi.ncall(h, "ChangeState", 10) -- Protected name call. Crazy what type of functions get requested and then are later useful.
					shared.PepsiSwarm.maytp = true
				end
			end
			Pepsi.State(11, false)
		end
	end
end)
Pepsi.Splash("Setting up Loops 14", 6)
wait(0.1)
-- Farm battle points
spawn(function()
	while not shared.PepsiSwarm.running do
		wait(0.1)
	end
	while wait() do
		while shared.PepsiSwarm.mods.honey or shared.PepsiSwarm.mods.showering or shared.PepsiSwarm.mods.god or shared.PepsiSwarm.panic or not shared.PepsiSwarm.running or not shared.PepsiSwarm.mods.farmbp or Pepsi.Health(3) < 85 do
			wait(0.1)
		end
		local msdata = {}
		for name, v in pairs(shared.PepsiSwarm.gui.mstime) do
			if not shared.PepsiSwarm.blacklisted_mobs[name] and not shared.PepsiSwarm.honey then
				local l = v and v[2]
				if l then
					local part = l.Parent.Parent.Parent
					table.insert(msdata, {name, v, (tonumber(Pepsi.Obj({default = 10}, part, "MonsterLevel", "Value") or 10) or 10)})
				end
			end
		end
		for _, ddata in pairs(table.asort(msdata, 3, true)) do
			if shared.PepsiSwarm.mods.honey or shared.PepsiSwarm.mods.showering or shared.PepsiSwarm.mods.god or shared.PepsiSwarm.panic or not shared.PepsiSwarm.running or not shared.PepsiSwarm.mods.farmbp or Pepsi.Health(3) < 85 then
				break
			end
			local name, v = ddata[1], ddata[2]
			wait(0.1)
			--print(name)
			if not shared.PepsiSwarm.blacklisted_mobs[name] and not shared.PepsiSwarm.honey then
				--warn(name)
				local l = v and v[2]
				if l and not string.subfind(string.gsub(l.Text, "\n", " "), ": ", nil, false, nil, true) then
					--print(typeof(l) == "Instance" and l.Text, not string.subfind(string.gsub(l.Text, "\n", " "), ": ", nil, false, nil, true))
					while wait() and not string.subfind(string.gsub(l.Text, "\n", " "), ": ", nil, false, nil, true) and not (shared.PepsiSwarm.mods.honey or shared.PepsiSwarm.mods.showering or shared.PepsiSwarm.mods.god or shared.PepsiSwarm.panic or not shared.PepsiSwarm.running or not shared.PepsiSwarm.mods.farmbp) do
						if shared.PepsiSwarm.mods.honey or shared.PepsiSwarm.mods.showering or shared.PepsiSwarm.mods.god or shared.PepsiSwarm.panic or not shared.PepsiSwarm.running or not shared.PepsiSwarm.mods.farmbp or Pepsi.Health(3) < 85 then
							break
						end
						local part = l.Parent.Parent.Parent
						if part then
							local f = closest(part)
							if f then
								local n = Pepsi.Obj(f, "ShortName", "Value")
								if validatefield(n) and type(n) == "string" and typeof(shared.PepsiSwarm.fieldinfo[n]) == "Field" then
									if Pepsi.Dist(f) > 50 + math.max(f.Size.X, f.Size.Z) then
										takemeto(f)
									end
									if not shared.PepsiSwarm.interests[n] or (type(rawget(shared.PepsiSwarm.interests, n)) == "number" and time() - rawget(shared.PepsiSwarm.interests, n) > 8) then
										table.insert(shared.PepsiSwarm.interests, {n, time(), 10})
									end
									shared.PepsiSwarm.interests[n] = time()
									wait(7)
									break
								end
							end
							wait(3)
							if string.subfind(string.gsub(l.Text, "\n", " "), ": ", nil, false, nil, true) then
								wait(6)
							end
						else
							break
						end
					end
					break
				end
			end
		end
		
		--for _, v in pairs(MonsterSpawners:GetChildren()) do
		--	if shared.PepsiSwarm.spawns[v] then
		--		if Pepsi.Dist(v) > 150 then
		--			takemeto(v)
		--		end
		--		local f = closest(v)
		--		if f then
		--			local n = Pepsi.Obj(f, "ShortName", "Value")
		--			if validatefield(n) and type(n) == "string" and typeof(shared.PepsiSwarm.fieldinfo[n]) == "Field" then
		--				if not shared.PepsiSwarm.interests[n] or (type(rawget(shared.PepsiSwarm.interests, n)) == "number" and time() - rawget(shared.PepsiSwarm.interests, n) > 8) then
		--					table.insert(shared.PepsiSwarm.interests, {n, time(), 10})
		--				end
		--				shared.PepsiSwarm.interests[n] = time()
		--				break
		--			end
		--		end
		--	end
		--	wait(0.1)
		--end
	end
end)
Pepsi.Splash("Setting up Loops 15", 6)
wait(0.1)
-- Monster Times
spawn(function()
	while not shared.PepsiSwarm.running do
		wait(0.1)
	end
	while shared.PepsiSwarm.panic do
		wait(0.1)
	end
	while wait(3) do
		while shared.PepsiSwarm.panic do
			wait(0.1)
		end
		local data = getstats("MonsterTimes", 5)
		if data then
			for monster, respawntick in pairs(data) do
				wait()
				if shared.PepsiSwarm.panic then
					break
				end
				local spawner = MonsterSpawners:FindFirstChild(monster)
				if typeof(spawner) == "Instance" and spawner:IsA("BasePart") then
					if tick() > respawntick then
						shared.PepsiSwarm.spawns[spawner] = true
					else
						shared.PepsiSwarm.spawns[spawner] = nil
					end
				end
			end
		end
	end
end)
Pepsi.Splash("Setting up Loops 16", 6)
wait(0.1)
-- Memory Matcher
spawn(function()
	while wait() do
		for _, descendant in pairs(Pepsi.Obj({default = {}}, Pepsi.Lp, "PlayerGui", "ScreenGui", "MinigameLayer", "GetChildren", {namecall = true})) do
			Pepsi.Rs:Wait()
			if descendant.Name == "MemoryMatchFrame" then
				for _, child in pairs(Pepsi.Obj({default = {}}, descendant, "GuiGrid", "GuiGrid", "GetChildren", {namecall = true})) do
					Pepsi.Rs:Wait()
					local child = Pepsi.Obj(child, "StageGrow", "StagePop", "StageFlip", "ObjCard", "ObjContent", "GuiTile", "StageGrow", "StagePop", "StageFlip", "ObjCard", "ObjContent")
					if child then
						child.Visible = true
						local tc = Pepsi.Obj(child, "ObjImage", "TextCount")
						if tc then
							tc.Visible = true
						end
					end
				end
			end
		end
	end
end)
Pepsi.Splash("Setting up Loops 17", 6)
wait(0.1)
-- Cannon spammer
spawn(function()
	while wait() do
		while shared.PepsiSwarm.panic do
			wait(0.1)
		end
		if shared.PepsiSwarm.mods.cannonspam then
			ToyEvent:FireServer("Red Cannon")
			wait(math.random() - math.random() - math.random())
			ToyEvent:FireServer("Blue Cannon")
			wait(math.random() - math.random() - math.random())
			ToyEvent:FireServer("Yellow Cannon")
			wait(math.random() - math.random() - math.random())
		end
	end
end)
Pepsi.Splash("Setting up Loops 18", 6)
wait(0.1)
-- rare sniper
spawn(function()
	while wait() do
		while shared.PepsiSwarm.panic do
			wait(0.1)
		end
		while not shared.PepsiSwarm.maytp or not Pepsi.Torso() do
			wait(0.1)
		end
		shared.PepsiSwarm.old = Pepsi.Pos()
	end
end)
Pepsi.Splash("Setting up Loops 19", 6)
wait(0.1)
-- Feeder
spawn(function()
	while not shared.PepsiSwarm.running do
		wait(0.1)
	end
	while shared.PepsiSwarm.panic do
		wait(0.1)
	end
	while wait(shared.PepsiSwarm.values.feedrate or 1) do
		while shared.PepsiSwarm.panic do
			wait(0.1)
		end
		local x, e = pcall(feedbees)
		if not x and e then
			warn(e, "\n", (debug and debug.traceback and debug.traceback()) or "")
		end
	end
end)
Pepsi.Splash("Setting up Loops 20", 6)
wait(0.1)
--Quests
spawn(function()
	while wait(2) do
		while shared.PepsiSwarm.panic do
			wait(0.1)
		end
		if shared.PepsiSwarm.mods.cq then
			pcall(questman)
		end
	end
end)
Pepsi.Splash("Setting up Loops 21", 6)
wait(0.1)
-- Toys
spawn(function()
	local t = time()
	while wait(0x1 / 0xA) do
		while shared.PepsiSwarm.panic do
			wait(0.1)
		end
		getdis()
		if time() - t > 600 then
			getdis(true)
		end
	end
end)
Pepsi.Splash("Setting up Loops 22", 6)
wait(0.1)
-- Info
spawn(function()
	while wait(1) and shared.PepsiSwarm.dogui do
		pcall(function()
			if shared.PepsiSwarm.gui.playtime then
				pcall(shared.PepsiSwarm.gui.playtime.Set, "Time: " .. string.fromtime(math.round(time())))
			end
--			pcall(shared.PepsiSwarm.gui.shrinefavor.Set, "Shrine Favor:	" .. (function()
--				local shrine = getstats("WindShrine", 0xC)
--				if shrine and shrine.WindyFavor then
--					return tostring(shrine.WindyFavor)
--				end
--				return "0"
--			end)())
			--pcall(shared.PepsiSwarm.gui.shrinegift.Set, "Shrine Chance:	" .. (function()
			--	local shrine = getstats("WindShrine", 0xC)
			--	if shrine and shrine.ChosenEffect then
			--		return tostring(shrine.ChosenEffect)
			--	end
			--	return "Nothing"
			--end)())
			if type(shared.PepsiSwarm.gui.rare) == "table" and type(shared.PepsiSwarm.gui.rare.Set) == "function" then
				shared.PepsiSwarm.gui.rare.Set("Tokens (" .. tostring(table.count(shared.PepsiSwarm.rares)) .. ")")
			end
			if type(shared.PepsiSwarm.gui.blflieds) == "table" and type(shared.PepsiSwarm.gui.blflieds.Set) == "function" then
				shared.PepsiSwarm.gui.blflieds.Set("Field Blacklists (" .. tostring(tonumber(table.count(shared.PepsiSwarm.fieldblacklist or {}) + table.count(shared.PepsiSwarm.godwhitelist or {}))) .. ")")
			end
			if not shitploit and type(shared.PepsiSwarm.gui.typeslabel) == "table" and type(shared.PepsiSwarm.gui.typeslabel.Set) == "function" then
				shared.PepsiSwarm.gui.typeslabel.Set("Types (" .. tostring(table.count(shared.PepsiSwarm.btypes)) .. ")")
			end
		end)
	end
end)

-- Excessory stuffs
-- Fuck the ui lib. It can't reload a damn list. Oh well.
spawn(function()
	local function doit()
		if type(shared.PepsiSwarm.gui.equip) == "function" then
			local stats = getstats(nil, 0x5)
			local acc, coll, ea, ec = stats.Accessories, stats.Collectors, stats.EquippedAccessories, stats.EquippedCollector
			if acc and coll and ea and ec then
				acc, coll = table.dictionary(acc), table.dictionary(coll)
				acc[ea] = nil
				coll[ec] = nil
				shared.PepsiSwarm.gui.equip(table.sort(table.add(table.keys(acc), table.keys(coll), false)))
			end
		end
		if type(shared.PepsiSwarm.gui.buyequip) == "function" then
			local stats = getstats(nil, 0x5)
			local acc, coll, lacc, lcoll = stats.Accessories, stats.Collectors, Pepsi.Obj({default = {}}, ReplicatedStorage, "Accessories", "GetChildren", {namecall = true}), Pepsi.Obj({default = {}}, ReplicatedStorage, "CollectorModels", "GetChildren", {namecall = true})
			if lacc and lcoll and acc and coll then
				acc, coll = table.dictionary(acc), table.dictionary(coll)
				local ulacc, ulcoll = {}, {}
				for _, v in pairs(lacc) do
					if v.ClassName == "Accessory" and not acc[v.Name] then
						table.insert(ulacc, v.Name)
					end
				end
				for _, v in pairs(lcoll) do
					if v.ClassName == "Tool" and not coll[v.Name] then
						table.insert(ulcoll, v.Name)
					end
				end
				shared.PepsiSwarm.gui.buyequip(table.sort(table.add(ulacc, ulcoll, false)))
			end
		end
	end
	wait(1)
	doit()
	while wait(60) do
		doit()
	end
end)

Pepsi.Splash("Setting up Loops 23", 6)
wait(0.1)
-- Speed/Jump
if not shitploit then -- Again, the dumbest thing breaks free exploits.
	spawn(function()
		while wait(1) do
			pcall(function()
				shared.PepsiSwarm.values.wsjp = true
				local h = Pepsi.Human()
				local fresh = false
				while h and h.Health <= 0 do
					h = Pepsi.Human()
					fresh = true
					wait(0x0 / 0xA)
				end
				if h and fresh and h.Health > 0 then
					fresh = false
					shared.PepsiSwarm.values.dws, shared.PepsiSwarm.values.djp = h.WalkSpeed, h.JumpPower
				end
				while h and h.Health > 0 and wait(0x1 / 0xA) and (shared.PepsiSwarm.mods.ws or shared.PepsiSwarm.mods.jp) do
					shared.PepsiSwarm.values.wsjp = false
					h = Pepsi.Human()
					if shared.PepsiSwarm.mods.ws and h then
						h.WalkSpeed = shared.PepsiSwarm.values.ws
					end
					if shared.PepsiSwarm.mods.jp and h then
						h.JumpPower = shared.PepsiSwarm.values.jp
					end
				end
				shared.PepsiSwarm.values.wsjp = true
			end)
		end
	end)
end
Pepsi.Splash("Setting up Loops 24", 6)
wait(0.1)
-- Handle Blacklists
spawn(function()
	while wait(0.1) do
		local new, rnew = {}, {}
		for name, field in pairs(shared.PepsiSwarm.fieldinfo) do
			field.Blacklisted = shared.PepsiSwarm.fieldblacklist[name] == true
			field.Whitelisted = shared.PepsiSwarm.godwhitelist[name] == true
			wait(0.1) -- This check shouldn't be of high priority.
			if type(name) == "string" and (not shared.PepsiSwarm.fieldblacklist[name] and (not shared.PepsiSwarm.godwhitelist[name] or shared.PepsiSwarm.mods.god)) then
				table.insert(new, field.Field)
				table.insert(rnew, field)
			end
		end
		shared.PepsiSwarm.pzones = new
		shared.PepsiSwarm.przones = rnew
	end
end)
Pepsi.Splash("Setting up Loops 25", 6)
wait(0.1)
-- Farmer
spawn(function()
	while wait() do
		while not shared.PepsiSwarm.running or shared.PepsiSwarm.panic do
			wait(0.1)
		end
		local x, e = pcall(do_rednek_stuff)
		if not x and e then
			warn(e, "\n", (debug and debug.traceback and debug.traceback()) or "")
		end
	end
end)
Pepsi.Splash("Setting up Loops 26", 6)
wait(0.1)
-- Collect badges
spawn(function()
	while wait(0.5) do
		while shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.cb do
			wait(0.1)
		end
		for _, badge in ipairs({"Goo", "Dandelion", "Blue Flower", "Pumpkin", "Mushroom", "Ability", "Battle", "Bamboo", "Strawberry", "Rose", "Coconut", "Pepper", "Quest", "Spider", "Pine Tree", "Stump", "Cactus", "Playtime", "Honey", "Pineapple", "Clover", "Sunflower"}) do
			wait()
			BadgeEvent:FireServer("Collect", badge)
		end
	end
end)
Pepsi.Splash("Setting up Loops 27", 6)
wait(0.1)
-- Face bees (petal wand)
if not shitploit then -- Simple... yet exploit breaking
	spawn(function()
		while wait() do
			pcall(function()
				while not shared.PepsiSwarm.mods.facebees do
					wait(0.1)
					Pepsi.Obj(Pepsi.Torso(), "BodyGyro", "Destroy", {namecall = true})
				end
				local torso = Pepsi.Torso()
				if torso then
					local bm = torso:FindFirstChildOfClass("BodyGyro") or Instance.make("BodyGyro", {
						D = tonumber(shared.D or 450),
						P = tonumber(shared.P or 5000),
						MaxTorque = Vector3.new(0, 0, 0), -- Dorment
						Protect = true, -- In the event that Onett decides to make an anticheat.
						Parent = torso
					})
					if bm then
						local bee = Pepsi.Closest(workspace:FindFirstChild("Bees") or {}) -- Bee
						if bee and shared.PepsiSwarm.mods.facebees then
							bm.CFrame = CFrame.Look(bee, torso)
							bm.MaxTorque = Vector3.new(0, math.huge, 0)
							bm.D = tonumber(shared.D or 450)
							bm.P = tonumber(shared.P or 5000)
						elseif bm then -- Fuckup
							bm:Destroy()
						end
					end
				end
			end)
		end
	end)
end
Pepsi.Splash("Setting up Loops 28", 6)
wait(0.1)

-- Hide Bees
spawn(function()
	while wait() do
		while wait(1) and shared.PepsiSwarm.panic do
			wait(2)
		end
		pcall(function()
			for _, b in pairs(workspace:FindFirstChild("Bees"):GetDescendants()) do
				sleep(1)
				pcall(function()
					if b:IsA("BasePart") then
						b.LocalTransparencyModifier = shared.PepsiSwarm.mods.bhide and 1 or 0
					elseif b.Transparency then
						b.Transparency = shared.PepsiSwarm.mods.bhide and 1 or 0
					end
				end)
			end
		end)
	end
end)

Pepsi.Splash("Setting up Loops 29", 6)
wait(0.1)

-- Spinner (Fun stuff)
if not shitploit then -- Simple... yet exploit breaking
	spawn(function()
		local x = 0
		while wait() do
			x = (1 + (x or 0)) % 60
			pcall(function()
				while not shared.PepsiSwarm.mods.spin or h.FloorMaterial == 0x700 or shared.PepsiSwarm.honey or shared.PepsiSwarm.showering or x == 30 do
					x = (1 + (x or 0)) % 60
					Pepsi.Obj(Pepsi.Torso(), "BodyAngularVelocity", "Destroy", {namecall = true})
					wait(0.06)
				end
				local h = Pepsi.Human()
				local torso = h and h.RootPart
				if h and torso and h.FloorMaterial ~= 0x700 and shared.PepsiSwarm.mods.spin and not shared.PepsiSwarm.showering and not shared.PepsiSwarm.honey then
					local ground = h.FloorMaterial ~= 0x700 and not shared.PepsiSwarm.showering and not shared.PepsiSwarm.honey
					local bm = torso:FindFirstChildOfClass("BodyAngularVelocity") or Instance.make("BodyAngularVelocity", {
						P = tonumber(shared.P or 0),
						MaxTorque = ground and Vector3.new(0, math.huge, 0) or Vector3.new(0, 150, 0),
						AngularVelocity = shared.ar or (ground and Vector3.new(0, shared.PepsiSwarm.values.spin, 0) or Vector3.new(0, -math.sqrt(shared.PepsiSwarm.values.spin), 0)),
						Protect = true, -- In the event that Onett decides to make an anticheat.
						Parent = torso
					})
					bm.P = tonumber(shared.P or 0)
					bm.MaxTorque = ground and Vector3.new(0, math.huge, 0) or Vector3.new(0, 150, 0)
					bm.AngularVelocity = shared.ar or (ground and Vector3.new(0, shared.PepsiSwarm.values.spin, 0) or Vector3.new(0, 0, 0))
				else
					Pepsi.Obj(Pepsi.Torso(), "BodyAngularVelocity", "Destroy", {namecall = true})
				end
			end)
		end
	end)
end

Pepsi.Splash("Setting up Loops 30", 6)
wait(0.1)

-- Auto Buy
spawn(function()
	local last_buy = time()
	while wait() do
		while wait(0.1) and (shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.autobuy) do
		end
		local ct = time()
		while shared.PepsiSwarm.values.buyrate > ct - last_buy and wait() do
			ct = time()
		end
		ItemPackageEvent:InvokeServer("Purchase", {
			Type = shared.PepsiSwarm.values.pitem,
			Category = "Eggs",
			Mute = false,
			Amount = shared.PepsiSwarm.values.pamount
		})
		last_buy = time()
	end
end)

Pepsi.Splash("Setting up Loops 31", 6)
wait(0.1)

-- Auto Jelly Reroll
spawn(function()
	while wait() do
		if shared.PepsiSwarm.mods.rj then
			local eui = Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "BeePopUp")
			if eui then
				local magic_button = eui:FindFirstChild("JellyReroll")
				if magic_button and magic_button.Visible and shared.PepsiSwarm.mods.rj and eui.Visible then
					local reroll = true
					magic_button.MouseButton1Click:Wait()
					while shared.PepsiSwarm.mods.rj and wait(0.25) do
						if magic_button and magic_button.Visible and shared.PepsiSwarm.mods.rj then
							local typ = Pepsi.Obj({default = ""}, eui, "TypeName", "Text")
							local rar = Pepsi.Obj({default = ""}, eui, "ColorAndRarity", "Text")
							local mut = not not Pepsi.Obj({default = false}, eui, "MutationFrame", "Visible")
							local gft = not not string.rawfind(tostring(typ or ""), "\226\173\144 Gifted")
							local clr = Pepsi.Obj({default = Color3.new()}, eui, "ColorAndRarity", "BackgroundColor3") -- Red:41, Blue:43
							clr = tonumber(tonumber((BrickColor.new(clr or Color3.new()) or BrickColor.new()).Number or 0) or 0)
							clr = (clr == 41 and "Red") or (clr == 43 and "Blue") or "Colorless"
							reroll = false
							if gft and (shared.PepsiSwarm.values.rjg or shared.PepsiSwarm.values.rjgstop) then
								break
							end
							if not reroll and shared.PepsiSwarm.values.rjm and not mut then -- Mutation Failed
								reroll = true
							end
							if not reroll and shared.PepsiSwarm.values.rjg and not gft and not shared.PepsiSwarm.values.rjgstop then -- Gifted Failed
								reroll = true
							end
							if not reroll and shared.PepsiSwarm.values.rjc and clr ~= shared.PepsiSwarm.values.rjbc then -- Color Failed
								reroll = true
							end
							if not reroll and shared.PepsiSwarm.values.rjr then -- Color Failed
								local accept = {
									Common = false,
									Rare = false,
									Epic = false,
									Legendary = false,
									Mythic = false,
								}
								accept[shared.PepsiSwarm.values.rjmr] = true
								if accept.Common then -- No point in checking for this shit, if you just put on common.
									accept.Rare = true
									accept.Epic = true
									accept.Legendary = true
									accept.Mythic = true
								end
								if accept.Rare then
									accept.Epic = true
									accept.Legendary = true
									accept.Mythic = true
								end
								if accept.Epic then
									accept.Legendary = true
									accept.Mythic = true
								end
								if accept.Legendary then
									accept.Mythic = true
								end
								local pass = 0
								for rarity, allow in pairs(accept) do
									if allow then
										if not not string.rawfind(rar, rarity) then
											pass = 1 + pass
										end
									end
								end
								reroll = 0 == pass
							end
							if not reroll and shared.PepsiSwarm.values.rjt then
								local pass = 0
								for v, _ in pairs(shared.PepsiSwarm.btypes) do
									if not not string.rawfind(typ, v) then
										pass = 1 + pass
									end
								end
								reroll = 0 == pass
							end
							if not reroll or not shared.PepsiSwarm.mods.rj or not magic_button or not magic_button.Visible or not eui.Visible then
								break
							end
							Pepsi.Lp.CameraMinZoomDistance, Pepsi.Lp.CameraMaxZoomDistance = 2, 0x400
							wait()
							Pepsi.GuiClick(magic_button, 1, true)
						end
					end
				end
			end
		end
	end
end)

Pepsi.Splash("Setting up Loops 32", 6)
wait(0.1)

-- Labels
spawn(function()
	while wait(1) do
		if string.fromtime then
			local shrine = getstats("SystemTimes", 5)
			local times = getstats("ToyTimes", 5)
			if type(shared.PepsiSwarm.gui.wstime.Set) == "function" and type(shrine) == "table" and shrine.WindShrine then
				sleep(1)
				shared.PepsiSwarm.gui.wstime.Set("Shrine: " .. string.fromtime(servertick(shrine.WindShrine, 3600), "Ready!"))
			end
			if times then
				if times["Memory Match"] and shared.PepsiSwarm.gui.mmtime.Set then
					local c = shared.PepsiSwarm.toy_cd["Memory Match"]
					if c then
						local ct = Toys:FindFirstChild("Memory Match")
						if ct and c == true or not tonumber(c) then
							local cd = ct:FindFirstChild("Cooldown")
							shared.PepsiSwarm.toy_cd["Memory Match"] = (cd and cd.Value) or nil
							c = shared.PepsiSwarm.toy_cd["Memory Match"] or nil
						end
						if c then
							sleep(1)
							shared.PepsiSwarm.gui.mmtime.Set("Match: " .. string.fromtime(servertick(times["Memory Match"], c), "Ready!"))
						end
					end
				end
				if times["Mega Memory Match"] and shared.PepsiSwarm.gui.mmmtime.Set then
					local c = shared.PepsiSwarm.toy_cd["Mega Memory Match"]
					if c then
						local ct = Toys:FindFirstChild("Mega Memory Match")
						if ct and c == true or not tonumber(c) then
							local cd = ct:FindFirstChild("Cooldown")
							shared.PepsiSwarm.toy_cd["Mega Memory Match"] = (cd and cd.Value) or nil
							c = shared.PepsiSwarm.toy_cd["Mega Memory Match"] or nil
						end
						if c then
							sleep(1)
							shared.PepsiSwarm.gui.mmmtime.Set("Mega Match: " .. string.fromtime(servertick(times["Mega Memory Match"], c), "Ready!"))
						end
					end
				end
				if times["Night Memory Match"] and shared.PepsiSwarm.gui.nmmtime.Set then
					local c = shared.PepsiSwarm.toy_cd["Night Memory Match"]
					if c then
						local ct = Toys:FindFirstChild("Night Memory Match")
						if ct and c == true or not tonumber(c) then
							local cd = ct:FindFirstChild("Cooldown")
							shared.PepsiSwarm.toy_cd["Night Memory Match"] = (cd and cd.Value) or nil
							c = shared.PepsiSwarm.toy_cd["Night Memory Match"] or nil
						end
						if c then
							sleep(1)
							shared.PepsiSwarm.gui.nmmtime.Set("Night Match: " .. string.fromtime(servertick(times["Night Memory Match"], c), "Ready!"))
						end
					end
				end
				if times["Extreme Memory Match"] and shared.PepsiSwarm.gui.emmtime.Set then
					local c = shared.PepsiSwarm.toy_cd["Extreme Memory Match"]
					if c then
						local ct = Toys:FindFirstChild("Extreme Memory Match")
						if ct and c == true or not tonumber(c) then
							local cd = ct:FindFirstChild("Cooldown")
							shared.PepsiSwarm.toy_cd["Extreme Memory Match"] = (cd and cd.Value) or nil
							c = shared.PepsiSwarm.toy_cd["Extreme Memory Match"] or nil
						end
						if c then
							sleep(1)
							shared.PepsiSwarm.gui.emmtime.Set("Extreme Match: " .. string.fromtime(servertick(times["Extreme Memory Match"], c), "Ready!"))
						end
					end
				end
			end
		end
		for monster, data in pairs(shared.PepsiSwarm.gui.mstime) do
			sleep(1)
			local func, l = data[1].Set, data[#data]
			if type(func) == "function" and typeof(l) == "Instance" then
				func(monster .. ": " .. tostring(string.subfind(string.gsub(l.Text, "\n", " "), ": ", nil, false, nil, true) or "Ready!"))
			end
		end
	end
end)

Pepsi.Splash("Setting up Loops 33", 6)
wait(0.1)

spawn(function()
	while wait() do
		for _, data in pairs(shared.PepsiSwarm.gui.mstime) do
			sleep(1)
			local l = data[#data]
			if typeof(l) == "Instance" then
				local s = l:GetPropertyChangedSignal("Text")
				if s then
					if false == Pepsi.WaitUntil(s, 3, false) then
						l.Text = "" -- Fuck Onett for not updating text. He just fucking hides the text.
					end
				end
			end
		end
	end
end)

Pepsi.Splash("Setting up Loops 34", 6)
wait(0.1)

-- Sprout planter
spawn(function()
	local f2 = Pepsi.Obj({
		wfc = true
	}, Particles, "Folder2")
	local Lighting = Pepsi.Service("Lighting")
	while wait(1) do
		while shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.sproutspam do
			wait(1)
		end
		if PlayerActivesCommand and not shared.PepsiSwarm.panic and shared.PepsiSwarm.mods.sproutspam and (not shared.PepsiSwarm.values.sproutnight or Lighting.TimeOfDay == "00:20:59") and (not shared.PepsiSwarm.values.sproutsingle or not f2:FindFirstChild("Spotlight")) then
			PlayerActivesCommand:FireServer({Name = "Magic Bean"})
			wait(shared.PepsiSwarm.values.sproutrate or 25)
		end
	end
end)

Pepsi.Splash("Setting up Loops 35", 6)
wait(0.1)

spawn(function() -- Fuck anti cheat
	while wait(0.1) do
		if string.lower(shared.PepsiSwarm.values.inve) == "elite scythe" or "honey hammer" == string.lower(shared.PepsiSwarm.values.inve) then
			shared.PepsiSwarm.values.inve = ""
		elseif string.lower(shared.PepsiSwarm.values.inveb) == "elite scythe" or "honey hammer" == string.lower(shared.PepsiSwarm.values.inveb) then
			shared.PepsiSwarm.values.inveb = ""
		end
	end
end)


Pepsi.Splash("Setting up Loops 36", 6)
wait(0.1)

-- Marshmallow bee
if not shitploit then -- Idk why, but this crashes trash exploits
	spawn(function()
		shared.PepsiSwarm.mbcool = time() - servertick(Pepsi.Obj({default = OsTime.Value}, getstats("PlayerActiveTimes", 1), "Marshmallow Bee")) + 5
		while wait(1) do
			pcall(function()
				while wait(1) and (shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.marshbee or time() - shared.PepsiSwarm.mbcool < 1860) do
				end
				local num = tonumber(rawget(getstats("Eggs", 5), "MarshmallowBee") or 0)
				if shared.PepsiSwarm.mods.marshbee and ((not shared.PepsiSwarm.values.marshbeef and num > 0) or num > 15) then
					shared.PepsiSwarm.mbcool = time()
					PlayerActivesCommand:FireServer({
						Name = "Marshmallow Bee"
					})
				elseif not ((not shared.PepsiSwarm.values.marshbeef and num > 0) or num > 15) or time() - shared.PepsiSwarm.mbcool < 1860 then
					wait(3) -- We won't be collecting them every second...
				end
			end)
		end
	end)
end


Pepsi.Splash("Setting up Loops 37", 6)
wait(0.1)

-- Auto stingers
if not shitploit then
	spawn(function()
		shared.PepsiSwarm.stingercool = time() - servertick(Pepsi.Obj({default = OsTime.Value}, getstats("PlayerActiveTimes", 1), "Stinger")) + 5
		while wait(1) do
			pcall(function()
				while wait(1) and (shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.dostingers or time() - shared.PepsiSwarm.stingercool < 30.5 or (shared.PepsiSwarm.values.stingercheck and not nearestmob(true, 60))) do
				end
				local num = tonumber(rawget(getstats("Eggs", 5), "Stinger") or 0)
				if shared.PepsiSwarm.mods.dostingers then
					shared.PepsiSwarm.stingercool = time()
					PlayerActivesCommand:FireServer({
						Name = "Stinger"
					})
				elseif time() - shared.PepsiSwarm.stingercool < 30.5 then
					wait((shared.PepsiSwarm.mods.dostingers and 1) or 2) -- We won't have a target every 30 seconds...
				end
			end)
		end
	end)
end


Pepsi.Splash("Setting up Loops 38", 6)
wait(0.1)

-- Auto star catcher
spawn(function()
	while wait() do
		local x, e = pcall(function()
			local disk = not shared.PepsiSwarm.panic and shared.PepsiSwarm.mods.showercatch and Particles:FindFirstChild("WarningDisk")
			if disk then
				hunting = true
				shared.PepsiSwarm.showering = true
				shared.PepsiSwarm.maytp = false
				shared.PepsiSwarm.running = false
				shared.PepsiSwarm.allowfarm = false
				local prize, t, s = false, false, false
				for _, disk in ipairs(Particles:GetChildren()) do
					if shared.PepsiSwarm.mods.showercatch and disk.Name == "WarningDisk" and (disk.BrickColor.Number == 0x3FC or disk.BrickColor.Number == 0x407) then
						if not prize or not t or not s or t > disk.Transparency or (t >= disk.Transparency and disk.Size.Magnitude > s) then
							prize, t, s = disk, disk.Transparency, disk.Size.Magnitude
						end
					end
				end
				if prize and shared.PepsiSwarm.mods.showercatch then
					hunting = true
					shared.PepsiSwarm.showering = true
					shared.PepsiSwarm.maytp = false
					shared.PepsiSwarm.running = false
					shared.PepsiSwarm.allowfarm = false
					tp(disk.Position + Vector3.new(0, 2), nil, true)
				end	
			else
				wait((shared.PepsiSwarm.mods.showercatch and 0.1) or 0.5)
				if shared.PepsiSwarm.showering then
					wait(0.1)
					shared.PepsiSwarm.showering = nil
					shared.PepsiSwarm.maytp = true
					shared.PepsiSwarm.running = true
					shared.PepsiSwarm.allowfarm = true
					hunting = false
				end
			end
		end)
		if not x and e then
			warn(e, "\n", (debug and debug.traceback and debug.traceback()) or "")
		end
		if shared.PepsiSwarm.showering then
			wait(0.1)
			shared.PepsiSwarm.showering = nil
			shared.PepsiSwarm.maytp = true
			shared.PepsiSwarm.running = true
			shared.PepsiSwarm.allowfarm = true
			hunting = false
		end
	end
end)

Pepsi.Splash("Setting up Loops 39", 6)
wait(0.1)

-- Coconuts
spawn(function()
	shared.PepsiSwarm.coconutcool = time() - servertick(Pepsi.Obj({default = OsTime.Value}, getstats("PlayerActiveTimes", 1), "Coconut")) + 5
	while wait(1) do
		pcall(function()
			while wait(1) and (shared.PepsiSwarm.panic or not shared.PepsiSwarm.mods.usecoconuts or time() - shared.PepsiSwarm.coconutcool < 25) do
			end
			local num = tonumber(rawget(getstats("Eggs", 5), "Coconut") or 0)
			if shared.PepsiSwarm.mods.usecoconuts and ((not shared.PepsiSwarm.values.usecoconutsf and num > 0) or num > 130) then
				shared.PepsiSwarm.coconutcool = time()
				PlayerActivesCommand:FireServer({
					Name = "Coconut"
				})
			elseif not ((not shared.PepsiSwarm.values.usecoconutsf and num > 0) or num > 130 or time() - shared.PepsiSwarm.coconutcool < 25) then
				wait(3) -- We won't be collecting them every 10 seconds...
			end
		end)
	end
end)

Pepsi.Splash("Setting up Loops 40", 6)
wait(0.1)
-- Train commando chick
spawn(function()
	while not shared.PepsiSwarm.running do
		Pepsi.State(11, false)
		restate()
		wait(0.1)
	end
	while wait(1) do
		while shared.PepsiSwarm.panic do	
			restate()
			wait(0.1)
		end
		Pepsi.State(11, false)
		while shared.PepsiSwarm.mods.tchick and wait(0.1) do
			if shared.PepsiSwarm.panic or shared.PepsiSwarm.honey then
				Pepsi.State(11, false)
				restate()
				break
			end
			--Pepsi.State(11, true)
			local h = Pepsi.Human()
			local tor = h and h.RootPart
			if tor then
				pcall(function()
					if shared.PepsiSwarm.maytp and string.find(shared.PepsiSwarm.gui.mstime["Commando Chick"][1][1].Text, "Ready!", 14, true) then
						local t = time()
						while wait() and time() - t < 2 and shared.PepsiSwarm.maytp and shared.PepsiSwarm.mods.tchick and not shared.PepsiSwarm.panic and not shared.PepsiSwarm.honey and tor and h.Health > 0 and string.find(shared.PepsiSwarm.gui.mstime["Commando Chick"][1][1].Text, "Ready!", 14, true) do
							tor.CFrame = CFrame.new(522.709534, 72.2117844, 163.78537)
							tor.Velocity = Vector3.new()
							tor.RotVelocity = Vector3.new()
							local craby = table.filterfunc(Monsters:GetChildren(), function(crab)
								return shared.PepsiSwarm.mods.tchick and crab and Pepsi.Obj(crab, "Target", "Value") == Pepsi.Char() and Pepsi.Obj(crab, "MonsterType", "Value") == "Commando Chick"
							end)
							if #craby > 0 then
								break
							end
						end
					end
				end)
				local craby = table.filterfunc(Monsters:GetChildren(), function(crab)
					return shared.PepsiSwarm.mods.tchick and crab and Pepsi.Obj(crab, "Target", "Value") == Pepsi.Char() and Pepsi.Obj(crab, "MonsterType", "Value") == "Commando Chick"
				end)
				while Pepsi.Rs:Wait() and h and tor and type(craby) == "table" and #craby > 0 and shared.PepsiSwarm.mods.tchick do
					shared.PepsiSwarm.maytp = not shared.PepsiSwarm.mods.tchick
					Pepsi.State(11, true)
					Pepsi.ncall(h, "ChangeState", 11)
					local chickpos = Pepsi.ToVector3(craby[1])
					chickpos = Vector3.new(chickpos.X, 72.21, chickpos.Z)
					tor.CFrame = CFrame.new(Vector3.new(522, 72.21, 163):Lerp(chickpos, 0.5))
					craby = table.filterfunc(Monsters:GetChildren(), function(crab)
						return shared.PepsiSwarm.mods.tchick and crab and Pepsi.Obj(crab, "Target", "Value") == Pepsi.Char() and Pepsi.Obj(crab, "MonsterType", "Value") == "Commando Chick"
					end)
					if h.Health <= 0 then
						break
					end
				end
			end
			h = Pepsi.Human()
			tor = h and h.RootPart
			if h then
				restate()
				if h:GetState() == 11 then
					restate()
					Pepsi.ncall(h, "ChangeState", 10)
					shared.PepsiSwarm.maytp = true
				end
			end
			Pepsi.State(11, false)
		end
	end
end)

Pepsi.Splash("Generating Loot Table", 6)
wait(0.1)

-- Generate loot tables
if writefile and appendfile then
	spawn(function()
		pcall(function()
			local file = "bee_swarm_loot_table.txt"
			writefile(file, "Loot Table for Bee Simulator (From PepsiSwarm)\n")
			for k, v in pairs(shared.PepsiSwarm.fieldinfo) do
				sleep(1)
				if v and v.Values and v.Values.Loot then
					appendfile(file, tostring(tostring(k) .. "\n"))
					for loot, value in pairs(v.Values.Loot) do
						sleep(1)
						local space = tonumber(16 - #tostring(tostring(loot) .. ":"))
						appendfile(file, tostring("\t" .. tostring(loot) .. ":" .. string.rep(" ", tonumber(tonumber(space or 1) or 1)) .. tostring(value) .. "\n"))
					end
				end
			end
			return print("Loot table generated to workspace\\bee_swarm_loot_table.txt")
		end)
	end)
end

Pepsi.Splash("Scraping NPCs", 6)
wait(0.1)

-- Quest Cull
spawn(function()
	_, shared.PepsiSwarm.npcs = getnpcs()
end)

Flowers.DescendantAdded:Connect(checkloot) -- Very buggy. Not worth the addition, but requested

Pepsi.Splash("Setting up Connections 1", 6)
wait(0.1)

Collectibles.ChildAdded:Connect(ckcoin)
Collectibles.DescendantAdded:Connect(function(d)
	if d.ClassName == "Decal" and typeof(d.Parent) == "Instance" and d.Parent:IsA("BasePart") then
		local dc, c = tostring(string.gsub(d.Texture, "%D", "")), d.Parent
		if c.Transparency < 0.2 and c.Size.Y < 5 and validc(c) then
			return Pepsi.Mark(c, dc)
		end
	end
end)

Pepsi.Splash("Setting up Connections 2", 6)
wait(0.1)

if not shitploit then
	shared.PepsiSwarm.keyconnection = (shared.PepsiSwarm.keyconnection and shared.PepsiSwarm.keyconnection:Disconnect() and false) or Pepsi.OnKey(shared.PepsiSwarm.values.panic, function()
		if shared.PepsiSwarm and shared.PepsiSwarm.values.panickb then
			shared.PepsiSwarm.panic = not shared.PepsiSwarm.panic
			Pepsi.Hint(shared.PepsiSwarm.panic and tostring("PAUSED - " .. tostring(tostring(shared.PepsiSwarm.values.panic.Name) or "KEY PRESSED")) or "Resumed")
		else
			Pepsi.Hint("Bind Disabled")
		end
	end)
end

Pepsi.Splash("Setting up Connections 3", 6)
wait(0.1)

shared.PepsiSwarm.keyconnection2 = (shared.PepsiSwarm.keyconnection2 and shared.PepsiSwarm.keyconnection2:Disconnect() and false) or Pepsi.OnKey(shared.PepsiSwarm.values.homekey, function()
	if shared.PepsiSwarm and shared.PepsiSwarm.values.hivetp and shared.PepsiSwarm.GotoHive then
		shared.PepsiSwarm.GotoHive()
	end
end)

Pepsi.Splash("Setting up Connections 4", 6)
wait(0.1)

local sg = assert(game:FindService("StarterGui") or game:GetService("StarterGui"), "StarterGui missing.")
function newchar(c)
	sg:SetCore("ResetButtonCallback", true)
	if not shared.PepsiSwarm.running then
		shared.fleeing = false
		wait(20) -- Give bees chance/time to wake
		shared.PepsiSwarm.running = true
	end
	local h = Pepsi.Human()
	while not h and wait() do
		h = Pepsi.Human()
	end
	if h then
		h.Died:Connect(function()
			shared.PepsiSwarm.running = false
		end)
		wait(1)
		local tool = shared.PepsiSwarm.mods.scoop and dbg and dbg.sc and dbg.gse and Pepsi.Tool()
		if tool then
			pcall(function()
				pcall(dbg.sc, rawget(dbg.gse(tool:FindFirstChild("ClientScriptMouse")), "collectStart"), 11, ((shared.PepsiSwarm.mods.scoop and "GetMouseButtonsPressed") or "IsMouseButtonPressed"))
			end)
			Pepsi.Mark(tool, "scoop")
		end
		--local sig = h:GetPropertyChangedSignal("Health")
		--if sig then -- As if it's possible for it to not exist.
		--	sig:Connect(function(hp)
		--		hp = h and h.Health
		--		if (shared.fleeing or not shared.PepsiSwarm.panic) and h and h.Health > 0 and h.RootPart then
		--			if shared.PepsiSwarm.mods.fleewhenlow and (shared.PepsiSwarm.values.fleeat <= 0 or hp > math.clamp(shared.PepsiSwarm.values.fleeat + 40, 0, 100)) then
		--				Pepsi.Hint("Low HP - Paused", 160)
		--				shared.PepsiSwarm.panic = not shared.PepsiSwarm.values.fleenotarget
		--				shared.running = false
		--				shared.fleeing = true
		--				if shared.PepsiSwarm.values.fleenotarget then
		--					shared.ps_old_hip = shared.ps_old_hip or (h and h.HipHeight) or 2.76
		--					h.HipHeight = math.min(6, shared.ps_old_hip + 4)
		--				else
		--					tp((shared.PepsiSwarm.teleports.Home and shared.PepsiSwarm.teleports.Home.Position) or shared.PepsiSwarm.home or Vector3.new(-114, 5.7, 271))
		--				end
		--			elseif shared.fleeing and (shared.PepsiSwarm.values.fleeat <= 0 or hp > math.clamp(shared.PepsiSwarm.values.fleeat + 40, 0, 100)) then
		--				Pepsi.Hint("Low HP - Resumed")
		--				shared.PepsiSwarm.panic = false
		--				shared.fleeing = false
		--				shared.running = true
		--				h.HipHeight = (shared.PepsiSwarm.values.fleenotarget and (shared.ps_old_hip or 2.76)) or h.HipHeight or 2.76
		--			end
		--		end
		--	end)
		--end
	end
end
Pepsi.Lp.CharacterAdded:Connect(newchar)

Pepsi.Splash("Setting up Connections 5", 6)
wait(0.1)

local __sq_cd = time()
Pepsi.Lp.Idled:Connect(function()
	wait(3)
	pcall(function()
		local ct = time()
		if shared.PepsiSwarm.mods.sq and ct - __sq_cd > 5 then
			__sq_cd = ct
			local menus = Pepsi.Obj(Pepsi.Lp, "PlayerGui", "ScreenGui", "Menus")
			if menus and shared.PepsiSwarm.mods.sq and #Pepsi.Obj({default = {}}, menus, "Children", "Quests", "Content", "GetChildren", {namecall = true}) <= 0 then
				local children = table.filterfunc(Pepsi.Obj({default = {}}, menus, "ChildTabs", "GetDescendants", {namecall = true}), function(i)
					return i and i.Name == "Icon" and i.ClassName == "ImageLabel" and i.Image == "rbxassetid://1436835355"
				end)
				if type(children) == "table" and #children > 0 then
					local child = assert(children[1].Parent)
					pcall(Pepsi.LeftClick, child.Position.X.Offset, child.Position.Y.Offset + 38)
					if mousemoverel then
						pcall(mousemoverel, 1, 0)
					end
				end
			end
		end
	end)
end)

if Pepsi.Lp.UserId ~= 818731954 then
	spawn(function()
		newchar(Pepsi.Char())
	end)
else
	newchar(Pepsi.Char()) -- Personal prefernce
end

if readfile and writefile then
	Pepsi.Splash("Setting up Connections 6", 6)
	wait(0.1)
	spawn(function()
		Pepsi.Service("GuiService").UiMessageChanged:Wait()
		--Pepsi.Service("GuiService"):ClearError()
		shared.PepsiSwarm.exporttokens()
	end)
end

--local PlayerActivesCommand = assert(game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerActivesCommand"), "PlayerActivesCommand Missing!")
--local pos = workspace.CurrentCamera.CameraSubject.RootPart.CFrame
--local ct = time()
--shared.id = ct
--shared.PepsiSwarm.mods.sq = false
--wait(60 * 14)
--if shared.id == ct then
--	shared.PepsiSwarm.mods.sq = false
--	local t = workspace.CurrentCamera.CameraSubject.RootPart
--	for k = 1, 400 do
--		if shared.id ~= ct then
--			return
--		end
--		t.CFrame = pos
--		Pepsi.Tick:Wait()
--		if k == 300 then
--			PlayerActivesCommand:FireServer({
--				Name = "Glitter"
--			})
--		end
--	end
--	shared.PepsiSwarm.mods.sq = false
--	wait(920)
--	if shared.id == ct then
--		shared.PepsiSwarm.mods.sq = true
--		shared.id = nil
--	end
--end

return Pepsi.Splash("All Set!", 0.75)