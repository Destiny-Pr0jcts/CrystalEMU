DELETE FROM `spell_proc_event` WHERE `entry` IN (71880,71892);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(71880,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,1,0,0), -- Item - Icecrown 25 Normal Dagger Proc
(71892,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,1,0,0); -- Item - Icecrown 25 Heroic Dagger Proc
-- Vehicle updates
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=25765; -- Fizzcrank Bomber
UPDATE `creature_template` SET `speed_run`=3.42857 WHERE `entry`=26572; -- Kor'kron War Rider
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=29500; -- Brunnhildar Warbear
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=30174; -- Hyldsmeet Warbear
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32768,`speed_walk`=1.444444,`speed_run`=1.5873 WHERE `entry`=30228; -- Argent Skytalon
UPDATE `creature_template` SET `exp`=0,`speed_run`=1.38571 WHERE `entry`=31269; -- Kor'kron Battle Wyvern
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=31881; -- Kor'kron Troop Transport
UPDATE `creature_template` SET `speed_walk`=2.8,`speed_run`=1.71429 WHERE `entry`=29351; -- Niffelem Frost Giant
UPDATE `creature_template` SET `speed_walk`=2.8,`speed_run`=1.71429 WHERE `entry`=29358; -- Frostworg
UPDATE `creature_template` SET `speed_run`=0.99206 WHERE `entry`=29931; -- Drakkari Rhino
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33587200,`speed_walk`=2,`speed_run`=1.71429 WHERE `entry`=30204; -- Forgotten Depths Ambusher
UPDATE `creature_template` SET `speed_walk`=1.444444 WHERE `entry`=36891; -- Iceborn Proto-Drake
UPDATE `creature_template` SET `exp`=0,`baseattacktime`=2000,`speed_run`=1.38571 WHERE `entry`=38500; -- Argent Warhorse

UPDATE `creature_model_info` SET `bounding_radius`=0.15,`combat_reach`=2.5,`gender`=0 WHERE `modelid`=31187; -- Argent Skytalon
UPDATE `creature_model_info` SET `bounding_radius`=0.825,`combat_reach`=4.125,`gender`=0 WHERE `modelid`=26388; -- Brunnhildar Warbear
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1,`gender`=0 WHERE `modelid`=17722; -- Kor'kron Battle Wyvern
UPDATE `creature_model_info` SET `bounding_radius`=1.68025,`combat_reach`=4.125,`gender`=0 WHERE `modelid`=26323; -- Injured Icemaw Matriarch
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=6,`gender`=0 WHERE `modelid`=24531; -- Niffelem Frost Giant
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=0,`gender`=0 WHERE `modelid`=26331; -- Frostworg
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=25729; -- Forgotten Depths Ambusher

DELETE FROM `creature_template_addon` WHERE `entry` IN (24418,25765,26572,27761,28054,29500,30013,30174,30228,31269,31881,29563,29351,29358,29931,30204,36476,36794,36891,36896,38500);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(24418,0,33554433,1,0, NULL), -- Steel Gate Flying Machine
(25765,0,0,1,0, NULL), -- Fizzcrank Bomber
(26572,0,0,1,0, NULL), -- Kor'kron War Rider
(27761,0,65536,1,0, NULL), -- Fordragon Battle Steed
(28054,0,4,257,0, NULL), -- Lucky Wilhelm
(29500,0,0,1,0, NULL), -- Brunnhildar Warbear
(30013,0,50331648,1,0, NULL), -- Stormcrest Eagle
(30174,0,0,1,0, NULL), -- Hyldsmeet Warbear
(30228,0,50331648,1,0, NULL), -- Argent Skytalon
(31269,0,50331648,1,0, NULL), -- Kor'kron Battle Wyvern
(31881,0,50331649,1,0, NULL), -- Kor'kron Troop Transport
(29563,0,7,1,0, NULL), -- Injured Icemaw Matriarch
(29351,0,0,1,0, NULL), -- Niffelem Frost Giant
(29358,0,0,1,0, NULL), -- Frostworg
(29931,0,0,1,0, NULL), -- Drakkari Rhino
(30204,0,0,1,0, '56422 0'), -- Forgotten Depths Ambusher, Auras: Nerubian Submerge
(36476,0,0,1,0, NULL), -- Ick
(36794,0,0,1,0, NULL), -- Scourgelord Tyrannus
(36891,0,0,1,0, NULL), -- Iceborn Proto-Drake
(36896,0,0,1,0, NULL), -- Stonespine Gargoyle
(38500,0,0,1,0, NULL); -- Argent Warhorse

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (24418,25765,26572,27761,28054,29500,30013,30174,30228,31269,31269,29563,28222,24750,27241,28018,29351,29358,29698,29931,30204,36477,36794,36891,36896,38500);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(24418,43768,0,0,0,3,0,0,0),  -- Steel Gate Flying Machine - Flying Machine Controls
(25765,43671,0,0,0,1,0,0,0),  -- Fizzcrank Bomber - Ride Vehicle
(26572,46598,0,0,0,1,0,0,0),  -- Kor'kron War Rider - Ride Vehicle Hardcoded
(27761,43671,0,0,0,1,0,0,0),  -- Fordragon Battle Steed - Ride Vehicle
(28054,50556,0,0,0,1,0,0,0),  -- Lucky Wilhelm - Ride Wilhelm
(29500,46598,0,0,0,1,0,0,0),  -- Brunnhildar Warbear - Ride Vehicle Hardcoded
(30013,43671,0,0,0,1,0,0,0),  -- Stormcrest Eagle - Ride Vehicle
(30174,46598,0,0,0,1,0,0,0),  -- Hyldsmeet Warbear - Ride Vehicle Hardcoded
(30228,56678,0,0,0,1,0,0,0),  -- Argent Skytalon - Command Argent Skytalon
(31269,46598,0,0,0,1,0,0,0),  -- Kor'kron Battle Wyvern - Ride Vehicle Hardcoded
(31269,46598,0,0,0,1,0,0,0),  -- Kor'kron Troop Transport - Ride Vehicle Hardcoded
(29563,56795,12983,1,1,2,0,0,0), -- Injured Icemaw Matriarch - Harnessed Icemaw Matriarch
(28222,52082,0,0,0,1,0,0,0),  -- The Etymidian - The Etymidian's Call
(24750,46598,0,0,0,1,0,0,0), -- Hidalgo the Master Falconer - Ride Vehicle Hardcoded
(27241,46598,0,0,0,1,0,0,0), -- Risen Gryphon - Ride Vehicle Hardcoded
(28018,46598,0,0,0,1,0,0,0), -- Thiassi the Lightning Bringer - Ride Vehicle Hardcoded
(29351,46598,0,0,0,1,0,0,0), -- Niffelem Frost Giant - Ride Vehicle Hardcoded
(29358,46598,0,0,0,1,0,0,0), -- Frostworg - Ride Vehicle Hardcoded
(29698,46598,0,0,0,1,0,0,0), -- Drakuru Raptor - Ride Vehicle Hardcoded
(29931,46598,0,0,0,1,0,0,0), -- Drakkari Rhino - Ride Vehicle Hardcoded
(30204,46598,0,0,0,1,0,0,0), -- Forgotten Depths Ambusher - Ride Vehicle Hardcoded
(36477,46598,0,0,0,0,0,0,0), -- Krick - Ride Vehicle Hardcoded
(36794,46598,0,0,0,1,0,0,0), -- Scourgelord Tyrannus - Ride Vehicle Hardcoded
(36891,46598,0,0,0,1,0,0,0), -- Iceborn Proto-Drake - Ride Vehicle Hardcoded
(36896,46598,0,0,0,1,0,0,0), -- Stonespine Gargoyle - Ride Vehicle Hardcoded
(38500,46598,0,0,0,1,0,0,0); -- Argent Warhorse - Ride Vehicle Hardcoded

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=43768;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
(13,0,43768,0,18,1,24418,0, 'Steel Gate Flying Machine');
-- Dragonmaw Fel Orc illusion for Netherwing Mines area after Netherwing quest chain for reputation is complete
DELETE FROM `spell_area` WHERE `spell`=40214 AND `area`=3965;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(40214,3965,11013,1,0,0,0,2,1);
-- Some Dalran and Area Updates (sniff)
-- Template updates 
UPDATE `creature_template` SET `exp`=0,`npcflag`=`npcflag`|640 WHERE `entry`=32415; -- Hamaka
UPDATE `creature_template` SET `exp`=0,`npcflag`=`npcflag`|130 WHERE `entry`=31031; -- Misensi
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|768 WHERE `entry`=35826; -- Kaye Toogie
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|4 WHERE `entry`=32428; -- Underbelly Rat
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=36670; -- Magister Hathorel
UPDATE `creature_template` SET `exp`=2,`minlevel`=82,`maxlevel`=82,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200 WHERE `entry`=37858; -- Razorscale Image
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32328; -- [DND] Dalaran Sewer Arena - Controller - Death
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32339; -- [DND] Dalaran Sewer Arena - Controller
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|768 WHERE `entry`=33938; -- Zom Bocom
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|768 WHERE `entry`=33937; -- Xazi Smolderpipe
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|512 WHERE `entry`=33936; -- Nargle Lashcord
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|512 WHERE `entry`=34095; -- Trapjaw Rix
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33544 WHERE `entry`=42078; -- Mini Thor
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32322; -- Gold Warrior
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32325; -- Gold Priest

-- Model data 
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=1.05,`gender`=0 WHERE `modelid`=10957; -- Dappled Stag
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=27957; -- Hamaka
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=1141; -- Underbelly Rat
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=0.75,`gender`=0 WHERE `modelid`=4449; -- Imp
UPDATE `creature_model_info` SET `bounding_radius`=0.09,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=30806; -- Razorscale Image
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=27766; -- [DND] Dalaran Sewer Arena - Controller
UPDATE `creature_model_info` SET `bounding_radius`=0.09,`combat_reach`=0,`gender`=2 WHERE `modelid`=32670; -- Mini Thor

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (417,31233,31228,33778,34244,31236,29631,32692,32687,30352,31085,30755,31081,28671,28160,31031,28674,31238,29238,31229,
32596,32415,32419,32418,32253,32412,32602,32732,31439,35826,32428,36670,32251,32252,32420,30659,32730,28991,32470,27047,29497,29534,31851,29493,28989,29533,32686,32683,
29325,31080,20735,28742,29496,32265,31517,29499,37858,29156,29476,28993,32691,32675,30885,32328,32339,32743,23472,33938,33937,33936,34095,29527,28956,28691,28332,28994,28692,
42078,29494,35497,29523,35500,28992,32683,29763,29764,29765,29766,37776,32509,29529,29529,28776,30726,28774,29528,32601,32710,32752,
32322,32325);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(32322,0,0,1,0, NULL), -- Gold Warrior
(32325,0,0,1,0, NULL), -- Gold Priest
(32752,0,0,1,0, NULL), -- Tabitha
(32710,0,0,1,0, NULL), -- Garl Grimgrizzle
(29763,0,0,1,0, NULL), -- Cosmetic Totem Alliance Air
(29764,0,0,1,0, NULL), -- Cosmetic Totem Alliance Earth
(29765,0,0,1,0, NULL), -- Cosmetic Totem Alliance Fire
(29766,0,0,1,0, NULL), -- Cosmetic Totem Alliance Water
(37776,0,0,1,0, NULL), -- Apprentice Nelphi
(32509,0,0,257,0, NULL), -- Brammold Deepmine
(29528,0,0,257,0, NULL), -- Debbi Moore
(29529,0,0,257,0, NULL), -- Ninsianna
(28776,0,0,257,0, NULL), -- Elizabeth Ross
(30726,0,0,257,0, NULL), -- Archivist Betha
(28774,0,0,257,0, NULL), -- Andrew Matthews
(42078,0,0,1,0, NULL), -- Mini Thor
(29494,0,0,257,0, NULL), -- Shen Kang Cheng
(35497,0,0,257,0, NULL), -- Rafael Langrom
(29523,0,0,257,0, NULL), -- Bragund Brightlink
(35500,0,0,257,0, NULL), -- Matilda Brightlink
(28992,0,0,257,0, NULL), -- Valerie Langrom
(32683,0,0,257,0, NULL), -- Grezla the Hag
(32686,0,0,257,0, NULL), -- Crafticus Mindbender
(28692,0,0,257,0, NULL), -- "Red" Jack Findle
(28994,0,0,257,0, NULL), -- Abra Cadabra
(28332,0,0,1,0, NULL), -- Generic Trigger LAB (Large AOI)
(28691,0,0,257,0, NULL), -- Susana Averoy
(30885,0,0,1,0, NULL), -- Blazik Fireclaw
(32328,0,0,1,0, NULL), -- [DND] Dalaran Sewer Arena - Controller - Death
(32339,0,0,1,0, NULL), -- [DND] Dalaran Sewer Arena - Controller
(32743,0,1,1,0, NULL), -- Willard Blauvelt
(23472,0,0,1,0, NULL), -- World Trigger (Large AOI, Not Immune PC/NPC)
(33938,0,0,1,0, NULL), -- Zom Bocom
(33937,0,0,1,0, NULL), -- Xazi Smolderpipe
(33936,0,0,1,0, NULL), -- Nargle Lashcord
(34095,0,0,1,0, NULL), -- Trapjaw Rix
(29527,0,0,257,0, NULL), -- Orton Bennet
(28956,0,0,257,0, NULL), -- Warcaster Fanoraithe
(29534,0,0,1,0, NULL), -- "Baroness" Llana
(31851,0,65536,1,0, NULL), -- Wooly Mammoth
(29493,0,0,257,0, NULL), -- Jarold Puller
(28989,0,0,258,0, NULL), -- Aemara
(29533,0,0,1,0, NULL), -- Schembari "Uncle Sal" Shearbolt
(32675,0,0,257,0, NULL), -- Babagahnoosh the Grumpy
(32691,0,0,257,0, NULL), -- Magus Fansy Goodbringer
(28993,0,0,1,0, NULL), -- Aerith Primrose
(29476,0,0,258,0, NULL), -- Dagna Flintlock
(29156,0,0,257,0, NULL), -- Archmage Celindra
(37858,0,50331648,0,0, NULL), -- Razorscale Image
(32265,0,50331648,1,0, NULL), -- Northrend Daily Dungeon Image Bunny
(31517,0,0,1,0, NULL), -- Dalaran Fountain Invis Stalker
(29499,0,0,257,0, NULL), -- Bartram Haller
(31228,0,0,1,0, NULL), -- Grove Walker
(33778,0,1,1,0, NULL), -- Tournament Hippogryph
(34244,0,0,1,0, NULL), -- Jean Pierre Poulain
(31236,0,0,1,0, NULL), -- Dappled Stag
(29631,0,0,1,0, NULL), -- Awilo Lon'gomba
(32692,0,0,257,0, NULL), -- Arcanist Alec
(32687,0,0,257,0, NULL), -- Linda Ann Kastinglow
(30352,0,0,256,0, NULL), -- Skybreaker Marine
(31085,0,0,1,0, NULL), -- Sky-Reaver Klum
(30755,0,0,256,0, NULL), -- Kor'kron Reaver
(31081,0,0,1,0, NULL), -- Officer Van Rossem
(28160,0,0,257,0, NULL), -- Archmage Pentarus
(28674,0,0,257,0, NULL), -- Aludane Whitecloud
(31031,0,0,1,69, NULL), -- Misensi
(31238,27525,0,257,0, NULL), -- Hira Snowdawn
(29238,0,0,1,0, NULL), -- Scourge Haunt
(31229,0,0,1,0, NULL), -- Ancient Watcher
(32596,0,0,257,0, NULL), -- Dalaran Visitor
(32602,25833,0,257,0, NULL), -- Dalaran Visitor
(32601,22471,0,257,0, NULL), -- Dalaran Visitor
(32415,0,0,1,0, NULL), -- Hamaka
(32419,0,0,1,0, NULL), -- Umbiwa
(32418,0,0,1,0, NULL), -- Abohba
(32253,0,0,2,0, NULL), -- Kyunghee
(32412,0,0,1,0, NULL), -- Mato
(32732,0,0,257,0, NULL), -- Dorfus Alphamage
(31439,0,0,1,0, NULL), -- Archmage Timear
(35826,0,1,1,0, NULL), -- Kaye Toogie
(32428,0,0,1,0, NULL), -- Underbelly Rat
(36670,0,0,1,0, NULL), -- Magister Hathorel
(32251,0,0,2,0, NULL), -- Shokavis
(32252,0,0,2,0, NULL), -- Wanathan
(32420,0,0,1,10, NULL), -- Mimbihi
(30659,0,0,1,333, NULL), -- Violet Hold Guard
(32730,0,0,257,0, NULL), -- Goldlilly Gleamingfell
(28991,0,0,257,0, NULL), -- Valaden Silverblade
(32470,0,0,1,0, NULL), -- Sewer Frog
(27047,0,0,1,0, NULL), -- Invisible Stalker (Floating Only)
(29497,0,0,257,0, NULL), -- Walther Whiteford
(29325,0,0,1,379, NULL), -- Torgo the Younger
(31080,0,0,1,0, NULL), -- Warden Alturas
(20735,0,0,1,0, NULL), -- Archmage Lan'dalock
(28742,0,0,257,0, NULL), -- Marcia Chase
(29496,0,0,257,0, NULL); -- Kerta the Bold

-- Template updates for gameobject 
UPDATE `gameobject_template` SET `faction`=0 WHERE `entry`=35591; -- Fishing Bobber
-- Dalaran Violet Citadel/Purple Parlor - npc scripts
SET @CGuid = 151893; -- Set by TDB team

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32739; -- Baroness Zildjia
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32736; -- Scribe Whitman
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32741; -- Conjurer Weinhaus
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32631; -- Alfred Copperworth
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32734; -- Arcanist Ginsberg
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32735; -- Alchemist Burroughs

DELETE FROM `creature` WHERE `id`=32741; -- Conjurer Weinhaus
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@CGuid+0,32741,571,1,1,0,0,5871.94,852.655,846.336,6.21344,300,0,0,1,0,0,0,0,0,0);
DELETE FROM `creature_template_addon` WHERE `entry` IN (31848,32287,32739,32736,32631,32737,32734,32735);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(31848,0,0,1,0, NULL), -- Zidormi
(32287,0,0,257,0, NULL), -- Archmage Alvareaux
(32739,0,0,257,0, NULL), -- Baroness Zildjia
(32736,0,0,257,0, NULL), -- Scribe Whitman
(32631,0,0,1,0, NULL), -- Alfred Copperworth
(32737,0,0,257,0, NULL), -- Archmage John Nicholas
(32734,0,0,257,0, NULL), -- Arcanist Ginsberg
(32735,0,0,257,0, NULL); -- Alchemist Burroughs
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27756; -- Zidormi
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=27886; -- Archmage Alvareaux
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28176; -- Baroness Zildjia
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28179; -- Scribe Whitman
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28119; -- Alfred Copperworth
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28174; -- Archmage John Nicholas
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28173; -- Arcanist Ginsberg
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28172; -- Alchemist Burroughs
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=19284; -- Archmage Vargoth

-- Add teleport to gossip option "Teleport me to Caverns of Time." - Zidormi
UPDATE `gossip_menu_option` SET `action_script_id`=10131 WHERE `menu_id`=10131 AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=10131;
INSERT INTO `gossip_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(10131,0,6,1,0,0,-8167.24,-4766.05,33.8599,1.74123);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10131 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,10131,0,0,27,65,3,0,0, '', 'Zidormi - Teleport to CoT level restriction'); -- Zidormi

-- Talk events for Baroness Zildjia, Scribe Whitman and Conjurer Weinhaus
DELETE FROM `creature_text` WHERE `entry` IN (32739,32736,32741) AND `groupid`=0;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(32739,0,0, 'The view up here is amazing!',0,0,0,5,0,0, 'Baroness Zildjia'), -- Baroness Zildjia
(32739,0,1, 'Too bad I left my light feathers at home... Slow Fall would work perfect here!',0,0,0,1,0,0, 'Baroness Zildjia'), -- Baroness Zildjia
(32736,0,0, 'The view up here is amazing!',0,0,0,5,0,0, 'Scribe Whitman'), -- Scribe Whitman
(32736,0,1, 'Too bad I left my light feathers at home... Slow Fall would work perfect here!',0,0,0,1,0,0, 'Scribe Whitman'), -- Scribe Whitman
(32741,0,0, 'The view up here is amazing!',0,0,0,5,0,0, 'Conjurer Weinhaus'), -- Conjurer Weinhaus
(32741,0,1, 'Too bad I left my light feathers at home... Slow Fall would work perfect here!',0,0,0,1,0,0, 'Conjurer Weinhaus'); -- Conjurer Weinhaus
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (32739,32736,32741,32734,32735) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32739,0,0,0,1,0,100,0,0,0,420000,1000000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Baroness Zildjia: Say rand text every 7-14 minutes'), -- Baroness Zildjia
(32736,0,0,0,1,0,100,0,0,0,300000,840000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scribe Whitman: Say rand text every 5-14 minutes'), -- Scribe Whitman
(32741,0,0,0,1,0,100,0,0,0,400000,520000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Conjurer Weinhaus: Say rand text every 5-7 minutes'), -- Conjurer Weinhaus
(32734,0,0,0,1,0,100,0,0,0,5000,30000,10,274,1,11,0,0,0,1,0,0,0,0,0,0,0, 'Arcanist Ginsberg: Random emote every 5-30 seconds'), -- Arcanist Ginsberg
(32735,0,0,0,1,0,100,0,0,0,5000,30000,10,274,1,11,0,0,0,1,0,0,0,0,0,0,0, 'Alchemist Burroughs: Random emote every 5-30 seconds'); -- Alchemist Burroughs
UPDATE `creature` SET `modelid`=0,`equipment_id`=0 WHERE `map`=631;
-- Trashloot for ICC/FoS/PoS/HoR
-- Generic
SET @ICC_TrashGenericGrey := 35063; -- Set by TDB (need x)
SET @ICC_TrashGenericWhite := @ICC_TrashGenericGrey+1;
SET @ICC_TrashGenericScroll := @ICC_TrashGenericGrey+2;
SET @ICC_TrashGenericGreen := @ICC_TrashGenericGrey+3;
SET @ICC_TrashGenericBlue := @ICC_TrashGenericGrey+4;
SET @ICC_TrashGenericPurpleICC := @ICC_TrashGenericGrey+5;
SET @ICC_TrashCitadelFinal := @ICC_TrashGenericGrey+6;
SET @ICC_TrashGenericPurpleDUNN := @ICC_TrashGenericGrey+7;
SET @ICC_TrashDungeonNFinal := @ICC_TrashGenericGrey+8;
SET @ICC_TrashGenericPurpleDUNH := @ICC_TrashGenericGrey+9;
SET @ICC_TrashDungeonHFinal := @ICC_TrashGenericGrey+10;

DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @ICC_TrashGenericGrey AND @ICC_TrashGenericGrey+10; 
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 35063 AND 35076; -- cleanup OLD loot
INSERT INTO reference_loot_template (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- grey items (45)
(@ICC_TrashGenericGrey,33430,0,1,1,1,1), -- Abandoned Greatsword
(@ICC_TrashGenericGrey,33426,0,1,1,1,1), -- Chipped Timber Axe
(@ICC_TrashGenericGrey,33424,0,1,1,1,1), -- Cracked Iron Staff
(@ICC_TrashGenericGrey,33428,0,1,1,1,1), -- Dulled SHiv
(@ICC_TrashGenericGrey,33397,0,1,1,1,1), -- Frigid Mail Armor
(@ICC_TrashGenericGrey,33398,0,1,1,1,1), -- Frigid Mail Belt
(@ICC_TrashGenericGrey,33399,0,1,1,1,1), -- Frigid Mail Boots
(@ICC_TrashGenericGrey,33400,0,1,1,1,1), -- Frigid Mail Bracers
(@ICC_TrashGenericGrey,33433,0,1,1,1,1), -- Frigid Mail Circlet
(@ICC_TrashGenericGrey,33401,0,1,1,1,1), -- Frigid Mail Gloves
(@ICC_TrashGenericGrey,33402,0,1,1,1,1), -- Frigid Mail Pants
(@ICC_TrashGenericGrey,33403,0,1,1,1,1), -- Frigid Mail Shoulderpads
(@ICC_TrashGenericGrey,33427,0,1,1,1,1), -- Frost-Encrusted Rifle
(@ICC_TrashGenericGrey,33365,0,1,1,1,1), -- Frost-Rimed Cloth Belt
(@ICC_TrashGenericGrey,33366,0,1,1,1,1), -- Frost-Rimed Cloth Boots
(@ICC_TrashGenericGrey,33367,0,1,1,1,1), -- Frost-Rimed Cloth Bracers
(@ICC_TrashGenericGrey,33368,0,1,1,1,1), -- Frost-Rimed Cloth Gloves
(@ICC_TrashGenericGrey,33346,0,1,1,1,1), -- Frost-Rimed Cloth Hat
(@ICC_TrashGenericGrey,33369,0,1,1,1,1), -- Frost-Rimed Cloth Pants
(@ICC_TrashGenericGrey,33370,0,1,1,1,1), -- Frost-Rimed Cloth Shoulderpads
(@ICC_TrashGenericGrey,33371,0,1,1,1,1), -- Frost-Rimed Cloth Vest
(@ICC_TrashGenericGrey,33412,0,1,1,1,1), -- Frost-Worn Plate Belt
(@ICC_TrashGenericGrey,33413,0,1,1,1,1), -- Frost-Worn Plate Boots
(@ICC_TrashGenericGrey,33414,0,1,1,1,1), -- Frost-Worn Plate Bracers
(@ICC_TrashGenericGrey,33415,0,1,1,1,1), -- Frost-Worn Plate Chestpiece
(@ICC_TrashGenericGrey,33416,0,1,1,1,1), -- Frost-Worn Plate Gloves
(@ICC_TrashGenericGrey,33435,0,1,1,1,1), -- Frost-Worn Plate Helmet
(@ICC_TrashGenericGrey,33417,0,1,1,1,1), -- Frost-Worn Plate Pants
(@ICC_TrashGenericGrey,33419,0,1,1,1,1), -- Frost-Worn Plate Shoulderpads
(@ICC_TrashGenericGrey,33379,0,1,1,1,1), -- Frozen Armor
(@ICC_TrashGenericGrey,33380,0,1,1,1,1), -- Frozen Belt
(@ICC_TrashGenericGrey,33381,0,1,1,1,1), -- Frozen Boots
(@ICC_TrashGenericGrey,33382,0,1,1,1,1), -- Frozen Bracers
(@ICC_TrashGenericGrey,33383,0,1,1,1,1), -- Frozen Gloves
(@ICC_TrashGenericGrey,33434,0,1,1,1,1), -- Frozen Leather Helmet
(@ICC_TrashGenericGrey,33384,0,1,1,1,1), -- Frozen Pants
(@ICC_TrashGenericGrey,33385,0,1,1,1,1), -- Frozen Shoulderpads
(@ICC_TrashGenericGrey,33429,0,1,1,1,1), -- Ice Cleaver
(@ICC_TrashGenericGrey,33425,0,1,1,1,1), -- Ice-Pitted Blade
(@ICC_TrashGenericGrey,33431,0,1,1,1,1), -- Icesmashing Mace
(@ICC_TrashGenericGrey,33423,0,1,1,1,1), -- Rime-Covered Mace
(@ICC_TrashGenericGrey,33422,0,1,1,1,1), -- Shattered Bow
(@ICC_TrashGenericGrey,43852,70,1,1,1,1), -- Thick Fur Clothing Scraps (drops more often)
-- white items
(@ICC_TrashGenericWhite,33470,0,1,1,2,7), -- Frostweave Cloth
(@ICC_TrashGenericWhite,33445,0,1,1,1,1), -- Honeymint Tea
(@ICC_TrashGenericWhite,33454,0,1,1,1,1), -- Salted Venison
(@ICC_TrashGenericWhite,35947,0,1,1,1,1), -- Sparkling Frostcap
(@ICC_TrashGenericWhite,33447,0,1,1,1,1), -- Runic Healing Potion
(@ICC_TrashGenericWhite,33448,0,1,1,1,1), -- Runic Mana Potion
-- Scroll items
(@ICC_TrashGenericScroll,43463,0,1,1,1,1), -- Scroll of Agility VII
(@ICC_TrashGenericScroll,37091,0,1,1,1,1), -- Scroll of Intellect VII
(@ICC_TrashGenericScroll,37093,0,1,1,1,1), -- Scroll of Stamina VII
(@ICC_TrashGenericScroll,43465,0,1,1,1,1), -- Scroll of Strength VII
(@ICC_TrashGenericScroll,37097,0,1,1,1,1), -- Scroll of Spirit VII
(@ICC_TrashGenericScroll,43464,0,1,1,1,1), -- Scroll of Agility VIII
(@ICC_TrashGenericScroll,37092,0,1,1,1,1), -- Scroll of Intellect VIII
(@ICC_TrashGenericScroll,37094,0,1,1,1,1), -- Scroll of Stamina VIII
(@ICC_TrashGenericScroll,43466,0,1,1,1,1), -- Scroll of Strength VIII
(@ICC_TrashGenericScroll,37098,0,1,1,1,1), -- Scroll of Spirit VIII
-- green items (166)
(@ICC_TrashGenericGreen,36609,0,1,1,1,1), -- Abandoned Spear
(@ICC_TrashGenericGreen,36497,0,1,1,1,1), -- Adamant Mallet
(@ICC_TrashGenericGreen,36511,0,1,1,1,1), -- Artic War Hammer
(@ICC_TrashGenericGreen,36694,0,1,1,1,1), -- Beatific Mace
(@ICC_TrashGenericGreen,36527,0,1,1,1,1), -- Blackened Blade
(@ICC_TrashGenericGreen,36611,0,1,1,1,1), -- Black Scythe
(@ICC_TrashGenericGreen,36638,0,1,1,1,1), -- Bloody Crossbow
(@ICC_TrashGenericGreen,36428,0,1,1,1,1), -- Bouquet Ring
(@ICC_TrashGenericGreen,36639,0,1,1,1,1), -- Brutal Ballista
(@ICC_TrashGenericGreen,36707,0,1,1,1,1), -- Cascading Water Staff
(@ICC_TrashGenericGreen,36539,0,1,1,1,1), -- Chilled Warblade
(@ICC_TrashGenericGreen,36723,0,1,1,1,1), -- Clawed Shuriken
(@ICC_TrashGenericGreen,36035,0,1,1,1,1), -- Condor Belt
(@ICC_TrashGenericGreen,36042,0,1,1,1,1), -- Condor Bindings
(@ICC_TrashGenericGreen,36038,0,1,1,1,1), -- Condor Gloves
(@ICC_TrashGenericGreen,36039,0,1,1,1,1), -- Condor Headpiece
(@ICC_TrashGenericGreen,36040,0,1,1,1,1), -- Condor Pants
(@ICC_TrashGenericGreen,36037,0,1,1,1,1), -- Condor Robe
(@ICC_TrashGenericGreen,36036,0,1,1,1,1), -- Condor Sandals
(@ICC_TrashGenericGreen,36041,0,1,1,1,1), -- Condor Shoulderpads
(@ICC_TrashGenericGreen,36266,0,1,1,1,1), -- Cormorant Bracelets
(@ICC_TrashGenericGreen,36261,0,1,1,1,1), -- Cormorant Chain Vest
(@ICC_TrashGenericGreen,36260,0,1,1,1,1), -- Cormorant Footwraps
(@ICC_TrashGenericGreen,36262,0,1,1,1,1), -- Cormorant Gloves
(@ICC_TrashGenericGreen,36263,0,1,1,1,1), -- Cormorant Helm
(@ICC_TrashGenericGreen,36264,0,1,1,1,1), -- Cormorant Leggings
(@ICC_TrashGenericGreen,36265,0,1,1,1,1), -- Cormorant Mantle
(@ICC_TrashGenericGreen,36259,0,1,1,1,1), -- Cormorant Waistband
(@ICC_TrashGenericGreen,36525,0,1,1,1,1), -- Craggy Machete
(@ICC_TrashGenericGreen,36709,0,1,1,1,1), -- Crystal Woodstaff
(@ICC_TrashGenericGreen,36050,0,1,1,1,1), -- Crystalsong Bracelets
(@ICC_TrashGenericGreen,36047,0,1,1,1,1), -- Crystalsong Crown
(@ICC_TrashGenericGreen,36046,0,1,1,1,1), -- Crystalsong Gloves
(@ICC_TrashGenericGreen,36048,0,1,1,1,1), -- Crystalsong Leggings
(@ICC_TrashGenericGreen,36049,0,1,1,1,1), -- Crystalsong Mantle
(@ICC_TrashGenericGreen,36045,0,1,1,1,1), -- Crystalsong Robe
(@ICC_TrashGenericGreen,36043,0,1,1,1,1), -- Crystalsong Sash
(@ICC_TrashGenericGreen,36044,0,1,1,1,1), -- Crystalsong Slippers
(@ICC_TrashGenericGreen,36554,0,1,1,1,1), -- Cursed Staff
(@ICC_TrashGenericGreen,43297,0,1,1,1,1), -- Damaged Necklace
(@ICC_TrashGenericGreen,36553,0,1,1,1,1), -- Desecrated Staff
(@ICC_TrashGenericGreen,36695,0,1,1,1,1), -- Dogmatic Scepter
(@ICC_TrashGenericGreen,36721,0,1,1,1,1), -- Dragon's Teeth
(@ICC_TrashGenericGreen,36413,0,1,1,1,1), -- Dyed Taffeta Cape
(@ICC_TrashGenericGreen,36427,0,1,1,1,1), -- Engraved Ring
(@ICC_TrashGenericGreen,36484,0,1,1,1,1), -- Etched Dagger
(@ICC_TrashGenericGreen,36499,0,1,1,1,1), -- Frigid War-Mace
(@ICC_TrashGenericGreen,36470,0,1,1,1,1), -- Gilded Scepter
(@ICC_TrashGenericGreen,36381,0,1,1,1,1), -- Golem Breastplate
(@ICC_TrashGenericGreen,36382,0,1,1,1,1), -- Golem Gauntlets
(@ICC_TrashGenericGreen,36379,0,1,1,1,1), -- Golem Girdle
(@ICC_TrashGenericGreen,36383,0,1,1,1,1), -- Golem Helmet
(@ICC_TrashGenericGreen,36384,0,1,1,1,1), -- Golem Legplates
(@ICC_TrashGenericGreen,36385,0,1,1,1,1), -- Golem Pauldrons
(@ICC_TrashGenericGreen,36380,0,1,1,1,1), -- Golem Sabatons
(@ICC_TrashGenericGreen,36386,0,1,1,1,1), -- Golem Vambraces
(@ICC_TrashGenericGreen,36623,0,1,1,1,1), -- Harnessed Longbow
(@ICC_TrashGenericGreen,36568,0,1,1,1,1), -- Hollowed Bone Knuckles
(@ICC_TrashGenericGreen,36637,0,1,1,1,1), -- Horrific Crossbow
(@ICC_TrashGenericGreen,36471,0,1,1,1,1), -- Ice Crystal
(@ICC_TrashGenericGreen,36582,0,1,1,1,1), -- Ice Pick
(@ICC_TrashGenericGreen,36597,0,1,1,1,1), -- Ice-Splintering Axe
(@ICC_TrashGenericGreen,36456,0,1,1,1,1), -- Ice Kite Shield
(@ICC_TrashGenericGreen,36457,0,1,1,1,1), -- Ivory Shield
(@ICC_TrashGenericGreen,36373,0,1,1,1,1), -- Kraken Breastplate
(@ICC_TrashGenericGreen,36377,0,1,1,1,1), -- Kraken Epaulets
(@ICC_TrashGenericGreen,36374,0,1,1,1,1), -- Kraken Gauntlets
(@ICC_TrashGenericGreen,36371,0,1,1,1,1), -- Kraken Girdle
(@ICC_TrashGenericGreen,36372,0,1,1,1,1), -- Kraken Greaves
(@ICC_TrashGenericGreen,36375,0,1,1,1,1), -- Kraken Helm
(@ICC_TrashGenericGreen,36376,0,1,1,1,1), -- Kraken Legplates
(@ICC_TrashGenericGreen,36378,0,1,1,1,1), -- Kraken Vambraces
(@ICC_TrashGenericGreen,36469,0,1,1,1,1), -- Lidless Orb
(@ICC_TrashGenericGreen,36513,0,1,1,1,1), -- Lode-Headed Hammer
(@ICC_TrashGenericGreen,36414,0,1,1,1,1), -- Mammoth Fur Cloack
(@ICC_TrashGenericGreen,36483,0,1,1,1,1), -- Mandible Edge
(@ICC_TrashGenericGreen,36625,0,1,1,1,1), -- Massive Recurved Bow
(@ICC_TrashGenericGreen,36555,0,1,1,1,1), -- Minion Staff
(@ICC_TrashGenericGreen,36651,0,1,1,1,1), -- Muzzled Musket
(@ICC_TrashGenericGreen,36680,0,1,1,1,1), -- Mystic Fang
(@ICC_TrashGenericGreen,36498,0,1,1,1,1), -- Nerubian Mace
(@ICC_TrashGenericGreen,36512,0,1,1,1,1), -- Onerous Mallet
(@ICC_TrashGenericGreen,36441,0,1,1,1,1), -- Pearl Woven Choker
(@ICC_TrashGenericGreen,36540,0,1,1,1,1), -- Petrified Sword
(@ICC_TrashGenericGreen,36610,0,1,1,1,1), -- Plagued Pike
(@ICC_TrashGenericGreen,36595,0,1,1,1,1), -- Planate Broadaxe
(@ICC_TrashGenericGreen,36455,0,1,1,1,1), -- Plated Bulwark
(@ICC_TrashGenericGreen,36443,0,1,1,1,1), -- Platinum Medallion
(@ICC_TrashGenericGreen,36666,0,1,1,1,1), -- Polar Wand
(@ICC_TrashGenericGreen,36653,0,1,1,1,1), -- Precipice Longrifle
(@ICC_TrashGenericGreen,36147,0,1,1,1,1), -- Pygmy Belt
(@ICC_TrashGenericGreen,36154,0,1,1,1,1), -- Pygmy Bindings
(@ICC_TrashGenericGreen,36148,0,1,1,1,1), -- Pygmy Boots
(@ICC_TrashGenericGreen,36150,0,1,1,1,1), -- Pygmy Gloves
(@ICC_TrashGenericGreen,36151,0,1,1,1,1), -- Pygmy Helmet
(@ICC_TrashGenericGreen,36152,0,1,1,1,1), -- Pygmy Pants
(@ICC_TrashGenericGreen,36153,0,1,1,1,1), -- Pygmy Shoulders
(@ICC_TrashGenericGreen,36149,0,1,1,1,1), -- Pygmy Tunic
(@ICC_TrashGenericGreen,36722,0,1,1,1,1), -- Pyramid Throwing Star
(@ICC_TrashGenericGreen,36389,0,1,1,1,1), -- Revenant Armor
(@ICC_TrashGenericGreen,36387,0,1,1,1,1), -- Revenant Belt
(@ICC_TrashGenericGreen,36394,0,1,1,1,1), -- Revenant Bracers
(@ICC_TrashGenericGreen,36393,0,1,1,1,1), -- Revenant Epaulets
(@ICC_TrashGenericGreen,36390,0,1,1,1,1), -- Revenant Gauntlets
(@ICC_TrashGenericGreen,36388,0,1,1,1,1), -- Revenant Greaves
(@ICC_TrashGenericGreen,36391,0,1,1,1,1), -- Revenant Helmet
(@ICC_TrashGenericGreen,36392,0,1,1,1,1), -- Revenant Legguards
(@ICC_TrashGenericGreen,36596,0,1,1,1,1), -- Rupturing Axe
(@ICC_TrashGenericGreen,36569,0,1,1,1,1), -- Savage Talons
(@ICC_TrashGenericGreen,36693,0,1,1,1,1), -- Serene Hammer
(@ICC_TrashGenericGreen,36624,0,1,1,1,1), -- Shrieking Bow
(@ICC_TrashGenericGreen,36442,0,1,1,1,1), -- Silken Cord Amulet
(@ICC_TrashGenericGreen,36679,0,1,1,1,1), -- Singing Dagger
(@ICC_TrashGenericGreen,36485,0,1,1,1,1), -- Sinuous Keris
(@ICC_TrashGenericGreen,36567,0,1,1,1,1), -- Six-Fingered Claws
(@ICC_TrashGenericGreen,36583,0,1,1,1,1), -- Skeletal Hacker
(@ICC_TrashGenericGreen,36526,0,1,1,1,1), -- SLeeted Longsword
(@ICC_TrashGenericGreen,36708,0,1,1,1,1), -- Snow Blossom Staff
(@ICC_TrashGenericGreen,36667,0,1,1,1,1), -- Solid Ice Wand
(@ICC_TrashGenericGreen,36275,0,1,1,1,1), -- Spiderlord Belt
(@ICC_TrashGenericGreen,36276,0,1,1,1,1), -- Spiderlord Boots
(@ICC_TrashGenericGreen,36282,0,1,1,1,1), -- Spiderlord Bracers
(@ICC_TrashGenericGreen,36277,0,1,1,1,1), -- Spiderlord Chestpiece
(@ICC_TrashGenericGreen,36278,0,1,1,1,1), -- Spiderlord Gauntlets
(@ICC_TrashGenericGreen,36279,0,1,1,1,1), -- Spiderlord Helm
(@ICC_TrashGenericGreen,36280,0,1,1,1,1), -- Spiderlord Legguards
(@ICC_TrashGenericGreen,36281,0,1,1,1,1), -- Spiderlord Spaulders
(@ICC_TrashGenericGreen,36429,0,1,1,1,1), -- Spur Ring
(@ICC_TrashGenericGreen,36652,0,1,1,1,1), -- Stocky Shotgun
(@ICC_TrashGenericGreen,36274,0,1,1,1,1), -- Ulduar Bracers
(@ICC_TrashGenericGreen,36269,0,1,1,1,1), -- Ulduar Breastplate
(@ICC_TrashGenericGreen,36270,0,1,1,1,1), -- Ulduar Gauntlets
(@ICC_TrashGenericGreen,36267,0,1,1,1,1), -- Ulduar Girdle
(@ICC_TrashGenericGreen,36268,0,1,1,1,1), -- Ulduar Greaves
(@ICC_TrashGenericGreen,36271,0,1,1,1,1), -- Ulduar Helm
(@ICC_TrashGenericGreen,36272,0,1,1,1,1), -- Ulduar Legguards
(@ICC_TrashGenericGreen,36273,0,1,1,1,1), -- Ulduar Shoulderguards
(@ICC_TrashGenericGreen,36415,0,1,1,1,1), -- Vintage Satin Cloak
(@ICC_TrashGenericGreen,36058,0,1,1,1,1), -- Vizier Bracelets
(@ICC_TrashGenericGreen,36054,0,1,1,1,1), -- Vizier Gloves
(@ICC_TrashGenericGreen,36055,0,1,1,1,1), -- Vizier Hood
(@ICC_TrashGenericGreen,36056,0,1,1,1,1), -- Vizier Leggings
(@ICC_TrashGenericGreen,36057,0,1,1,1,1), -- Vizier Mantle
(@ICC_TrashGenericGreen,36053,0,1,1,1,1), -- Vizier Robe
(@ICC_TrashGenericGreen,36051,0,1,1,1,1), -- Vizier Sash
(@ICC_TrashGenericGreen,36052,0,1,1,1,1), -- Vizier SLippers
(@ICC_TrashGenericGreen,36665,0,1,1,1,1), -- Wasteland Wand
(@ICC_TrashGenericGreen,36170,0,1,1,1,1), -- Webspinner Bindings
(@ICC_TrashGenericGreen,36164,0,1,1,1,1), -- Webspinner Boots
(@ICC_TrashGenericGreen,36163,0,1,1,1,1), -- Webspinner Cord
(@ICC_TrashGenericGreen,36166,0,1,1,1,1), -- Webspinner Gloves
(@ICC_TrashGenericGreen,36167,0,1,1,1,1), -- Webspinner Hood
(@ICC_TrashGenericGreen,36168,0,1,1,1,1), -- Webspinner Leggings
(@ICC_TrashGenericGreen,36169,0,1,1,1,1), -- Webspinner Shoulderguards
(@ICC_TrashGenericGreen,36165,0,1,1,1,1), -- Webspinner Vest
(@ICC_TrashGenericGreen,36162,0,1,1,1,1), -- Wendigo Bands
(@ICC_TrashGenericGreen,36156,0,1,1,1,1), -- Wendigo Boots
(@ICC_TrashGenericGreen,36157,0,1,1,1,1), -- Wendigo Chestpiece
(@ICC_TrashGenericGreen,36155,0,1,1,1,1), -- Wendigo Girdle
(@ICC_TrashGenericGreen,36158,0,1,1,1,1), -- Wendigo Gloves
(@ICC_TrashGenericGreen,36159,0,1,1,1,1), -- Wendigo Hood
(@ICC_TrashGenericGreen,36160,0,1,1,1,1), -- Wendigo Legguards
(@ICC_TrashGenericGreen,36161,0,1,1,1,1), -- Wendigo Pauldrons
(@ICC_TrashGenericGreen,36541,0,1,1,1,1), -- Wintry Claymore
(@ICC_TrashGenericGreen,36681,0,1,1,1,1), -- Wisdom Carver
(@ICC_TrashGenericGreen,36581,0,1,1,1,1), -- Wolvar Handaxe
-- blue items
(@ICC_TrashGenericBlue,37792,0,1,1,1,1), -- Agin's Crushing Carapace
(@ICC_TrashGenericBlue,37770,0,1,1,1,1), -- Bulge-Concealing Breastplate
(@ICC_TrashGenericBlue,37780,0,1,1,1,1), -- Condor-Bone Chestguard
(@ICC_TrashGenericBlue,37760,0,1,1,1,1), -- Cracklefire Wristguards
(@ICC_TrashGenericBlue,37781,0,1,1,1,1), -- Grips of the Warming Heart
(@ICC_TrashGenericBlue,37824,0,1,1,1,1), -- Gwyneth's Runed Dragonwand
(@ICC_TrashGenericBlue,37761,0,1,1,1,1), -- Shimmerthread Girdle
(@ICC_TrashGenericBlue,37793,0,1,1,1,1), -- Skullcage of Eternal Terror
(@ICC_TrashGenericBlue,37794,0,1,1,1,1), -- Torta's Oversized Choker
(@ICC_TrashGenericBlue,37822,0,1,1,1,1), -- Twisted Puzzle-Ring
(@ICC_TrashGenericBlue,37771,0,1,1,1,1), -- Wristguard of Verdant Recovery
-- Designs
(@ICC_TrashGenericBlue,41788,0,1,1,1,1), -- Design: Beaming Earthsiege Diamond
(@ICC_TrashGenericBlue,41780,0,1,1,1,1), -- Design: Champion's Monarch Topaz
(@ICC_TrashGenericBlue,41786,0,1,1,1,1), -- Design: Destructive Skyflare Diamond
(@ICC_TrashGenericBlue,41777,0,1,1,1,1), -- Design: Etched Monarch Topaz
(@ICC_TrashGenericBlue,41789,0,1,1,1,1), -- Design: Inscribed Monarch Topaz
(@ICC_TrashGenericBlue,41781,0,1,1,1,1), -- Design: Misty Forest Emerald
(@ICC_TrashGenericBlue,41783,0,1,1,1,1), -- Design: Purified Twilight Opal
(@ICC_TrashGenericBlue,41778,0,1,1,1,1), -- Design: Resolute MOnarch Topaz
(@ICC_TrashGenericBlue,41782,0,1,1,1,1), -- Design: Shining Forest Emerald
(@ICC_TrashGenericBlue,41784,0,1,1,1,1), -- Design: Sovereign Twilight Opal
(@ICC_TrashGenericBlue,41779,0,1,1,1,1), -- Design: Stalwart Monarch Topaz
(@ICC_TrashGenericBlue,41785,0,1,1,1,1), -- Design: Tenuous Twilight Opal
(@ICC_TrashGenericBlue,41787,0,1,1,1,1), -- Design: Thundering Skyflare Diamond
-- tailoring
(@ICC_TrashGenericBlue,43876,0,1,1,1,1), -- A Guide to Northern Cloth Scavenging
-- purple items icc (8)
(@ICC_TrashGenericPurpleICC,44311,0,1,1,1,1), -- Avool's Sword of Jin
(@ICC_TrashGenericPurpleICC,37835,0,1,1,1,1), -- Je'Tze's Bell
(@ICC_TrashGenericPurpleICC,44310,0,1,1,1,1), -- Namlak's Supernumerary Sticker
(@ICC_TrashGenericPurpleICC,44309,0,1,1,1,1), -- Sash of Jordan
(@ICC_TrashGenericPurpleICC,44308,0,1,1,1,1), -- Signet of Edward the Odd
(@ICC_TrashGenericPurpleICC,37254,0,1,1,1,1), -- Super Simian Sphere
(@ICC_TrashGenericPurpleICC,44312,0,1,1,1,1), -- Wapach's Spaulders of Solidarity
(@ICC_TrashGenericPurpleICC,44313,0,1,1,1,1), -- Zom's Crackling Bulwark
(@ICC_TrashGenericPurpleICC,50444,0,1,1,1,1), -- Rowan's Rifle of Silver Bullets
(@ICC_TrashGenericPurpleICC,50451,0,1,1,1,1), -- Belt of the Lonely Noble
(@ICC_TrashGenericPurpleICC,50775,0,1,1,1,1), -- Leggings of Dubious Charms
(@ICC_TrashGenericPurpleICC,50449,0,1,1,1,1), -- Stiffened Corpse Shoulderpads
(@ICC_TrashGenericPurpleICC,50453,0,1,1,1,1), -- Ring of Rotting Sinew
(@ICC_TrashGenericPurpleICC,50447,0,1,1,1,1), -- Harbinger's Bone Band
(@ICC_TrashGenericPurpleICC,50452,0,1,1,1,1), -- Wodin's Lucky Necklace
-- purple items dungeon_N (8)
(@ICC_TrashGenericPurpleDUNN,44311,0,1,1,1,1), -- Avool's Sword of Jin
(@ICC_TrashGenericPurpleDUNN,37835,0,1,1,1,1), -- Je'Tze's Bell
(@ICC_TrashGenericPurpleDUNN,44310,0,1,1,1,1), -- Namlak's Supernumerary Sticker
(@ICC_TrashGenericPurpleDUNN,44309,0,1,1,1,1), -- Sash of Jordan
(@ICC_TrashGenericPurpleDUNN,44308,0,1,1,1,1), -- Signet of Edward the Odd
(@ICC_TrashGenericPurpleDUNN,37254,0,1,1,1,1), -- Super Simian Sphere
(@ICC_TrashGenericPurpleDUNN,44312,0,1,1,1,1), -- Wapach's Spaulders of Solidarity
(@ICC_TrashGenericPurpleDUNN,44313,0,1,1,1,1), -- Zom's Crackling Bulwark
(@ICC_TrashGenericPurpleDUNN,49852,0,1,1,1,1), -- Coffin Nail
(@ICC_TrashGenericPurpleDUNN,49855,0,1,1,1,1), -- Plated Grips of Korth'azz
(@ICC_TrashGenericPurpleDUNN,49853,0,1,1,1,1), -- Titanium Links of Lore
(@ICC_TrashGenericPurpleDUNN,49854,0,1,1,1,1), -- Mantle of Tattered Feathers
-- purple items dungeon_H (8)
(@ICC_TrashGenericPurpleDUNH,44311,0,1,1,1,1), -- Avool's Sword of Jin
(@ICC_TrashGenericPurpleDUNH,37835,0,1,1,1,1), -- Je'Tze's Bell
(@ICC_TrashGenericPurpleDUNH,44310,0,1,1,1,1), -- Namlak's Supernumerary Sticker
(@ICC_TrashGenericPurpleDUNH,44309,0,1,1,1,1), -- Sash of Jordan
(@ICC_TrashGenericPurpleDUNH,44308,0,1,1,1,1), -- Signet of Edward the Odd
(@ICC_TrashGenericPurpleDUNH,37254,0,1,1,1,1), -- Super Simian Sphere
(@ICC_TrashGenericPurpleDUNH,44312,0,1,1,1,1), -- Wapach's Spaulders of Solidarity
(@ICC_TrashGenericPurpleDUNH,44313,0,1,1,1,1), -- Zom's Crackling Bulwark
(@ICC_TrashGenericPurpleDUNH,50319,0,1,1,1,1), -- Unsharpened Ice Razor
(@ICC_TrashGenericPurpleDUNH,50315,0,1,1,1,1), -- Seven-Fingered Claws
(@ICC_TrashGenericPurpleDUNH,50318,0,1,1,1,1), -- Ghostly Wristwraps
-- final output icc
(@ICC_TrashCitadelFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashCitadelFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashCitadelFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashCitadelFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashCitadelFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashCitadelFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashCitadelFinal,7,1,1,0,-@ICC_TrashGenericPurpleICC,1), -- 1 purple loot (1%)
-- final output dungeon_n
(@ICC_TrashDungeonNFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonNFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonNFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashDungeonNFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashDungeonNFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashDungeonNFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashDungeonNFinal,7,1,1,0,-@ICC_TrashGenericPurpleDUNN,1), -- 1 purple loot (1%)
-- final output dungeon_h
(@ICC_TrashDungeonHFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonHFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonHFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashDungeonHFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashDungeonHFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashDungeonHFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashDungeonHFinal,7,1,1,0,-@ICC_TrashGenericPurpleDUNH,1); -- 1 purple loot (1%)

-- --------------------------------
-- -- Apply Trash Loot Dungeon_N --
-- --------------------------------
SET @LootDUNGEON_N := 100000; -- needs official entry designated
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_N WHERE `entry` IN (36522,36620,36516,36564,36499,36478,36666); -- FoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_N WHERE `entry` IN (36896,36842,36830,36879,37711,36788,37712,37713); -- PoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_N WHERE `entry` IN (38176,38177,38173,38172,38175,36723); -- HoR
DELETE FROM `creature_loot_template` WHERE `entry` IN (36522,36620,36516,36564,36499,36478,36666,36896,36842,36830,36879,37711,36788,37712,37713,38176,38177,38173,38172,38175,36723,@LootDUNGEON_N);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@LootDUNGEON_N,1,100,1,0,-@ICC_TrashDungeonNFinal,2); -- 2 selection from reference

-- --------------------------------
-- -- Apply Trash Loot Dungeon_H --
-- -------------------------------- 
SET @LootDUNGEON_H := 100001; -- needs official entry designated
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_H WHERE `entry` IN (37569,37568,37567,37565,38193,37566,37563); -- FoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_H WHERE `entry` IN (37609,37638,37637,37635,37636,38249,38025,38026); -- PoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_H WHERE `entry` IN (37720,38524,38525,38563,38544,38564); -- HoR
DELETE FROM `creature_loot_template` WHERE `entry` IN (37569,37568,37567,37565,38193,37566,37563,37609,37638,37637,37635,37636,38249,38025,38026,37720,38524,38525,38563,38544,38564,@LootDUNGEON_H);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@LootDUNGEON_H,1,100,1,0,-@ICC_TrashDungeonHFinal,2); -- 2 selection from reference

-- --------------------------
-- -- Apply Trash Loot ICC --
-- --------------------------
SET @LootRAID := 100002; -- needs official entry designated
UPDATE `creature_template` SET `lootid`=@LootRAID WHERE `entry` IN(37012,37022,37571,37664,37595,37662,37665,37663,37666,37007,36811,36807,36829,36805,36808,36880,37546,37531,37229,37228,36725,37501,37502,37023,10404,38494,38490,36724,37126,37544,37545,37098,37038);
DELETE FROM `creature_loot_template` WHERE `entry` IN(37012,37022,37571,37664,37595,37662,37665,37663,37666,37007,36811,36807,36829,36805,36808,36880,37546,37531,37229,37228,36725,37501,37502,37023,10404,38494,38490,36724,37126,37544,37545,37098,37038,@LootRAID);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@LootRAID,1,100,1,0,-@ICC_TrashCitadelFinal,2); -- 2 selection from reference

-- --------------------
-- -- Special Cases: --
-- --------------------
-- Specialids
CALL `sp_set_npc_lootid_bylist` ('37217,37025,37230,37532,36891',NULL);
-- Loot
DELETE FROM `creature_loot_template` WHERE `entry` IN (37217,37025,37230,37532,36891);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Precious
(37217,1,100,1,0,-@ICC_TrashCitadelFinal,2), -- 2 selection from reference
(37217,52019,30,1,0,1,1), -- Precious Ribbon
-- Stinky
(37025,1,100,1,0,-@ICC_TrashCitadelFinal,2), -- 2 selection from reference
-- Dragons (Spire Frostwyrm)
(37230,1,100,1,0,-@ICC_TrashCitadelFinal,2), -- 2 selection from reference
(37230,33631,65,1,1,2,3), -- Frosted Claw
(37230,33632,35,1,1,2,3), -- Icicle Fang
(37532,33631,65,1,1,2,3), -- Frosted Claw
(37532,33632,35,1,1,2,3), -- Icicle Fang
(36891,33631,65,1,1,2,3), -- Frosted Claw
(36891,33632,35,1,1,2,3); -- Icicle Fang
-- Template updates
UPDATE `creature_template` SET `speed_walk`=1,`speed_run`=2 WHERE `entry`=28782; -- Acherus Deathcharger
UPDATE `creature_template` SET `speed_walk`=1.2,`speed_run`=0.71429 WHERE `entry`=33113; -- Flame Leviathan
UPDATE `creature_template` SET `baseattacktime`=1500,`unit_flags`=`unit_flags`|33554688 WHERE `entry`=36678; -- Professor Putricide
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571 WHERE `entry`=35637; -- Marshal Jacob Alerius' Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571 WHERE `entry`=35633; -- Ambrose Boltspark's Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571 WHERE `entry`=35768; -- Colosos' Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571 WHERE `entry`=34658; -- Jaelyne Evensong's Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571 WHERE `entry`=35636; -- Lana Stouthammer's Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571 WHERE `entry`=35638; -- Mokra the Skullcrusher's Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571,`VehicleId`=480 WHERE `entry`=35635; -- Eressea Dawnsinger's Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571 WHERE `entry`=35640; -- Runok Wildmane's Mount
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.38571,`VehicleId`=485 WHERE `entry`=35641; -- Zul'tore's Mount
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33587456,`speed_run`=1.28968 WHERE `entry`=35634; -- Deathstalker Visceri's Mount

-- Addon data
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=69,`auras`=NULL WHERE `entry`=36678; -- Professor Putricide
DELETE FROM `creature_template_addon` WHERE `entry` IN (28782,33113,35637,35633,35768,34658,35636,35638,35635,35640,35641,35634,36661);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28782,0,0,1,0, NULL), -- Acherus Deathcharger
(33113,0,0,1,0, NULL), -- Flame Leviathan
(35637,0,0,1,0, '67870 0'), -- Marshal Jacob Alerius' Mount, Auras: Trample
(35633,0,0,1,0, '67870 0'), -- Ambrose Boltspark's Mount
(35768,0,0,1,0, '67870 0'), -- Colosos' Mount
(34658,0,0,1,0, '67870 0'), -- Jaelyne Evensong's Mount
(35636,0,0,1,0, '67870 0'), -- Lana Stouthammer's Mount
(35638,0,0,1,0, '67870 0'), -- Mokra the Skullcrusher's Mount
(35635,0,0,1,0, '67870 0'), -- Eressea Dawnsinger's Mount
(35640,0,0,1,0, '67870 0'), -- Runok Wildmane's Mount
(35641,0,0,1,0, '67870 0'), -- Zul'tore's Mount
(35634,0,0,1,0, '67870 0'), -- Deathstalker Visceri's Mount
(36661,0,0,1,0, NULL); -- Rimefang

-- Spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (24418,33113,36678,33214,35637,35633,35768,34658,35636,35638,35635,35640,35641,35634,33669,36476,36661) AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(24418,46598,0,0,0,1,0,0,0),  -- Acherus Deathcharger - Ride Vehicle Hardcoded
(33113,46598,0,0,0,1,0,0,0),  -- Flame Leviathan - Ride Vehicle Hardcoded
(36678,46598,0,0,0,1,0,0,0), -- Professor Putricide - Ride Vehicle Hardcoded
(33214,46598,0,0,0,1,0,0,0), -- Mechanolift 304-A - Ride Vehicle Hardcoded
(35637,46598,0,0,0,1,0,0,0), -- Marshal Jacob Alerius' Mount - Ride Vehicle Hardcoded
(35633,46598,0,0,0,1,0,0,0), -- Ambrose Boltspark's Mount - Ride Vehicle Hardcoded
(35768,46598,0,0,0,1,0,0,0), -- Colosos' Mount - Ride Vehicle Hardcoded
(34658,46598,0,0,0,1,0,0,0), -- Jaelyne Evensong's Mount - Ride Vehicle Hardcoded
(35636,46598,0,0,0,1,0,0,0), -- Lana Stouthammer's Evensong's Mount - Ride Vehicle Hardcoded
(35638,46598,0,0,0,1,0,0,0), --  Mokra the Skullcrusher's Mount - Ride Vehicle Hardcoded
(35635,46598,0,0,0,1,0,0,0), -- Eressea Dawnsinger's Mount - Ride Vehicle Hardcoded
(35640,46598,0,0,0,1,0,0,0), -- Runok Wildmane's Mount - Ride Vehicle Hardcoded
(35641,46598,0,0,0,1,0,0,0), -- Zul'tore's Mount - Ride Vehicle Hardcoded
(35634,46598,0,0,0,1,0,0,0), -- Deathstalker Visceri's Mount - Ride Vehicle Hardcoded
(33669,46598,0,0,0,1,0,0,0), -- Demolisher Engineer Blastwrench - Ride Vehicle Hardcoded
(36476,46598,0,0,0,1,0,0,0), -- Ick - Ride Vehicle Hardcoded
(36661,46598,0,0,0,1,0,0,0); -- Rimefang - Ride Vehicle Hardcoded

-- Model data
UPDATE `creature_model_info` SET `bounding_radius`=0.93,`combat_reach`=2,`gender`=2 WHERE `modelid`=28875; -- Flame Leviathan
UPDATE `creature_model_info` SET `bounding_radius`=1.209,`combat_reach`=7.8,`gender`=0 WHERE `modelid`=30881; -- Professor Putricide
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=0 WHERE `modelid`=29255; -- Colosos' Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.525,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=9991; -- Jaelyne Evensong's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=2,`gender`=0 WHERE `modelid`=2787; -- Lana Stouthammer's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=29879; -- Mokra the Skullcrusher's Mount
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=28607; -- Eressea Dawnsinger's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.34,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=29880; -- Runok Wildmane's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=10718; -- Deathstalker Visceri's Mount
-- Spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (30021,31748,32795,32796,34045,33782,33318,33323,33322,33317,33319,33316,33321,33324,33320,33845,33844,33217);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(30021,46598,0,0,0,1,0,0,0), -- Enormos - Ride Vehicle Hardcoded
(30021,55785,0,0,0,3,0,0,0), -- Enormos - Mammoth Jack
(31748,56378,0,0,0,1,0,0,0), -- Hover Disk (1)- Summon Disk
(32795,56378,0,0,0,1,0,0,0), -- Antipersonnel Cannon (1) - Ride Vehicle
(32796,60683,0,0,0,1,0,0,0), -- Battleground Demolisher (1) - Ride Vehicle
(34045,65030,0,0,0,1,0,0,0), -- Salvaged Chopper (1) - Ride Vehicle
(33782,63151,0,0,0,1,0,0,0), -- Argent Warhorse
(33318,63151,0,0,0,1,0,0,0), -- Exodar Elekk
(33323,63151,0,0,0,1,0,0,0), -- Silvermoon Hawkstrider
(33322,63151,0,0,0,1,0,0,0), -- Thunder Bluff Kodo
(33317,63151,0,0,0,1,0,0,0), -- Gnomeregan Mechanostrider
(33319,63151,0,0,0,1,0,0,0), -- Darnassian Nightsaber
(33316,63151,0,0,0,1,0,0,0), -- Ironforge Ram
(33321,63151,0,0,0,1,0,0,0), -- Darkspear Raptor
(33324,63151,0,0,0,1,0,0,0), -- Forsaken Warhorse
(33320,63151,0,0,0,1,0,0,0), -- Orgrimmar Wolf
(33845,63151,0,0,0,1,0,0,0), -- Quel''dorei Steed
(33844,63151,0,0,0,1,0,0,0), -- Sunreaver Hawkstrider
(33217,63151,0,0,0,1,0,0,0); -- Stormwind Steed
-- Template update
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`speed_walk`=0.666668,`speed_run`=2 WHERE `entry`=30021; -- Enormos
-- Spellclick
UPDATE `npc_spellclick_spells` SET `spell_id`=60682 WHERE `npc_entry`=32795 AND `spell_id`=56378; -- typo
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (33778,33687,32189,30330,29625,29433,29555,28614,35644,36558,27692,27756,27755);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33778,43671,0,0,0,1,0,0,0), -- Tournament Hippogryph - Ride Vehicle
(33687,46598,0,0,0,1,0,0,0), -- Chillmaw - Ride Vehicle Hardcoded
(32189,46598,0,0,0,1,0,0,0), -- Skybreaker Recon Fighter - Ride Vehicle Hardcoded
(30330,46598,0,0,0,1,0,0,0), -- Jotunheim Proto-Drake - Ride Vehicle Hardcoded
(29625,46598,0,0,0,1,0,0,0), -- Hyldsmeet Proto-Drake - Ride Vehicle Hardcoded
(29433,47020,0,0,0,1,0,0,0), -- Goblin Sapper - Ride Vehicle
(29555,47020,0,0,0,1,0,0,0), -- Goblin Sapper - Ride Vehicle
(28614,46598,0,0,0,1,0,0,0), -- Scarlet Gryphon - Ride Vehicle Hardcoded
(35644,67830,0,0,0,1,0,0,0), -- Argent Warhorse - Ride Vehicle (guessed)
(36558,67830,0,0,0,1,0,0,0), -- Argent Battleworg - Ride Vehicle
(27692,49427,0,0,0,2,0,0,0), -- Emerald Drake
(27756,49463,0,0,0,2,0,0,0), -- Ruby Drake
(27755,49459,0,0,0,2,0,0,0); -- Amber Drake

-- Template updates
UPDATE `creature_template` SET `speed_walk`=2,`speed_run`=1.5873 WHERE `entry`=33687; -- Chillmaw
UPDATE `creature_template` SET `speed_walk`=8 WHERE `entry`=32189; -- Skybreaker Recon Fighter
UPDATE `creature_template` SET `speed_walk`=6 WHERE `entry`=30330; -- Jotunheim Proto-Drake
UPDATE `creature_template` SET `speed_walk`=6,`speed_run`=3.14286 WHERE `entry`=29625; -- Hyldsmeet Proto-Drake
UPDATE `creature_template` SET `equipment_id`=57 WHERE `entry`=29555; -- Goblin Sapper
UPDATE `creature_template` SET `speed_walk`=1,`speed_run`=3.14286 WHERE `entry`=28614; -- Scarlet Gryphon
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`npcflag`=`npcflag`|16777216,`unit_flags`=`unit_flags`|256,`speed_run`=1.57143 WHERE `entry`=35644; -- Argent Warhorse
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|16777216,`speed_run`=1.57143 WHERE `entry`=36558; -- Argent Battleworg

-- Model info
UPDATE `creature_model_info` SET `bounding_radius`=0.2448,`combat_reach`=1.2,`gender`=1 WHERE `modelid`=28096; -- Goblin Sapper

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (33687,32189,30330,29625,29433,29555,28614,35644,36558,27692,27756,27755);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33687,0,50331648,1,0, NULL), -- Chillmaw
(32189,0,50397184,1,0, '60464 0 60464 1'), -- Skybreaker Recon Fighter, auras: Cloaked Alliance Peeps
(30330,0,0,1,0, NULL), -- Jotunheim Proto-Drake
(29625,0,50331648,1,0, NULL), -- Hyldsmeet Proto-Drake
(29433,0,0,1,0, NULL), -- Goblin Sapper
(29555,0,0,1,0, NULL), -- Goblin Sapper
(28614,0,0,1,0, '48356 0 48356 1'), -- Scarlet Gryphon, auras: See Wintergarde Invisibility
(35644,0,0,1,0, '67870 0'), -- Argent Warhorse, auras: Trample
(36558,0,0,257,0, '67865 0'), -- Argent Battleworg, auras: Trample
(27692,0,50331648,257,0, NULL), -- Emerald Drake
(27756,0,50331648,257,0, NULL), -- Ruby Drake
(27755,0,50331648,257,0, NULL); -- Amber Drake

-- Conditions for spell_aura_control_vehicle
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (49346,49464,49460);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
(13,0,49346,0,18,1,27692,0, 'Emeral Drake'),
(13,0,49464,0,18,1,27756,0, 'Ruby Drake'),
(13,0,49460,0,18,1,27755,0, 'Amber Drake');
RENAME TABLE `vehicle_accessory` TO `vehicle_template_accessory`;
 
CREATE TABLE IF NOT EXISTS `vehicle_accessory` (
  `guid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  `accessory_entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  `seat_id` TINYINT(1) NOT NULL DEFAULT 0,
  `minion` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` TEXT NOT NULL,
  `summontype` TINYINT(3) UNSIGNED NOT NULL DEFAULT 6 COMMENT 'see enum TempSummonType',
  `summontimer` INT(10) UNSIGNED NOT NULL DEFAULT 30000 COMMENT 'timer, only relevant for certain summontypes',
  PRIMARY KEY (`guid`,`seat_id`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry` IN (36558,35644); -- Argent mounts inside ToC5 shouldn't have any aura (for now)
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36477; -- Krick isn't a vehicle
DELETE FROM `achievement_reward` WHERE `entry` IN (4784,4785); -- Revert Emblematic achiev rewards
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry`=35644; -- Argent Warhorse (faction depends on the players faction that starts ToC5 fight)
DELETE FROM `spell_proc_event` WHERE `entry`=55681;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(55681,0x00,6,0x00008000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Glyph of Shadow Word: Pain
DELETE FROM `disables` WHERE `entry`=7622 AND `sourceType`=4;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7622;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7622,0,0,0, '');
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry` IN (35637,35633,35768,34658,35636,35638,35635,35640,35641,35634); -- Vehicles inside ToC
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN (
33870,33790,33791,33792,33793,33794,33795,33796,33798,33799,33800,33842,33843, -- AT stabled npcs
33782,33318,33323,33322,33317,33319,33316,33321,33324,33320,33845,33844,33217); -- AT vehicles (mounts)
DELETE FROM `command` WHERE `name` IN('reload vehicle_accessory','reload vehicle_template_accessory');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload vehicle_accessory', 3, 'Syntax: .reload vehicle_accessory\n\nReloads GUID-based vehicle accessory definitions from the database.'),
('reload vehicle_template_accessory', 3, 'Syntax: .reload vehicle_template_accessory\n\nReloads entry-based vehicle accessory definitions from the database.');
SET @ENTRY := 28297;
SET @NPC := 151894;
SET @PATH := @NPC * 10;
-- Template update
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32768,`speed_run`=1.38571 WHERE `entry`=@ENTRY; -- Shango
-- Spawn
DELETE FROM `creature` WHERE `id`=@ENTRY;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@NPC,@ENTRY,571,1,1,0,0,6203.80664,5528.569,-51.8230972,2.62550282,120,0,0,1,0,0,2);
-- Addon data
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES
(@NPC,@PATH,1,0, NULL); -- Shango
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY,0,0,1,0, NULL); -- Shango
-- Pathing for Shango
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6213.67,5522.98,-51.8231,0,0,0,100,0),
(@PATH,2,6221.91,5519.84,-50.9481,0,0,0,100,0),
(@PATH,3,6228.36,5517.6,-49.2341,0,0,0,100,0),
(@PATH,4,6237.21,5503.82,-44.4988,0,0,0,100,0),
(@PATH,5,6247.96,5494.78,-44.9726,0,0,0,100,0),
(@PATH,6,6260.08,5484.58,-45.4597,0,0,0,100,0),
(@PATH,7,6274.67,5480.42,-45.1359,0,0,0,100,0),
(@PATH,8,6288.82,5476,-46.3803,0,0,0,100,0),
(@PATH,9,6305.17,5470.43,-44.6878,0,0,0,100,0),
(@PATH,10,6311.82,5459.03,-48.2749,0,0,0,100,0),
(@PATH,11,6310.37,5444.21,-52.0538,0,0,0,100,0),
(@PATH,12,6294.56,5445.27,-54.3711,0,0,0,100,0),
(@PATH,13,6277.3,5459.18,-51.4723,0,0,0,100,0),
(@PATH,14,6260.51,5469.62,-51.1171,0,0,0,100,0),
(@PATH,15,6248.49,5480.35,-50.1687,0,0,0,100,0),
(@PATH,16,6235.66,5488.57,-51.2285,0,0,0,100,0),
(@PATH,17,6220.07,5498.48,-58.4601,0,0,0,100,0),
(@PATH,18,6211.14,5508.38,-58.7072,0,0,0,100,0),
(@PATH,19,6203.5,5519.82,-56.4056,0,0,0,100,0),
(@PATH,20,6204.61,5524.55,-53.8457,0,0,0,100,0),
(@PATH,21,6207.23,5525.67,-52.505,0,0,0,100,0);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_map_of_the_geyser_fields';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(45853, 'spell_item_map_of_the_geyser_fields');
-- Fix for quests: 
-- From Sniff:
SET @guid := 78; -- Set by TDB
DELETE FROM `creature` WHERE `id` IN (25664,25665,25666);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@guid  ,25664,571,1,1,0,0,3487.67456,4516.643,11.441596,2.18166161,120,0,0,1,0,0,0), -- South Killcredit
(@guid+1,25665,571,1,1,0,0,3645.95483,4551.105,12.4051342,0.715585,120,0,0,1,0,0,0), -- Northeast Killcredit
(@guid+2,25666,571,1,1,0,0,3649.16748,4744.338,12.3212109,0.8901179,120,0,0,1,0,0,0); -- Northwest Killcredit
-- template updates (if needed)
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=35,`faction_H`=35,`minlevel`=70,`maxlevel`=70,`scale`=1,`speed_run`=1.142857,`speed_walk`=1,`unit_flags`=`unit_flags`|512|33554432 WHERE `entry`=25664;
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=35,`faction_H`=35,`minlevel`=70,`maxlevel`=70,`scale`=1,`speed_run`=1.142857,`speed_walk`=1,`unit_flags`=`unit_flags`|512|33554432 WHERE `entry`=25665;
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=35,`faction_H`=35,`minlevel`=70,`maxlevel`=70,`scale`=1,`speed_run`=1.142857,`speed_walk`=1,`unit_flags`=`unit_flags`|512|33554432 WHERE `entry`=25666;

-- SAI for the Killcredits:
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (25664,25665,25666);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25664,25665,25666);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25664,0,0,0,8,0,100,0,45853,1,0,0,33,25664,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Mark Sinkhole Killcredit: South'),
(25665,0,0,0,8,0,100,0,45853,1,0,0,33,25665,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Mark Sinkhole Killcredit: NorthEast'),
(25666,0,0,0,8,0,100,0,45853,1,0,0,33,25666,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Mark Sinkhole Killcredit: NorthWest');
DELETE FROM `creature_addon` WHERE `guid` IN (101966,102039);
-- SrcItemCount is not a WDB field (0/1).
UPDATE `quest_template` SET `SrcItemCount` = 1 WHERE `SrcItemId` != 0 AND `SrcItemCount` = 0;

-- Missing items
DELETE FROM `item_template` WHERE `entry` IN (52274,52275,52276,52344,52562,52563,52565,52706,52707,52729,52835,53048,54516) AND `WDBVerified` < 0;
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`unk0`,`name`,`displayid`,`Quality`,`Flags`,`FlagsExtra`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`StatsCount`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`ScalingStatDistribution`,`ScalingStatValue`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`RandomSuffix`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`TotemCategory`,`socketColor_1`,`socketContent_1`,`socketColor_2`,`socketContent_2`,`socketColor_3`,`socketContent_3`,`socketBonus`,`GemProperties`,`RequiredDisenchantSkill`,`ArmorDamageModifier`,`Duration`,`ItemLimitCategory`,`HolidayId`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`WDBVerified`) VALUES
(52274,15,0,-1,'Earthen Ring Supplies',21202,1,4,0,1,0,0,0,-1,-1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52275,12,0,-1,'Tablets of the Earth',11185,1,198656,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52276,12,0,-1,'Tablets of Fire',11185,1,133120,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52344,15,0,-1,'Earthen Ring Supplies',21202,1,4,0,1,0,0,0,-1,-1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52562,12,0,-1,'Elemental Fire for the Soul',34752,1,131072,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',3611,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52563,12,0,-1,'What Does ''The End of All Things'' Mean for Me?',34751,1,196608,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',3612,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52565,12,0,-1,'Finding Security and Comfort in a Doomed World',45202,1,131072,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',3613,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52706,12,0,-1,'Warning Poster',65893,1,64,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,74033,0,0,0,1500,0,-1,0,5,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52707,12,0,-1,'Warning Poster',65893,1,64,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,74098,0,0,0,1500,0,-1,0,5,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52729,4,1,-1,'Recruit''s Robe',65920,1,0,0,1,0,0,20,-1,-1,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,74267,1,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'',0,0,0,0,0,4,0,0,0,0,0,55,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(52835,12,0,-1,'Elemental Devices',23712,1,0,0,1,0,0,0,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'Small, portable devices housing powerful elementals.',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(53048,4,0,-1,'Doomsday Message',34752,1,0,0,1,0,0,16,-1,-1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,74491,0,0,0,1500,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,4,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340),
(54516,15,0,-1,'Loot-Filled Pumpkin',67153,3,4,0,1,0,0,0,-1,-1,80,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'',0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,-12340);

-- Spells placeholders
DELETE FROM `spell_dbc` WHERE `Id` IN (38758,38788,46251,45140,45144,45148);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(38758, '[PH] Quest reward: Exorcising the Trees'),
(38788, '[PH] Quest reward: Spirit Calling'),
(46251, '[PH] Quest reward: Blood for Blood'),
(45140, '[PH] Quest reward: Making Ready / Don''t Stop Now....'),
(45144, '[PH] Quest reward: Disrupt the Greengill Coast'),
(45148, '[PH] Quest reward: Ata''mal Armaments');

DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=10850; -- Exorcising the Trees
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=10853; -- Spirit Calling
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=11466; -- Jack Likes His Drink
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=11515; -- Blood for Blood
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=11535; -- Making Ready (available before phase 3b in Isle of Quel'danas)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=11536; -- Don't Stop Now.... (available after phase 3b in Isle of Quel'danas)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=11541; -- Disrupt the Greengill Coast (available after phase 4 in Isle of Quel'danas)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=11544; -- Ata'mal Armaments (available after phase 3b in Isle of Quel'danas)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=12616; -- Chamber of Secrets (world event: Scourge Invasion)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=12734; -- Rejek: First Blood
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=24869; -- Deprogramming (ICC)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=24879; -- Blood Quickening (ICC)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=24916; -- Jaina's Locket (ICC)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=24918; -- Sylvanas' Vengeance (ICC)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=24919; -- The Lightbringer's Redemption (ICC)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25055; -- Subduing the Elements (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25092; -- Subduing the Elements (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25180; -- Tablets of the Earth (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25181; -- Tablets of Fire (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25228; -- Prophecies Of Doom (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25253; -- Prophecies Of Doom (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25254; -- Signs Of The Times (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25282; -- Signs Of The Times (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25347; -- The Doomsday Plan (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25351; -- Alert Our Leaders (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25380; -- Spreading The Word (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25415; -- Spreading The Word (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25417; -- The Doomsday Plan (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25425; -- Warn King Wrynn (world event: Elemental Unrest)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25212; -- Vent Horizon (world event: Operation: Gnomeregan)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25229; -- A Few Good Gnomes (world event: Operation: Gnomeregan)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25283; -- Prepping the Speech (world event: Operation: Gnomeregan)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25286; -- Words for Delivery (world event: Operation: Gnomeregan)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25287; -- Words for Delivery (world event: Operation: Gnomeregan)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25393; -- Operation: Gnomeregan (world event: Operation: Gnomeregan)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25500; -- Words for Delivery (world event: Operation: Gnomeregan)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25444; -- Da Perfect Spies (world event: Zalazane's Fall)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25445; -- Zalazane's Fall (world event: Zalazane's Fall)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25446; -- Frogs Away! (world event: Zalazane's Fall)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25461; -- Trollin' For Volunteers (world event: Zalazane's Fall)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25480; -- Dance Of De Spirits (world event: Zalazane's Fall)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25482; -- World Event Dungeon - Headless Horseman
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25483; -- World Event Dungeon - Coren Direbrew
-- DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=25485; -- World Event Dungeon - Hummel (missing item)
DELETE FROM `page_text` WHERE `entry` IN (3611,3612,3613,3280,3281,3282) AND `WDBVerified`=1;
DELETE FROM `page_text` WHERE `entry`=9999;
INSERT INTO `page_text` (`entry`, `text`, `next_page`,`WDBVerified`) VALUES
(3611, 'When the flames consume Azeroth, where will you be?\r\n\r\nWe know that no one wants to dwell on their impending doom, but it''s worth thinking about where you''ll be spending the hereafter.\r\n\r\nOur sages have predicted that the end of the world is nigh, and only the prepared will survive. We can help you survive the raging inferno that will cleanse this world of the wicked. Isn''t it time you found some peace of mind?', 0,1),
(3612, 'You''ve no doubt heard the phrase "all good things must come to an end" and so it is with your life on Azeroth. It won''t be long before the world erupts into chaos as the elements reclaim their birthright.\r\n\r\nBut you don''t have to be afraid during these harrowing times. You don''t have to die. We can help you ascend to a new way of life, beyond death, beyond fear, and beyond the powerlessness of mortality. Join us today.', 0,1),
(3613, 'We live in tumultuous times. War, invasion, and famine have swept the world, but the real trial is yet to come: the end of Azeroth itself.\r\n\r\nHow will you cope with the loss and destruction of everything you hold dear? The answer is that you don''t have to. Bring your friends and family to one of our gatherings and learn how you can survive the apocalypse together, with us.', 0,1),
(3280, 'Long ago, when the North Wind ruled these peaks alone, a powerful Taunka Chieftain''s brother coveted these lands for himself.', 0,1),
(3281, 'The Chieftain''s brother, Stormhoof gathered all his strength and set out to conquer the Storm Peaks from its rightful ruler, the North Wind.', 0,1),
(3282, 'Stormhoof ambushed the North Wind in the heart of it''s domain, and nearly succeeded in his plot. But the North Wind survived Stormhoof''s treachery and executed the Taunka as punishment for his invasion.', 0,1);

UPDATE `page_text` SET `text`='Missing WDB data.',`WDBVerified`=1 WHERE `entry` IN (3487,3469,3454,3403,3346,3079,3562,2822);
DELETE FROM `spell_dbc` WHERE `Id` IN (38758,38665);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(38758, '[PH] Quest reward: Nether Gas In a Fel Fire Engine'),
(38665, '[PH] Quest reward: Exorcising the Trees');

DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (
10830, -- Exorcising the Trees
10850); -- Nether Gas In a Fel Fire Engine
UPDATE `creature_template` SET `flags_extra`=((`flags_extra`|128)&~2) WHERE `entry` IN (38153,26043,37181,37702,37183,36848,37547,37519,37215,38463,38319,38879); -- Various triggers in ICC

-- Delete gunship spawns
DELETE FROM `creature` WHERE `id` IN (37547,37519,37215,36971,37227,36961,36969,36950,37116,36978,37540,37488);

DELETE FROM `creature_template_addon` WHERE `entry`=38463;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(38463,0,0,1,0, '72100 0'); -- Empowering Orb Visual Stalker

UPDATE `gameobject_template` SET `faction`=35, `flags`=16 WHERE `entry`=201741; -- Empowering Blood Orb
-- Remove model aura when shadowy disguise is removed
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-32756;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-32756,-38080,0, 'Shadowy Disguise: Remove model aura'),
(-32756,-38081,0, 'Shadowy Disguise: Remove model aura');
-- ICC Quest pools
SET @pool := 5679;
DELETE FROM `pool_quest` WHERE `pool_entry` BETWEEN @pool AND @pool+11;
DELETE FROM `pool_template` WHERE `entry` BETWEEN @pool AND @pool+11;
DELETE FROM `pool_pool` WHERE `mother_pool` IN (@pool,@pool+1);

INSERT INTO `pool_quest` (`entry`,`pool_entry`,`description`) VALUES
(24874,@pool+02, 'Blood Quickening (10)'),
(24869,@pool+03, 'Deprogramming (10)'),
(24873,@pool+04, 'Residue Rendezvous (10)'),
(24872,@pool+05, 'Respite for a Tormented Soul (10)'),
(24870,@pool+06, 'Securing the Ramparts HORDE (10)'),
(24871,@pool+06, 'Securing the Ramparts ALLY (10)'),
(24879,@pool+07, 'Blood Quickening (25)'),
(24875,@pool+08, 'Deprogramming (25)'),
(24878,@pool+09, 'Residue Rendezvous (25)'),
(24880,@pool+10, 'Respite for a Tormented Soul (25)'),
(24876,@pool+11, 'Securing the Ramparts ALLY (25)'),
(24877,@pool+11, 'Securing the Ramparts HORDE (25)');

INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@pool+00,1, 'General ICC 10man pool'),
(@pool+01,1, 'General ICC 25man pool'),
(@pool+02,1, 'Blood Quickening (10)'),
(@pool+03,1, 'Deprogramming (10)'),
(@pool+04,1, 'Residue Rendezvous (10)'),
(@pool+05,1, 'Respite for a Tormented Soul (10)'),
(@pool+06,2, 'Securing the Ramparts (10)'),
(@pool+07,1, 'Blood Quickening (25)'),
(@pool+08,1, 'Deprogramming (25)'),
(@pool+09,1, 'Residue Rendezvous (25)'),
(@pool+10,1, 'Respite for a Tormented Soul (25)'),
(@pool+11,2, 'Securing the Ramparts (25)');

INSERT INTO `pool_pool` (`pool_id`,`mother_pool`,`chance`,`description`) VALUES
(@pool+02,@pool+00,0, 'Blood Quickening (10)'),
(@pool+03,@pool+00,0, 'Deprogramming (10)'),
(@pool+04,@pool+00,0, 'Residue Rendezvous (10)'),
(@pool+05,@pool+00,0, 'Respite for a Tormented Soul (10)'),
(@pool+06,@pool+00,0, 'Securing the Ramparts (10)'),
(@pool+07,@pool+01,0, 'Blood Quickening (25)'),
(@pool+08,@pool+01,0, 'Deprogramming (25)'),
(@pool+09,@pool+01,0, 'Residue Rendezvous (25)'),
(@pool+10,@pool+01,0, 'Respite for a Tormented Soul (25)'),
(@pool+11,@pool+01,0, 'Securing the Ramparts (25)');
-- Overide AI
UPDATE `creature_template` SET `AIName`='AggressorAI' WHERE `entry`=27131;
-- Use correct item for Tharon'ja quest item drop (Prophet's Enchanted Tiki)
UPDATE `creature_loot_template` SET `item`=43670 WHERE `entry`=31360 AND `item`=13249;
-- disable untill it can be properly scripted
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (7020,7021);
INSERT INTO `disables`
(`sourceType`,`entry`,`flags`,`params_0`,`params_1`,`comment`)
VALUES
(4,7020,0, '', '', 'disable Not In My House'),
(4,7021,0, '', '', 'disable Not In My House');
-- Wrong start/end NPCs for Caverns of Time Chain:
-- Andormu(man) should be Andormu(child)
UPDATE `creature_involvedrelation` SET `id`=20130 WHERE `quest`IN(10285,10298); 
UPDATE `creature_questrelation` SET `id`=20130 WHERE `quest`=10296;
-- condition for Faerie Fire bonus (only in bear form)
DELETE FROM `conditions` WHERE `SourceEntry` =60089;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17,0,60089,0,1,5487,0,0,0, '', 'Faerie Fire - Bear Form'),
(17,0,60089,1,1,9634,0,0,0, '', 'Faerie Fire - Dire Bear Form');
DELETE FROM `conditions` WHERE `SourceGroup`=31360 AND `SourceEntry`=13249;
DELETE FROM `spell_script_names` WHERE `spell_id`=48917;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48917, 'spell_q10041_q10040_who_are_they');
DELETE FROM `gossip_menu` WHERE `entry` IN (7757,7758,7759,7760,7761,7772,21253,7775,7776,7755,7774);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(7757,9497),
(7758,9503),
(7759,9502),
(7760,9505),
(7761,9506),
(7772,9520),
(21253,9520),
(7775,9523),
(7776,9524),
(7755,9498),
(7774,9522);

UPDATE `creature_template` SET `gossip_menu_id`=7774 WHERE `entry`=18712;
UPDATE `creature_template` SET `gossip_menu_id`=7775 WHERE `entry`=17088;
UPDATE `creature_template` SET `gossip_menu_id`=7776 WHERE `entry`=18720;
UPDATE `creature_template` SET `gossip_menu_id`=7775 WHERE `entry`=16519;
UPDATE `creature_template` SET `gossip_menu_id`=7772 WHERE `entry`=18714;
UPDATE `creature_template` SET `gossip_menu_id`=21253 WHERE `entry`=18715;
UPDATE `creature_template` SET `gossip_menu_id`=7759 WHERE `entry`=18716;
UPDATE `creature_template` SET `gossip_menu_id`=7757 WHERE `entry`=18717;
UPDATE `creature_template` SET `gossip_menu_id`=7760 WHERE `entry`=18719;

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7772,21253,7757,7759,7760);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7772,0,0, 'Scout Neftis, I need another disguise.',1,1,0,0,0,0,0,NULL),
(21253,0,0, 'Private Weeks, I need another disguise.',1,1,0,0,0,0,0,NULL),
(7757,0,0, 'Why are you fixing all of this up?',1,1,7755,0,0,0,0,NULL),
(7759,0,0, 'What are you doing there?',1,1,7758,0,0,0,0,NULL),
(7760,0,0, 'Advisor, what''s the latest news?',1,1,7761,0,0,0,0,NULL);

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (18714,18717,18716,18719,18715);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18714,18717,18716,18719,18715);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(18714,0,0,0,19,0,100,0,10041,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Neftis - On Quest Accept - Cast spell 48917 on player'),
(18714,0,1,0,20,0,100,0,10041,0,0,0,28,32756,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Neftis - On Quest Reward - Remove spell 32756 on player'),
(18714,0,2,0,62,0,100,0,7772,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Neftis - On Gossip option - Cast spell 48917 on player'),
(18715,0,0,0,19,0,100,0,10040,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Private Weeks - On Quest Accept - Cast spell 48917 on player'),
(18715,0,1,0,20,0,100,0,10040,0,0,0,28,32756,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Private Weeks - On Quest Reward - Remove spell 32756 on player'),
(18715,0,2,0,62,0,100,0,21253,0,0,0,11,48917,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Private Week - On Gossip option - Cast spell 48917 on player'),
(18717,0,0,0,62,0,100,0,7757,0,0,0,11,47069,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Laborer - On Gossip option - Cast spell 47069 on player'),
(18716,0,0,0,62,0,100,0,7759,0,0,0,11,47068,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Initiate - On Gossip option - Cast spell 47068 on player'),
(18719,0,0,0,62,0,100,0,7760,0,0,0,11,47070,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Advisor - On Gossip option - Cast spell 47070 on player');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (7772,7757,7759,7760,21253);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,21253,0,0,9,10040,0,0,0, 'Show gossip option 21253 if player has quest 10040'),
(15,7757,0,0,9,10040,0,0,0, 'Show gossip option 7757 if player has quest 10040'),
(15,7759,0,0,9,10040,0,0,0, 'Show gossip option 7759 if player has quest 10040'),
(15,7760,0,0,9,10040,0,0,0, 'Show gossip option 7760 if player has quest 10040'),
(15,7772,0,1,9,10041,0,0,0, 'Show gossip option 7772 if player has quest 10041'),
(15,7757,0,1,9,10041,0,0,0, 'Show gossip option 7757 if player has quest 10041'),
(15,7759,0,1,9,10041,0,0,0, 'Show gossip option 7759 if player has quest 10041'),
(15,7760,0,1,9,10041,0,0,0, 'Show gossip option 7760 if player has quest 10041');
DELETE FROM `creature` WHERE `guid`=201309; -- duplicate spawn
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry` IN (37181,37183);

DELETE FROM `creature_text` WHERE `entry` IN (37119,37181,37183);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37119,0,0, 'This is our final stand. What happens here will echo through the ages. Regardless of outcome, they will know that we fought with honor. That we fought for the freedom and safety of our people!',1,0,0,22,0,16653, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_1'),
(37119,1,0, 'Remember, heroes, fear is your greatest enemy in these befouled halls. Steel your heart and your soul will shine brighter than a thousand suns. The enemy will falter at the sight of you. They will fall as the light of righteousness envelops them!',1,0,0,22,0,16654, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_2'),
(37119,2,0, 'Our march upon Icecrown Citadel begins now!',1,0,0,22,0,16655, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_3'),
(37119,3,0, 'ARTHAS! I swore that I would see you dead and the Scourge dismantled! I''m going to finish what I started at Light''s Hope!',1,0,0,22,0,16656, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_4'),
(37181,0,0, 'You now stand upon the hallowed ground of the Scourge. The Light won''t protect you here, paladin. Nothing will protect you...',1,0,0,0,0,17230, 'The Lich King - SAY_LK_INTRO_1'),
(37181,1,0, 'You could have been my greatest champion, Fordring: A force of darkness that would wash over this world and deliver it into a new age of strife.',1,0,0,0,0,17231, 'The Lich King - SAY_LK_INTRO_2'),
(37181,2,0, 'But that honor is no longer yours. Soon,I will have a new champion.',1,0,0,0,0,17232, 'The Lich King - SAY_LK_INTRO_3'),
(37181,3,0, 'The breaking of this one has been taxing. The atrocities I have committed upon his soul. He has resisted for so long, but he will bow down before his king soon.',1,0,0,0,0,17233, 'The Lich King - SAY_LK_INTRO_4'),
(37181,4,0, 'In the end, you will all serve me.',1,0,0,0,0,17234, 'The Lich King - SAY_LK_INTRO_5'),
(37183,0,0, 'NEVER! I... I will never... serve... you...',1,0,0,0,0,17078, 'Highlord Bolvar Fordragon - SAY_BOLVAR_INTRO_1');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=37011; -- The Damned
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-200966,-201066,37011);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-201066,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(-201066,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%'),
(-201066,0,2,0,6,0,100,1,0,0,0,0,45,1,1,0,0,0,0,10,201466,0,0,0,0,0,0, 'The Damned - Set data for Highlord Tirion Fordring'),
(-200966,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(-200966,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%'),
(-200966,0,2,0,6,0,100,1,0,0,0,0,45,1,1,0,0,0,0,10,201466,0,0,0,0,0,0, 'The Damned - Set data for Highlord Tirion Fordring'),
(37011,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(37011,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%');
UPDATE `creature_template` SET `ScriptName`='npc_highlord_tirion_fordring_lh' WHERE `entry`=37119;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=38153;
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry` IN (37187,37200);
UPDATE `creature` SET `npcflag`=0 WHERE `id` IN (37187,37200);
UPDATE `creature` SET `npcflag`=`npcflag`|1 WHERE `guid`=200982; -- Set gossip flag for spawn at Deathbringer's Rise

DELETE FROM `creature_text` WHERE `entry`=37187 AND `groupid` BETWEEN 15 AND 18;
DELETE FROM `creature_text` WHERE `entry`=37200 AND `groupid` BETWEEN 13 AND 15;
DELETE FROM `creature_text` WHERE `entry`=37119 AND `groupid` IN (4,5);
DELETE FROM `creature_text` WHERE `entry`=37181 AND `groupid`=2;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37187,15,0, 'The paladin still lives? Is it possible, Highlord? Could he have survived?',0,0,0,6,0,17107, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_1'),
(37187,16,0, 'Then we must save him! If we rescue Bolvar Fordragon, we may quell the unrest between the Alliance and the Horde.',0,0,0,5,0,17108, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_2'),
(37187,17,0, 'Our mission is now clear: The Lich King will answer for his crimes and we will save Highlord Bolvar Fordragon!',0,0,0,15,0,17109, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_3'),
(37187,18,0, 'Kor''kron, prepare Orgrim''s Hammer for its final voyage! Champions, our gunship will find a point to dock on the upper reaches of the citadel. Meet us there!',1,0,0,22,0,17110, 'High Overlord Saurfang - SAY_SAURFANG_INTRO_4'),
(37119,4,0, 'The power of the Light knows no bounds, Saurfang. His soul is under great strain, but he lives - for now.',0,0,0,1,0,16658, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_5'),
(37181,2,0, 'But that honor is no longer yours. Soon, I will have a new champion.',1,0,0,0,0,17232, 'The Lich King - SAY_LK_INTRO_3'),
(37200,13,0, 'Could it be, Lord Fordring? If Bolvar lives, mayhap there is hope fer peace between the Alliance and the Horde. We must reach the top o'' this cursed place and free the paladin!',0,0,0,6,0,16980, 'Muradin Bronzebeard - SAY_SAURFANG_INTRO_2'),
(37200,14,0, 'Prepare the Skybreaker fer an aerial assault on the citadel!',1,0,0,5,0,16981, 'Muradin Bronzebeard - SAY_SAURFANG_INTRO_3'),
(37200,15,0, 'Heroes, ye must fight yer way to a clear extraction point within Icecrown. We''ll try an'' rendezvous on the ramparts!',1,0,0,22,0,16982, 'Muradin Bronzebeard - SAY_SAURFANG_INTRO_4'),
(37119,5,0, 'By the Light, it must be so!',0,0,0,5,0,16657, 'Highlord Tirion Fordring - SAY_TIRION_INTRO_A_5');

SET @GUID := 200984;
SET @PATH_ID := @GUID*10;
DELETE FROM `waypoint_data` WHERE `id`=@PATH_ID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH_ID,0,-39.2257,2211.269,27.90252,0,0,0,100,0),
(@PATH_ID,1,-27.3663,2211.575,30.11564,0,0,0,100,0),
(@PATH_ID,2,-15.8420,2211.618,30.11566,0,0,0,100,0),
(@PATH_ID,3,2.744797,2211.411,30.11566,0,0,0,100,0),
(@PATH_ID,4,24.05210,2211.306,30.11566,0,0,0,100,0),
(@PATH_ID,5,64.72570,2211.561,30.11567,0,0,0,100,0);

DELETE FROM `creature_formations` WHERE `leaderGUID`=@GUID;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@GUID,@GUID,0,0,0),
(@GUID,201185,2.72779,127.636,0),
(@GUID,200979,5.34512,256.1602,0),
(@GUID,200889,3.59949,206.7455,0);

DELETE FROM `linked_respawn` WHERE `linkedGuid`=@GUID AND `linkType`=0;
INSERT INTO `linked_respawn` (`guid`,`linkedGuid`,`linkType`) VALUES
(201185,@GUID,0),
(200979,@GUID,0),
(200889,@GUID,0),
(@GUID,@GUID,0);
UPDATE `trinity_string` SET `content_default` = 'Player selected NPC
DB GUID: %u, current GUID: %u.
Faction: %u.
npcFlags: %u.
Entry: %u.
DisplayID: %u (Native: %u).' WHERE `entry` = 539;
/*
1 	0x0000 0001 	MECHANIC_CHARM 	
2 	0x0000 0002 	MECHANIC_DISORIENTED 	
16 	0x0000 0010 	MECHANIC_FEAR 	
32 	0x0000 0020 	MECHANIC_GRIP 
64 	0x0000 0040 	MECHANIC_ROOT 
128 	0x0000 0080 	MECHANIC_PACIFY 	(0 spells use this mechanic)
256 	0x0000 0100 	MECHANIC_SILENCE 
512 	0x0000 0200 	MECHANIC_SLEEP 	
1024 	0x0000 0400 	MECHANIC_SNARE 	
2048 	0x0000 0800 	MECHANIC_STUN 	
4096 	0x0000 1000 	MECHANIC_FREEZE 
8192 	0x0000 2000 	MECHANIC_KNOCKOUT 
65536 	0x0001 0000 	MECHANIC_POLYMORPH 	
131072 	0x0002 0000 	MECHANIC_BANISH 
524288 	0x0008 0000 	MECHANIC_SHACKLE 
4194304 	0x0040 0000 	MECHANIC_TURN 
8388608 	0x0080 0000 	MECHANIC_HORROR 
67108864 	0x0400 0000 	MECHANIC_DAZE 
536870912 	0x2000 0000 	MECHANIC_SAPPED 
*/
-- Update Frozen Halls Immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1|2|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|67108864|536870912 WHERE `entry` IN (
-- Halls of Reflection:
38112,-- Falric
38599,-- Falric (1)
38113,-- Marwyn
38603,-- Marwyn (1)
37226,-- Wrath of the Lich King
-- Pit of Saron:
36494,-- Forgemaster Garfrost
37613,-- Forgemaster Garfrost (1) 
36476,-- Ick
37627,-- Ick (1)
36477,-- Krick
37629,-- Krick (1)
36658,-- Scourgelord Tyrannus
36938,-- Scourgelord Tyrannus (1)
-- The Forge of Souls:
36497,-- Bronjahm
36498,-- Bronjahm (1)
36502,-- Devourer of Souls
37677);-- Devourer of Souls (1)
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan_defense_cannon' WHERE `entry`=33139;
DELETE FROM `areatrigger_scripts` WHERE `entry`=5729;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5729,'at_icc_start_blood_quickening');
UPDATE `creature_template` SET `AIName`='SmartAI',`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=38557;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=38558;

SET @GUID := 137784;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID+0 AND @GUID+4;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,38558,631,15,1,0,0,4637.27,2786.25,424.639,3.57357,604800,0,0,0,0,0,0,0,0,0), -- Infiltrator Minchar
(@GUID+1,38557,631,15,1,0,0,4642.60,2771.61,412.227,0.00000,604800,0,0,0,0,0,0,0,0,0), -- left leg
(@GUID+2,38557,631,15,1,0,0,4630.34,2799.74,412.512,0.00000,604800,0,0,0,0,0,0,0,0,0), -- right leg
(@GUID+3,38557,631,15,1,0,0,4630.73,2802.02,437.672,0.00000,604800,0,0,0,0,0,0,0,0,0), -- right arm
(@GUID+4,38557,631,15,1,0,0,4645.42,2771.67,436.146,0.00000,604800,0,0,0,0,0,0,0,0,0); -- left arm

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN -(@GUID+4) AND -(@GUID+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-(@GUID+1),0,0,0,25,0,100,0,0,0,0,0,11,72302,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam'),
(-(@GUID+2),0,0,0,25,0,100,0,0,0,0,0,11,72301,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam'),
(-(@GUID+3),0,0,0,25,0,100,0,0,0,0,0,11,72304,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam'),
(-(@GUID+4),0,0,0,25,0,100,0,0,0,0,0,11,72303,3,0,0,0,0,10,@GUID,0,0,0,0,0,0, 'Minchar Beam Stalker - Channel beam');

DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID,0,0x03000000,1,427, ''); -- Infiltrator Minchar

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=71322;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,71322,0,18,1,38558,0,0, '', 'Blood-Queen Lana''thel - Annihilate Minchar');
SET @EQUIP := 10137;

UPDATE `creature_template` SET `faction_A`=1770,`faction_H`=1770,`baseattacktime`=2000,`npcflag`=3,`unit_flags`=33088,`dynamicflags`=0,`speed_run`=1,`flags_extra`=`flags_extra`|2 WHERE `entry`=37597; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `faction_A`=1770,`faction_H`=1770,`baseattacktime`=2000,`unit_flags`=33088,`equipment_id`=1221,`speed_run`=1,`flags_extra`=`flags_extra`|2 WHERE `entry`=38160; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `baseattacktime`=5000,`unit_class`=2,`speed_walk`=0.4,`speed_run`=1.1428571428571 WHERE `entry`=36967; -- Spiteful Apparition (Ambient)
UPDATE `creature_template` SET `baseattacktime`=2000,`speed_walk`=1.111112,`speed_run`=1.1428571428571 WHERE `entry`=36666; -- Spectral Warden
UPDATE `creature_template` SET `equipment_id`=637,`speed_run`=1.1428571428571,`flags_extra`=`flags_extra`|2 WHERE `entry`=37582; -- Archmage Koreln
UPDATE `creature_template` SET `faction_A`=1770,`faction_H`=1770,`baseattacktime`=2000,`unit_flags`=32832,`equipment_id`=637,`speed_run`=1.1428571428571,`flags_extra`=`flags_extra`|2 WHERE `entry`=37774; -- Archmage Elandra
UPDATE `creature_template` SET `faction_A`=534,`faction_H`=534,`baseattacktime`=2000,`unit_flags`=32832,`equipment_id`=@EQUIP,`speed_run`=1.1428571428571 WHERE `entry`=37496; -- Coliseum Champion
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32832,`speed_run`=1.1428571428571 WHERE `entry`=37779; -- Dark Ranger Loralen
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|3,`dynamicflags`=0,`speed_run`=1.1428571428571,`flags_extra`=`flags_extra`|2 WHERE `entry`=37596; -- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `baseattacktime`=2000,`speed_walk`=0.4,`speed_run`=1.1428571428571,`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=36508; -- Soulguard Beam Focus Target

DELETE FROM `creature_equip_template` WHERE `entry`=@EQUIP;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@EQUIP,47814,46963,0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (36508,37583,37779);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(37779,0,0,1,433, NULL), -- Dark Ranger Loralen
(37583,0,0,2,0, NULL), -- Dark Ranger Kalira
(36508,0,33554432,1,0, NULL); -- Soulguard Beam Focus Target

UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=30684; -- Archmage Elandra
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=30638; -- Coliseum Champion
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=0,`gender`=1 WHERE `modelid`=30867; -- Lady Jaina Proudmoore
UPDATE `creature_model_info` SET `bounding_radius`=0.354,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30168; -- Soulguard Animator
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=30270; -- Soulguard Bonecaster
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=30240; -- Soulguard Adept
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=25942; -- Spiteful Apparition (Ambient)
UPDATE `creature_model_info` SET `bounding_radius`=2.5,`combat_reach`=3.75,`gender`=0 WHERE `modelid`=30283; -- Spectral Warden
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=30862; -- Ebon Blade Commander
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.2,`gender`=1 WHERE `modelid`=28213; -- Lady Sylvanas Windrunner
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Soulguard Beam Focus Target-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99939;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3859.662,`position_y`=3393.562,`position_z`=67.97741 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3856.184,3393.872,68.60241,0,0,0,100,0),
(@PATH,2,3853.398,3388.785,70.60241,0,0,0,100,0),
(@PATH,3,3856.184,3393.872,68.60241,0,0,0,100,0),
(@PATH,4,3859.662,3393.562,67.97741,0,0,0,100,0),
(@PATH,5,3865.199,3400.655,64.67162,0,0,0,100,0),
(@PATH,6,3862.853,3407.01,64.17162,0,0,0,100,0),
(@PATH,7,3864.934,3414.912,64.17162,0,0,0,100,0),
(@PATH,8,3862.853,3407.01,64.17162,0,0,0,100,0),
(@PATH,9,3865.199,3400.655,64.67162,0,0,0,100,0),
(@PATH,10,3859.662,3393.562,67.97741,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 100009;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3896.402,`position_y`=3454.12,`position_z`=64.19093 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3890.689,3458.416,65.06593,0,0,0,100,0),
(@PATH,2,3878.707,3463.25,64.06593,0,0,0,100,0),
(@PATH,3,3865.527,3468.116,64.16493,0,0,0,100,0),
(@PATH,4,3867.453,3467.697,64.16493,0,0,0,100,0),
(@PATH,5,3878.97,3463.877,64.06593,0,0,0,100,0),
(@PATH,6,3896.402,3454.12,64.19093,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99955;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3849.937,`position_y`=3440.836,`position_z`=64.08922 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3844.136,3430.625,64.17162,0,0,0,100,0),
(@PATH,2,3836.185,3415.533,67.29662,0,0,0,100,0),
(@PATH,3,3838.057,3414.41,67.17162,0,0,0,100,0),
(@PATH,4,3843.113,3427.501,64.29662,0,0,0,100,0),
(@PATH,5,3848.386,3439.262,64.08922,0,0,0,100,0),
(@PATH,6,3849.937,3440.836,64.08922,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99856;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3944.872,`position_y`=3387.368,`position_z`=82.84169 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3958.746,3388.819,83.46669,0,0,0,100,0),
(@PATH,2,3939.345,3406.614,80.91746,0,0,0,100,0),
(@PATH,3,3932.713,3412.609,80.93697,0,0,0,100,0),
(@PATH,4,3931.988,3409.037,80.93697,0,0,0,100,0),
(@PATH,5,3940.203,3397.782,80.96669,0,0,0,100,0),
(@PATH,6,3944.872,3387.368,82.84169,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99853;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3988.71,`position_y`=3389.023,`position_z`=84.59169 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3995.287,3398.66,83.21669,0,0,0,100,0),
(@PATH,2,3999.713,3411.761,84.47887,0,0,0,100,0),
(@PATH,3,3992.017,3414.793,83.10387,0,0,0,100,0),
(@PATH,4,3980.25,3399.608,80.96669,0,0,0,100,0),
(@PATH,5,3973.198,3392.127,81.21669,0,0,0,100,0),
(@PATH,6,3981.25,3389.583,83.71669,0,0,0,100,0),
(@PATH,7,3988.71,3389.023,84.59169,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 100008;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3961.064,`position_y`=3422.165,`position_z`=80.91746 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3958.62,3407.545,80.91746,0,0,0,100,0),
(@PATH,2,3959.292,3391.561,82.09169,0,0,0,100,0),
(@PATH,3,3959.987,3394.481,81.09169,0,0,0,100,0),
(@PATH,4,3961.145,3408.606,80.91746,0,0,0,100,0),
(@PATH,5,3963.867,3424.426,80.91746,0,0,0,100,0),
(@PATH,6,3961.064,3422.165,80.91746,0,0,0,100,0);
-- 0xF13000632A00102F .go 3958.62 3407.545 80.91746

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 100011;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3973.765,`position_y`=3685.582,`position_z`=63.20702 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3985.953,3658.16,62.64196,0,0,0,100,0),
(@PATH,2,3981.12,3655.121,62.51696,0,0,0,100,0),
(@PATH,3,3975.807,3676.29,63.20702,0,0,0,100,0),
(@PATH,4,3968.138,3708.388,63.14015,0,0,0,100,0),
(@PATH,5,3973.765,3685.582,63.20702,0,0,0,100,0);
-- 0xF53000632A016E01 .go 3985.953 3658.16 62.64196

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99855;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3767.44,`position_y`=3483.963,`position_z`=64.18696 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3765.76,3473.853,64.31196,0,0,0,100,0),
(@PATH,2,3767.138,3500.103,64.0854,0,0,0,100,0),
(@PATH,3,3770.234,3518.467,64.0854,0,0,0,100,0),
(@PATH,4,3769.093,3509.577,64.0854,0,0,0,100,0),
(@PATH,5,3768.024,3494.981,64.18696,0,0,0,100,0),
(@PATH,6,3767.44,3483.963,64.18696,0,0,0,100,0);
-- 0xF53000632A017C11 .go 3765.76 3473.853 64.31196

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99939;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3859.662,`position_y`=3393.562,`position_z`=67.97741 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3856.184,3393.872,68.60241,0,0,0,100,0),
(@PATH,2,3853.398,3388.785,70.60241,0,0,0,100,0),
(@PATH,3,3856.184,3393.872,68.60241,0,0,0,100,0),
(@PATH,4,3859.662,3393.562,67.97741,0,0,0,100,0),
(@PATH,5,3865.199,3400.655,64.67162,0,0,0,100,0),
(@PATH,6,3862.853,3407.01,64.17162,0,0,0,100,0),
(@PATH,7,3864.934,3414.912,64.17162,0,0,0,100,0),
(@PATH,8,3862.853,3407.01,64.17162,0,0,0,100,0),
(@PATH,9,3865.199,3400.655,64.67162,0,0,0,100,0),
(@PATH,10,3859.662,3393.562,67.97741,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 100009;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3896.402,`position_y`=3454.12,`position_z`=64.19093 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3890.689,3458.416,65.06593,0,0,0,100,0),
(@PATH,2,3878.707,3463.25,64.06593,0,0,0,100,0),
(@PATH,3,3865.527,3468.116,64.16493,0,0,0,100,0),
(@PATH,4,3867.453,3467.697,64.16493,0,0,0,100,0),
(@PATH,5,3878.97,3463.877,64.06593,0,0,0,100,0),
(@PATH,6,3896.402,3454.12,64.19093,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99955;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3849.937,`position_y`=3440.836,`position_z`=64.08922 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3844.136,3430.625,64.17162,0,0,0,100,0),
(@PATH,2,3836.185,3415.533,67.29662,0,0,0,100,0),
(@PATH,3,3838.057,3414.41,67.17162,0,0,0,100,0),
(@PATH,4,3843.113,3427.501,64.29662,0,0,0,100,0),
(@PATH,5,3848.386,3439.262,64.08922,0,0,0,100,0),
(@PATH,6,3849.937,3440.836,64.08922,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99856;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3944.872,`position_y`=3387.368,`position_z`=82.84169 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3958.746,3388.819,83.46669,0,0,0,100,0),
(@PATH,2,3939.345,3406.614,80.91746,0,0,0,100,0),
(@PATH,3,3932.713,3412.609,80.93697,0,0,0,100,0),
(@PATH,4,3931.988,3409.037,80.93697,0,0,0,100,0),
(@PATH,5,3940.203,3397.782,80.96669,0,0,0,100,0),
(@PATH,6,3944.872,3387.368,82.84169,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99853;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3988.71,`position_y`=3389.023,`position_z`=84.59169 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3995.287,3398.66,83.21669,0,0,0,100,0),
(@PATH,2,3999.713,3411.761,84.47887,0,0,0,100,0),
(@PATH,3,3992.017,3414.793,83.10387,0,0,0,100,0),
(@PATH,4,3980.25,3399.608,80.96669,0,0,0,100,0),
(@PATH,5,3973.198,3392.127,81.21669,0,0,0,100,0),
(@PATH,6,3981.25,3389.583,83.71669,0,0,0,100,0),
(@PATH,7,3988.71,3389.023,84.59169,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 100008;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3961.064,`position_y`=3422.165,`position_z`=80.91746 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3958.62,3407.545,80.91746,0,0,0,100,0),
(@PATH,2,3959.292,3391.561,82.09169,0,0,0,100,0),
(@PATH,3,3959.987,3394.481,81.09169,0,0,0,100,0),
(@PATH,4,3961.145,3408.606,80.91746,0,0,0,100,0),
(@PATH,5,3963.867,3424.426,80.91746,0,0,0,100,0),
(@PATH,6,3961.064,3422.165,80.91746,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 100011;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3973.765,`position_y`=3685.582,`position_z`=63.20702 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3985.953,3658.16,62.64196,0,0,0,100,0),
(@PATH,2,3981.12,3655.121,62.51696,0,0,0,100,0),
(@PATH,3,3975.807,3676.29,63.20702,0,0,0,100,0),
(@PATH,4,3968.138,3708.388,63.14015,0,0,0,100,0),
(@PATH,5,3973.765,3685.582,63.20702,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99860;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3736.829,`position_y`=3590.097,`position_z`=47.62042 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3740.556,3611.562,49.59578,0,0,0,100,0),
(@PATH,2,3743.815,3598.767,46.74542,0,0,0,100,0),
(@PATH,3,3750.231,3578.953,46.87042,0,0,0,100,0),
(@PATH,4,3744.763,3577.349,46.87042,0,0,0,100,0),
(@PATH,5,3736.829,3590.097,47.62042,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99861;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3781.2,`position_y`=3555.762,`position_z`=47.13174 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3781.763,3556.428,47.13174,0,0,0,100,0),
(@PATH,2,3784.81,3570.215,46.82142,0,0,0,100,0),
(@PATH,3,3784.099,3579.592,48.19642,0,0,0,100,0),
(@PATH,4,3784.9,3578.852,48.32142,0,0,0,100,0),
(@PATH,5,3784.858,3565.897,46.63174,0,0,0,100,0),
(@PATH,6,3781.2,3555.762,47.13174,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99873;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3795.21,`position_y`=3453.815,`position_z`=82.97263 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3789.819,3445.883,82.97262,0,0,0,100,0),
(@PATH,2,3785.635,3440.609,82.97261,0,0,0,100,0),
(@PATH,3,3780.893,3429.421,82.9726,0,0,0,100,0),
(@PATH,4,3785.635,3440.609,82.97261,0,0,0,100,0),
(@PATH,5,3789.819,3445.883,82.97262,0,0,0,100,0),
(@PATH,6,3795.21,3453.815,82.97263,0,0,0,100,0);

-- Pathing for En'kilah Crypt Fiend Entry: 25386
SET @NPC := 99871;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3812.432,`position_y`=3443.979,`position_z`=82.97263 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3808.239,3432.998,82.97262,0,0,0,100,0),
(@PATH,2,3805.263,3425.894,82.97261,0,0,0,100,0),
(@PATH,3,3808.239,3432.998,82.97262,0,0,0,100,0),
(@PATH,4,3812.432,3443.979,82.97263,0,0,0,100,0);

-- Remove 2 over spawns 
DELETE FROM `creature` WHERE `guid` IN (99859,99858);
DELETE FROM `creature_addon` WHERE `guid` IN (99859,99858);

-- SAI for Nethermine Burster 
SET @ENTRY := 23285; 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
UPDATE `creature` SET `spawndist`=20,`MovementType`=1 WHERE `id`=@ENTRY; 
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,1,1,0,100,1,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - OOC - Cast Submerge Visual'), 
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - OOC - Set Unselectable and Unattackable Flags'), 
(@ENTRY,0,2,3,0,0,100,1,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Remove Submerge Visual'), 
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Remove Unselectable and Unattackable Flags'), 
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Prevent Combat Movement'), 
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Set Phase 1'), 
(@ENTRY,0,6,7,0,1,100,0,1000,1000,2100,4500,11,31747,1,0,0,0,0,2,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Cast Poison (Phase 1)'), 
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Prevent Combat Movement (Phase 1)'), 
(@ENTRY,0,8,0,0,1,100,0,20400,20400,45000,50000,11,32738,1,0,0,0,0,2,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Cast Bore (Phase 1)'), 
(@ENTRY,0,9,10,9,1,100,0,20,60,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Cast Submerge Visual (Phase 1)'),
(@ENTRY,0,10,11,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Allow Combat Movement (Phase 1)'), 
(@ENTRY,0,11,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Set Phase 2 (Phase 1)'), 
(@ENTRY,0,12,13,9,2,100,0,0,8,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 0 - 8 Yards - Remove Submerge Visual (Phase 2)'), 
(@ENTRY,0,13,14,61,2,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - Combat - Prevent Combat Movement (Phase 2)'), 
(@ENTRY,0,14,15,61,2,100,0,0,8,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 0 - 8 Yards - Remove Unselectable and Unattackable Flags (Phase 2)'), 
(@ENTRY,0,15,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - At 20 - 60 Yards Range - Set Phase 1 (Phase 2)'),
(@ENTRY,0,16,0,2,0,100,1,0,10,0,0,11,32714,3,0,0,0,0,1,0,0,0,0,0,0,0,'Nethermine Burster - Health level - Cast Enrage self');
-- Pathing for Darkfallen Deathblade Entry: 26103
SET @NPC := 119232;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3657.896,`position_y`=3592.591,`position_z`=371.479 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3665.972,3599.461,371.4846,0,0,0,100,0),
(@PATH,2,3682.637,3610.097,371.4544,0,0,0,100,0),
(@PATH,3,3696.372,3619.76,371.3447,0,0,0,100,0),
(@PATH,4,3682.637,3610.097,371.4544,0,0,0,100,0),
(@PATH,5,3665.972,3599.461,371.4846,0,0,0,100,0),
(@PATH,6,3657.896,3592.591,371.479,0,0,0,100,0),
(@PATH,7,3651.491,3585.525,371.674,0,0,0,100,0),
(@PATH,8,3651.062,3578.088,371.551,0,0,0,100,0),
(@PATH,9,3656.478,3568.307,371.4457,0,0,0,100,0),
(@PATH,10,3665.993,3555.432,371.3665,0,0,0,100,0),
(@PATH,11,3656.478,3568.307,371.4457,0,0,0,100,0),
(@PATH,12,3651.062,3578.088,371.551,0,0,0,100,0),
(@PATH,13,3651.473,3585.204,371.6653,0,0,0,100,0),
(@PATH,14,3657.896,3592.591,371.479,0,0,0,100,0);

-- Pathing for Darkfallen Deathblade Entry: 26103
SET @NPC := 119253;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3742.794,`position_y`=3604.008,`position_z`=346.2505 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3728.665,3600.99,345.8076,0,0,0,100,0),
(@PATH,2,3716.573,3595.571,346.0472,0,0,0,100,0),
(@PATH,3,3709.646,3587.291,345.7931,0,0,0,100,0),
(@PATH,4,3705.439,3578.289,345.9121,0,0,0,100,0),
(@PATH,5,3703.899,3570.889,345.8815,0,0,0,100,0),
(@PATH,6,3704.667,3561.633,345.6407,0,0,0,100,0),
(@PATH,7,3706.808,3553.582,345.8144,0,0,0,100,0),
(@PATH,8,3712.931,3543.78,345.7907,0,0,0,100,0),
(@PATH,9,3718.246,3537.947,345.8893,0,0,0,100,0),
(@PATH,10,3729.692,3532.638,345.8766,0,0,0,100,0),
(@PATH,11,3741.682,3531.879,345.7675,0,0,0,100,0),
(@PATH,12,3752.107,3533.592,345.952,0,0,0,100,0),
(@PATH,13,3762.405,3538.37,346.1658,0,0,0,100,0),
(@PATH,14,3772.811,3550.474,346.3304,0,0,0,100,0),
(@PATH,15,3776.353,3563.746,346.2406,0,0,0,100,0),
(@PATH,16,3774.419,3578.473,346.1627,0,0,0,100,0),
(@PATH,17,3768.748,3590.277,346.2671,0,0,0,100,0),
(@PATH,18,3755.322,3600.473,346.2415,0,0,0,100,0),
(@PATH,19,3742.794,3604.008,346.2505,0,0,0,100,0);

-- Pathing for Darkfallen Deathblade Entry: 26103
SET @NPC := 119306;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3825.312,`position_y`=3561.968,`position_z`=371.449 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3828.243,3550.227,371.6633,0,0,0,100,0),
(@PATH,2,3821.141,3538.786,371.4709,0,0,0,100,0),
(@PATH,3,3810.434,3533.297,371.4811,0,0,0,100,0),
(@PATH,4,3797.684,3527.717,371.4747,0,0,0,100,0),
(@PATH,5,3788.295,3523.66,371.5133,0,0,0,100,0),
(@PATH,6,3797.684,3527.717,371.4747,0,0,0,100,0),
(@PATH,7,3810.434,3533.297,371.4811,0,0,0,100,0),
(@PATH,8,3821.141,3538.786,371.4709,0,0,0,100,0),
(@PATH,9,3828.243,3550.227,371.6633,0,0,0,100,0),
(@PATH,10,3825.312,3561.968,371.449,0,0,0,100,0),
(@PATH,11,3818.058,3572.063,371.4479,0,0,0,100,0),
(@PATH,12,3825.312,3561.968,371.449,0,0,0,100,0);

-- Pathing for Darkfallen Deathblade Entry: 26103
SET @NPC := 119344;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3719.171,`position_y`=3634.032,`position_z`=371.4312 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3728.891,3640.265,371.399,0,0,0,100,0),
(@PATH,2,3744.495,3650.741,371.4715,0,0,0,100,0),
(@PATH,3,3754.314,3654.938,371.6409,0,0,0,100,0),
(@PATH,4,3762.468,3653.046,371.6256,0,0,0,100,0),
(@PATH,5,3769.032,3645.54,371.4821,0,0,0,100,0),
(@PATH,6,3779.281,3629.354,371.3682,0,0,0,100,0),
(@PATH,7,3769.032,3645.54,371.4821,0,0,0,100,0),
(@PATH,8,3762.468,3653.046,371.6256,0,0,0,100,0),
(@PATH,9,3754.314,3654.938,371.6409,0,0,0,100,0),
(@PATH,10,3744.495,3650.741,371.4715,0,0,0,100,0),
(@PATH,11,3728.891,3640.265,371.399,0,0,0,100,0),
(@PATH,12,3719.171,3634.032,371.4312,0,0,0,100,0),
(@PATH,13,3706.394,3625.895,371.3447,0,0,0,100,0),
(@PATH,14,3719.171,3634.032,371.4312,0,0,0,100,0);

-- Pathing for Darkfallen Deathblade Entry: 26103
SET @NPC := 119346;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3757.834,`position_y`=3500.429,`position_z`=371.4323 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3744.604,3489.214,371.4503,0,0,0,100,0),
(@PATH,2,3731.337,3479.792,371.4355,0,0,0,100,0),
(@PATH,3,3724.038,3478.357,371.6531,0,0,0,100,0),
(@PATH,4,3716.938,3479.223,371.649,0,0,0,100,0),
(@PATH,5,3709.829,3487.23,371.4689,0,0,0,100,0),
(@PATH,6,3699.577,3504.449,371.358,0,0,0,100,0),
(@PATH,7,3709.829,3487.23,371.4689,0,0,0,100,0),
(@PATH,8,3716.938,3479.223,371.649,0,0,0,100,0),
(@PATH,9,3724.038,3478.357,371.6531,0,0,0,100,0),
(@PATH,10,3731.337,3479.792,371.4355,0,0,0,100,0),
(@PATH,11,3744.604,3489.214,371.4503,0,0,0,100,0),
(@PATH,12,3757.834,3500.429,371.4323,0,0,0,100,0),
(@PATH,13,3769.854,3508.61,371.3447,0,0,0,100,0),
(@PATH,14,3757.834,3500.429,371.4323,0,0,0,100,0);

-- Pathing for Fizzcrank Airman Entry: 26601
SET @NPC := 117944;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4120.091,`position_y`=5343.777,`position_z`=29.24856 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4111.694,5334.971,28.74856,0,0,0,100,0),
(@PATH,2,4102.274,5325.254,28.6343,0,0,0,100,0),
(@PATH,3,4091.229,5314.824,29.10337,0,0,0,100,0),
(@PATH,4,4083.519,5306.313,28.47837,0,0,0,100,0),
(@PATH,5,4072.305,5295.377,28.82582,0,0,0,100,0),
(@PATH,6,4083.519,5306.313,28.47837,0,0,0,100,0),
(@PATH,7,4091.229,5314.824,29.10337,0,0,0,100,0),
(@PATH,8,4102.274,5325.254,28.6343,0,0,0,100,0),
(@PATH,9,4111.694,5334.971,28.74856,0,0,0,100,0),
(@PATH,10,4120.091,5343.777,29.24856,0,0,0,100,0);

-- Pathing for Fizzcrank Airman Entry: 26601
SET @NPC := 117922;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4171.854,`position_y`=5364.676,`position_z`=29.09072 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4162.717,5358.622,28.71572,0,0,0,100,0),
(@PATH,2,4171.854,5364.676,29.09072,0,0,0,100,0),
(@PATH,3,4175.919,5373.461,28.73422,0,0,0,100,0),
(@PATH,4,4180.79,5375.921,28.85922,0,0,0,100,0),
(@PATH,5,4189.647,5383.252,28.98422,0,0,0,100,0),
(@PATH,6,4196.353,5389.414,28.98422,0,0,0,100,0),
(@PATH,7,4205.784,5399.744,29.17458,0,0,0,100,0),
(@PATH,8,4175.919,5373.461,28.73422,0,0,0,100,0),
(@PATH,9,4171.854,5364.676,29.09072,0,0,0,100,0);

-- Pathing for Fizzcrank Airman Entry: 26601
SET @NPC := 117952;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4114.012,`position_y`=5310.07,`position_z`=28.7593 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4114.952,5312.266,28.7593,0,0,0,100,0),
(@PATH,2,4120.03,5314.749,28.8843,0,0,0,100,0),
(@PATH,3,4128.648,5324.809,28.7593,0,0,0,100,0),
(@PATH,4,4132.928,5329.057,28.7593,0,0,0,100,0),
(@PATH,5,4129.167,5323.958,28.7593,0,0,0,100,0),
(@PATH,6,4120.03,5314.749,28.8843,0,0,0,100,0),
(@PATH,7,4114.952,5312.266,28.7593,0,0,0,100,0),
(@PATH,8,4114.012,5310.07,28.7593,0,0,0,100,0),
(@PATH,9,4110.154,5305.583,28.7593,0,0,0,100,0),
(@PATH,10,4106.395,5299.221,29.22841,0,0,0,100,0),
(@PATH,11,4098.468,5291.356,29.32582,0,0,0,100,0),
(@PATH,12,4087.384,5281.144,29.20082,0,0,0,100,0),
(@PATH,13,4098.468,5291.356,29.32582,0,0,0,100,0),
(@PATH,14,4106.395,5299.221,29.22841,0,0,0,100,0),
(@PATH,15,4110.154,5305.583,28.7593,0,0,0,100,0),
(@PATH,16,4114.012,5310.07,28.7593,0,0,0,100,0);

-- Pathing for Fizzcrank Airman Entry: 26601
SET @NPC := 117951;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4156.205,`position_y`=5379.297,`position_z`=28.60338 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4145.584,5368.483,28.97838,0,0,0,100,0),
(@PATH,2,4137.288,5361.018,28.96572,0,0,0,100,0),
(@PATH,3,4145.584,5368.483,28.97838,0,0,0,100,0),
(@PATH,4,4156.205,5379.297,28.60338,0,0,0,100,0),
(@PATH,5,4165.664,5389.022,28.97838,0,0,0,100,0),
(@PATH,6,4175.249,5398.305,29.10922,0,0,0,100,0),
(@PATH,7,4165.664,5389.022,28.97838,0,0,0,100,0),
(@PATH,8,4156.205,5379.297,28.60338,0,0,0,100,0);
-- Razaani Light Orb Fixup
SET @ENTRY := 20635; -- NPC entry
UPDATE `creature` SET `modelid`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=@ENTRY;
-- Blade's Edge - Orb Trigger 01 Fixup and set as trigger
SET @ENTRY := 20666; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Flesh Beast Zap Trigger Fixup and set as trigger
SET @ENTRY := 20670; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Razaani Light Orb - Mini Fixup and set as trigger
SET @ENTRY := 20771; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Deadsoul Orb Fixup and set as trigger
SET @ENTRY := 20845; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Deadsoul Orb Flight 01 Fixup and set as trigger
SET @ENTRY := 20851; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Deadsoul Orb Flight 02 Fixup and set as trigger
SET @ENTRY := 20852; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Deadsoul Orb Flight 03 Fixup and set as trigger
SET @ENTRY := 20853; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Deadsoul Orb Flight 04 Fixup and set as trigger
SET @ENTRY := 20855; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Deadsoul Orb Flight 05 Fixup and set as trigger
SET @ENTRY := 20856; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Blade's Edge - Nexus Prince Event - Orb01 Fixup and set as trigger
SET @ENTRY := 21025; -- NPC entry
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Lost Drakkari Spirit SAI
SET @ENTRY := 29129;
SET @AURA := 17327;
SET @SPELL1 := 37361;
SET @SPELL2 := 24050;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@AURA,0,2000,2000,11,@AURA,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lost Drakkari Spirit - Aura Spirit Particles not present - Add Aura Spirit Particles'),
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lost Drakkari Spirit - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - On Aggro - Set Phase 1'),
(@ENTRY,0,3,0,0,1,100,0,0,0,1000,1000,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Combat - Cast Arcane Bolt (Phase 1)'),
(@ENTRY,0,4,5,3,1,100,0,15,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Mana at 15% - Allow combat movement (Phase 1)'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Mana at 15% - Set phase 2 (Phase 1)'),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - At 35 yards - Allow combat movement (Phase 1)'),
(@ENTRY,0,7,0,9,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Below 15 yards - Prevent combat movement (Phase 1)'),
(@ENTRY,0,8,0,3,2,100,0,100,30,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Mana above 30% - Set phase 1 (Phase 2)'),
(@ENTRY,0,9,0,0,0,100,0,10000,16000,15000,18000,11,@SPELL2,1,0,0,0,0,2,0,0,0,0,0,0,0,'Lost Drakkari Spirit - Combat - Cast Spirit Burst');
-- Frozen Earth SAI
SET @ENTRY   := 28411; -- NPC entry
SET @TARGET  := 23837; -- ELM General Porpose Bunny
SET @SPELL1  := 54532; -- Ice Spike
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,-119784,-119944,-119945,-119947,-119949,-119951,-119968,-119991);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119784,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119784,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119944,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119944,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119945,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119945,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119947,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119947,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119949,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119949,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119951,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119951,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119968,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119968,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim'),
(-119991,0,0,0,1,0,100,0,1000,4000,4000,7000,11,51590,2,0,0,0,0,11,@TARGET,120,0,0,0,0,0,'Frozen Earth - OOC - Cast Toss Ice Boulder'),
(-119991,0,1,0,0,0,100,0,1000,4000,10000,17000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frozen Earth - Combat - Cast Ice Spike on victim');
-- Fix Spell condition for Spell 51590 to only target ELM General Porpose Bunny
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=51590;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,51590,0,18,1,23837,0,0,'','Spell 51590 targets only ELM General Porpose Bunny');
-- Legion Fel Cannon SAI
SET @ENTRY := 21233;
SET @SPELL1 := 36238; -- Fel Cannon Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Legion Fel Cannon - OOC - Prevent Combat Movement'),
(@ENTRY,0,1,0,0,0,100,0,0,1000,2500,2500,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Legion Fel Cannon - Combat - Cast Fel Cannon Blast');
-- Fel Cannon MKI SAI
SET @ENTRY := 22461;
SET @SPELL1 := 36238; -- Fel Cannon Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Cannon MKI - OOC - Prevent Combat Movement'),
(@ENTRY,0,1,0,0,0,100,0,0,1000,2500,2500,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Fel Cannon MKI - Combat - Cast Fel Cannon Blast');
-- High Priest Andorath SAI
SET @ENTRY   := 25392;
SET @CHANNEL := 45491; -- Necrotic Purple Beam
SET @TARGET  := 25534; -- En'kilah Blood Globe
UPDATE `creature_template` SET `speed_run`=1,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,2000,6000,32000,32000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Priest Andorath - OOC - Run Script every 32 sec'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,11,@CHANNEL,0,0,0,0,0,11,@TARGET,20,0,0,0,0,0, 'High Priest Andorath - script - Channel spell'),
(@ENTRY*100,9,1,0,0,0,100,0,23000,23000,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Andorath - script - Stop Channeling');
-- Add aura to Zul'Drak Gateway Trigger if aura not present
SET @ENTRY := 28181;
SET @SPELL := 50795;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL,0,2000,2000,11,@SPELL,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zul''Drak Gateway Trigger - Aura Zul''Drak Gateway not present - Add Aura Zul''Drak Gateway');
-- Create temporary table that holds the entry conversion data. (Generating numbers by index and autoincrement is not used because
-- we need the same numbers to update the characters db and need to do that without cross db queries
CREATE TABLE `game_event_temp` (
  `entryOld` TINYINT(3) UNSIGNED NOT NULL,
  `entryNew` TINYINT(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Renumbered entry data
INSERT INTO `game_event_temp` (`entryOld`,`entryNew`) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),
(23,23),(26,24),(27,25),(28,26),(29,27),(30,28),(31,29),(32,30),(33,31),(34,32),(35,33),(36,34),(37,35),(38,36),(39,37),(40,38),(41,39),(42,40),(43,41),(44,42),
(45,43),(46,44),(47,45),(48,46),(49,47),(50,48),(51,49),(52,50),(53,51),(54,52),(124,53),(125,54),(126,55),(127,56),(128,57),(129,58),(130,59),(131,60);

-- Update game_event
ALTER TABLE `game_event` DROP PRIMARY KEY;
UPDATE `game_event`, `game_event_temp` SET `game_event`.`entry` = `game_event_temp`.`entryNew` WHERE `game_event`.`entry` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event` 
CHANGE `entry` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event',
ADD PRIMARY KEY (`eventEntry`);

-- Update game_event_battleground_holiday
ALTER TABLE `game_event_battleground_holiday` DROP PRIMARY KEY;
UPDATE `game_event_battleground_holiday`, `game_event_temp` SET `game_event_battleground_holiday`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_battleground_holiday`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_battleground_holiday`
CHANGE `event` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' FIRST,
ADD PRIMARY KEY (`eventEntry`);

-- Update game_event_condition
ALTER TABLE `game_event_condition` DROP PRIMARY KEY;
UPDATE `game_event_condition`, `game_event_temp` SET `game_event_condition`.`event_id` = `game_event_temp`.`entryNew` WHERE `game_event_condition`.`event_id` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_condition`
CHANGE `event_id` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' FIRST,
ADD PRIMARY KEY (`eventEntry`, `condition_id`);

-- Update game_event_creature
UPDATE `game_event_creature`, `game_event_temp` SET `game_event_creature`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_creature`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_creature` CHANGE `event` `eventEntry` TINYINT(3) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.' FIRST;

-- Update game_event_creature_quest
UPDATE `game_event_creature_quest`, `game_event_temp` SET `game_event_creature_quest`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_creature_quest`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_creature_quest` CHANGE `event` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event.' FIRST;

-- Update game_event_gameobject
UPDATE `game_event_gameobject`, `game_event_temp` SET `game_event_gameobject`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_gameobject`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_gameobject` CHANGE `event` `eventEntry` TINYINT(3) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.' FIRST;

-- Update game_event_gameobject_quest
ALTER TABLE `game_event_gameobject_quest` DROP PRIMARY KEY;
UPDATE `game_event_gameobject_quest`, `game_event_temp` SET `game_event_gameobject_quest`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_gameobject_quest`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_gameobject_quest` 
CHANGE `event` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' FIRST,
ADD PRIMARY KEY (`id`, `quest`, `eventEntry`);

-- Update game_event_model_equip
UPDATE `game_event_model_equip`, `game_event_temp` SET `game_event_model_equip`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_model_equip`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_model_equip` CHANGE `event` `eventEntry` TINYINT(3) NOT NULL COMMENT 'Entry of the game event.' FIRST;

-- Update game_event_npc_vendor
UPDATE `game_event_npc_vendor`, `game_event_temp` SET `game_event_npc_vendor`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_npc_vendor`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_npc_vendor` CHANGE `event` `eventEntry` TINYINT(3) NOT NULL COMMENT 'Entry of the game event.' FIRST;

-- Update game_event_npcflag
ALTER TABLE `game_event_npcflag` DROP PRIMARY KEY;
UPDATE `game_event_npcflag`, `game_event_temp` SET `game_event_npcflag`.`event_id` = `game_event_temp`.`entryNew` WHERE `game_event_npcflag`.`event_id` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_npcflag` 
CHANGE `event_id` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' FIRST,
ADD PRIMARY KEY (`guid`, `eventEntry`);

-- Update game_event_pool
UPDATE `game_event_pool`, `game_event_temp` SET `game_event_pool`.`event` = `game_event_temp`.`entryNew` WHERE `game_event_pool`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_pool` CHANGE `event` `eventEntry` TINYINT(3) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.' FIRST;

-- Update game_event_prerequisite
ALTER TABLE `game_event_prerequisite` DROP PRIMARY KEY;
UPDATE `game_event_prerequisite`, `game_event_temp` SET `game_event_prerequisite`.`event_id` = `game_event_temp`.`entryNew` WHERE `game_event_prerequisite`.`event_id` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_prerequisite`
CHANGE `event_id` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' FIRST,
ADD PRIMARY KEY (`eventEntry`, `prerequisite_event`);

-- Update game_event_quest_condition
UPDATE `game_event_quest_condition`, `game_event_temp` SET `game_event_quest_condition`.`event_id` = `game_event_temp`.`entryNew` WHERE `game_event_quest_condition`.`event_id` = `game_event_temp`.`entryOld`;
ALTER TABLE `game_event_quest_condition` CHANGE `event_id` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event.' FIRST;

-- Update season_linked_event
ALTER TABLE `season_linked_event` DROP PRIMARY KEY;
UPDATE `season_linked_event`, `game_event_temp` SET `season_linked_event`.`event` = `game_event_temp`.`entryNew` WHERE `season_linked_event`.`event` = `game_event_temp`.`entryOld`;
ALTER TABLE season_linked_event
RENAME TO `game_event_arena_seasons`,
CHANGE `event` `eventEntry` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' FIRST,
CHANGE `season` `season` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Arena season number';

-- Remove temporary table
DROP TABLE `game_event_temp`;
DELETE FROM `creature_questrelation` WHERE `quest` IN (24510,24499,24498,24710,24711,24506,24511,24682,24507,24712,24713);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (24510,24499,24498,24710,24711,24506,24511,24682,24507,24712,24713);
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES 
-- alliance
(37776,24510),
(37597,24499),
(38160,24683),
(36993,24498),
(37591,24710),
(38188,24711),
-- horde
(37780,24506),
(37596,24511),
(38161,24682),
(36990,24507),
(37592,24712),
(38189,24713);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES 
-- alliance
(37597,24510),
(38160,24499),
(36993,24683),
(37591,24498),
(38188,24710),
(37221,24711),
-- horde
(37596,24506),
(38161,24511),
(36990,24682),
(37592,24507),
(38189,24712),
(37223,24713);

SET @GOBJ := 201969; -- ball and chain
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@GOBJ;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@GOBJ;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@GOBJ,1,0,0,64,0,100,0,0,0,0,0,33,36764,0,0,0,0,0,7,0,0,0,0,0,0,0, 'credit on gossip hello - alliance'),
(@GOBJ,1,1,0,64,0,100,0,0,0,0,0,33,36770,0,0,0,0,0,7,0,0,0,0,0,0,0, 'credit on gossip hello - horde');
SET @GUID := 137789;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+4;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,16980,631,15,1,0,0,4203.70,2484.83,364.956,3.14159,604800,0,0,0,0,0,0,0,0,0), -- The Lich King
(@GUID+1,22515,631,15,1,0,0,4241.19,2557.49,364.952,4.72984,120,0,0,0,0,0,0,0,0,0), -- World Trigger
(@GUID+2,22515,631,15,1,0,0,4241.34,2411.52,364.952,1.57080,120,0,0,0,0,0,0,0,0,0), -- World Trigger
(@GUID+3,22515,631,10,1,0,0,4166.02,2557.49,364.952,4.72984,120,0,0,0,0,0,0,0,0,0), -- World Trigger
(@GUID+4,22515,631,10,1,0,0,4241.34,2411.52,364.952,1.57080,120,0,0,0,0,0,0,0,0,0); -- World Trigger
DELETE FROM `spell_proc_event` WHERE `entry` IN (11213,12574,12575,12576,12577);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(11213,0x00,3,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0), -- Arcane Concentration (Rank 1)
(12574,0x00,3,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0), -- Arcane Concentration (Rank 2)
(12575,0x00,3,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0), -- Arcane Concentration (Rank 3)
(12576,0x00,3,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0), -- Arcane Concentration (Rank 4)
(12577,0x00,3,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Arcane Concentration (Rank 5)
UPDATE `game_event` SET `holiday`=400 WHERE `eventEntry`=53; -- Call to Arms: Strand of the Ancients!
UPDATE `game_event` SET `holiday`=420 WHERE `eventEntry`=54; -- Call to Arms: Isle of Conquest!
-- Lost Drakkari Spirit SAI fix
UPDATE `smart_scripts` SET `event_param1`=0,`event_param2`=15 WHERE `entryorguid`=29129 AND `id`=4;
UPDATE `smart_scripts` SET `event_param1`=30,`event_param2`=100 WHERE `entryorguid`=29129 AND `id`=8;
UPDATE `creature_template` SET `difficulty_entry_1`=0 WHERE `entry`=37596;
DELETE FROM `creature_template` WHERE `entry`=3759601;
