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
-- Remove beast lore info from all creatures
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~16;
-- Fix Achievements related to Trial of the Crusader
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (
11684,11685,11686,11687,11688, -- 10 Player
11679,11680,11681,11682,11683, -- 25 Player
11689,11690,11691,11692,11693, -- 10 Player
11542,11546,11547,11549,11678  -- 25 Player
) AND `type` IN (0,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
-- Call of the Crusade (10 player)
(11684,12,0,0, ''),
(11685,12,0,0, ''),
(11686,12,0,0, ''),
(11687,12,0,0, ''),
(11688,12,0,0, ''),
-- Call of the Crusade (25 player)
(11679,12,1,0, ''),
(11680,12,1,0, ''),
(11681,12,1,0, ''),
(11682,12,1,0, ''),
(11683,12,1,0, ''),
-- Call of the Grand Crusade (10 player)
(11689,12,2,0, ''),
(11690,12,2,0, ''),
(11691,12,2,0, ''),
(11692,12,2,0, ''),
(11693,12,2,0, ''),
-- Call of the Grand Crusade (25 player)
(11542,12,3,0, ''),
(11546,12,3,0, ''),
(11547,12,3,0, ''),
(11549,12,3,0, ''),
(11678,12,3,0, '');
-- Dire Bear form should require Bear Form
DELETE FROM `spell_required` WHERE `spell_id`=9634;
INSERT INTO `spell_required` (`spell_id`,`req_spell`) VALUES (9634,5487);
DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (5487,33943);
INSERT INTO `spell_ranks` (`first_spell_id`,`spell_id`,`rank`) VALUES
(5487,5487,1),
(5487,9634,2),
(33943,33943,1),
(33943,40120,2);
SET @GUID := 95035 ; -- set guid by TDB

-- Spawn for Rotting Frost Giant in 25 man instances
DELETE FROM `creature` WHERE `id`=38494;
INSERT INTO `creature` 
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) 
VALUES
(@GUID,38494,631,10,1,0,0,-452.366,2354.51,191.242,0.778178,86400,0,0,1,0,0,2,0,0,0);
        
-- Correct spawn mask for Rotting Frost Giant in 10 man instances (10/10 Heroic)
UPDATE `creature` SET `spawnmask`=5 WHERE `id`=38490;

-- add a path to the creature
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID,2087860,0,0,0,0, '');
DELETE FROM `spell_required` WHERE `spell_id`=9634;
DELETE FROM `spell_required` WHERE `spell_id`=40120;
-- Necro Overlord Mezhen SAI
SET @GUID   := 95036; -- 1 Required for ELM General Purpose Bunny
SET @ENTRY   := 24018; -- NPC entry
SET @CHANNEL := 43151; -- Necrolord: Purple Beam
SET @TARGET  := 24021; -- ELM General Purpose Bunny (scale x0.01)
SET @SPELL1  := 32862; -- Drain Soul
SET @SPELL2  := 43559; -- Raise Dead
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,30,0,0,0,0,0, 'Necro Overlord Mezhen - On spawn & reset - Channel Necrolord: Purple Beam');

-- Fix Spell condition for Spell 43151 to only target ELM General Purpose Bunny (scale x0.01)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=43151;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,43151,0,18,1,24021,0,0,'','Spell 43151 targets only ELM General Purpose Bunny (scale x0.01)');
-- Add missing ELM General Purpose Bunny (scale x0.01)
DELETE FROM `creature` WHERE `guid`=@GUID; 
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@GUID,24021,571,1,1,0,0,2597.148,-3735.499,261.9468,0.2094395,120,0,0,1,0,0,0);
-- ELM General Purpose Bunny (scale x0.01) fix InhabitType
UPDATE `creature_template` SET `InhabitType`=7 WHERE entry=24021;
-- Add missing Invisible Stalker (Floating)
SET @GUID := 85175; -- 2 Required
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+1; 
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@GUID,23033,571,1,1,0,0,3799.331,3428.748,92.80447,3.804818,120,0,0,1,0,0,0),
(@GUID+1,23033,571,1,1,0,0,3789.681,3434.306,92.37619,4.764749,120,0,0,1,0,0,0);
-- High Priest Talet-Kha Fixup
SET @ENTRY  := 26073; -- NPC entry
SET @SPELL1 := 45492; -- Shadow Nova
SET @SPELL2 := 11640; -- Renew         cast once below 45%
SET @SPELL3 := 15587; -- Mind Blast    cast below 45% after renew 
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
DELETE FROM `creature_addon` WHERE `guid`=85240;
DELETE FROM `creature_template_addon` WHERE `entry`=26073;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES (26073,1,1);
-- SAI for High Priest Talet-Kha
UPDATE `creature_template` SET `speed_run`=1,`faction_H`=21,`InhabitType`=7,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - On spawn - Set React State civilian'),
(@ENTRY,0,1,2,1,0,100,1,1000,1000,1000,1000,70,0,0,0,0,0,0,10,85098,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Respawn Mystical Webbing'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85098,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Mystical Webbing'),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,70,0,0,0,0,0,0,10,85118,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Respawn Mystical Webbing'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85118,25422,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Mystical Webbing'),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85175,23033,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Invisible Stalker'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,85176,23033,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set data Invisible Stalker'),
(@ENTRY,0,7,0,1,0,100,0,3000,3000,3000,3000,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set phase 1'),
(@ENTRY,0,8,0,23,1,100,1,45497,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - On Aura missing - Run Script (Phase 1)'),
(@ENTRY,0,9,10,2,1,100,0,0,45,0,0,11,11640,1,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - Health 45% - Cast Renew on self'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - OOC - Set phase 2'),
(@ENTRY,0,11,0,0,2,100,0,1500,1500,1500,1500,11,15587,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Priest Talet-Kha - Combat - Cast Mind Blast on victim (Phase 2)'),
(@ENTRY*100,9,0,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Text 0'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,69,0,0,0,0,0,0,1,0,0,0,3788.444,3418.249,85.05618,0, 'High Priest Talet-Kha - script - Move to'),
(@ENTRY*100,9,2,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,1.1672, 'High Priest Talet-Kha - script - turn to'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Bytes1 set to 0'),
(@ENTRY*100,9,4,0,0,0,100,0,100,100,0,0,19,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Remove unitflags'),
(@ENTRY*100,9,5,0,0,0,100,0,100,100,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Set React State Hostile'),
(@ENTRY*100,9,6,0,0,0,100,0,100,100,0,0,11,@SPELL1,1,0,0,0,0,1,0,0,0,0,0,0,0, 'High Priest Talet-Kha - script - Aura self');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (26073);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26073,0,0, 'Who disturbs my meditation?!',1,7,100,15,0,0, 'High Priest Talet-Kha');
-- SAI for Mystical Webbing
SET @ENTRY := 25422; -- NPC entry
SET @CHANNEL := 45497; -- Web Beam
SET @TARGET  := 26073; -- High Priest Talet-Kha
UPDATE `creature_template` SET `faction_H`=21,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-85098,-85118);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-85098,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mystical Webbing - On spawn - Set React State civilian'),
(-85098,0,1,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Mystical Webbing - On spawn & reset - Web Beam'),
(-85098,0,2,0,6,0,100,1,0,0,0,0,45,0,2,0,0,0,0,10,85176,23033,0,0,0,0,0, 'Mystical Webbing - On death - set data 0 2 Invisible Stalker'),
(-85098,0,3,4,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - set data 0 0'),
(-85098,0,4,0,61,0,100,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - reset AI'),
(-85118,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mystical Webbing - On spawn - Set React State civilian'),
(-85118,0,1,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Mystical Webbing - On spawn & reset - Web Beam'),
(-85118,0,2,0,6,0,100,1,0,0,0,0,45,0,2,0,0,0,0,10,85175,23033,0,0,0,0,0, 'Mystical Webbing - On death - set data 0 2 Invisible Stalker'),
(-85118,0,3,4,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - set data 0 0'),
(-85118,0,4,0,61,0,100,0,0,0,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - reset AI');
-- SAI for Invisible Stalker (Floating)
SET @ENTRY := 23033; -- NPC entry
SET @CHANNEL := 45497; -- Web Beam
SET @TARGET  := 26073; -- High Priest Talet-Kha
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-85175,-85176);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Invisible Stalker (Floating)
(-85175,0,0,0,38,0,100,0,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - Set Phase 1'),
(-85175,0,1,0,38,0,100,0,0,2,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 2 - Set Phase 2'),
(-85175,0,2,3,1,1,100,0,0,0,0,0,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Cast Web Beam on target (Phase 1)'),
(-85175,0,3,4,61,1,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set data 0 0 (Phase 1)'),
(-85175,0,4,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 1)'),
(-85175,0,5,6,1,2,100,0,0,0,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Stop casting (Phase 2)'),
(-85175,0,6,0,61,2,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 2)'),
-- Invisible Stalker (Floating)
(-85176,0,0,0,38,0,100,0,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 1 - Set Phase 1'),
(-85176,0,1,0,38,0,100,0,0,2,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - On dataset 0 2 - Set Phase 2'),
(-85176,0,2,3,1,1,100,0,0,0,0,0,11,@CHANNEL,2,0,0,0,0,11,@TARGET,40,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Cast Web Beam on target (Phase 1)'),
(-85176,0,3,4,61,1,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set data 0 0 (Phase 1)'),
(-85176,0,4,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 1)'),
(-85176,0,5,6,1,2,100,0,0,0,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Stop casting (Phase 2)'),
(-85176,0,6,0,61,2,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 2)');
-- Pathing for Stormfleet Deckhand SAI
SET @ENTRY := 25234;
SET @PATH1 := @ENTRY*100;
SET @PATH2 := @ENTRY*100+1;
SET @PATH3 := @ENTRY*100+2;
SET @PATH4 := @ENTRY*100+3;
-- Remove old waypoint data and scripts
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=2265.704,`position_y`=5314.686,`position_z`=22.43809 WHERE `guid`=109653;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=2253.791,`position_y`=5252.389,`position_z`=35.69936 WHERE `guid`=109654;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=2220.033,`position_y`=5292.010,`position_z`=10.70095 WHERE `guid`=109652;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=2233.497,`position_y`=5291.667,`position_z`=11.21773 WHERE `guid`=109655;
UPDATE `creature_addon` SET `path_id`=0 WHERE `guid` IN (109653,109654,109652,109655);
DELETE FROM `waypoint_data` WHERE `id` IN (1096530,1096540,1096520,1096550);
DELETE FROM `waypoint_scripts` WHERE `id` IN (1057,1058,1059,1060,1061,1130,1131,1132,1133);
-- SAI for Stormfleet Deckhand
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-109653,-109654,-109652,-109655);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-109653,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH1,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-109653,0,1,2,40,0,100,0,4,@PATH1,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 4 - pause wp'),
(-109653,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 4 - run script'),
(-109653,0,3,4,40,0,100,0,8,@PATH1,0,0,54,21000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 8 - pause wp'),
(-109653,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.794493, 'Stormfleet Deckhand - Reach wp 8 - turn to'),
(-109653,0,5,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 8 - run script'),
(-109654,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH2,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-109654,0,1,2,40,0,100,0,6,@PATH2,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 6 - pause wp'),
(-109654,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 6 - run script'),
(-109654,0,3,4,40,0,100,0,13,@PATH2,0,0,54,21000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - pause wp'),
(-109654,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - run script'),
(-109652,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH3,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-109652,0,1,2,40,0,100,0,17,@PATH3,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 17 - pause wp'),
(-109652,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 17 - run script'),
(-109652,0,3,4,40,0,100,0,9,@PATH3,0,0,54,21000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 9 - pause wp'),
(-109652,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 9 - run script'),
(-109655,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH4,1,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - On spawn - Start WP movement'),
(-109655,0,1,2,40,0,100,0,3,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 3 - pause wp'),
(-109655,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 3 - run script'),
(-109655,0,3,4,40,0,100,0,13,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - pause wp'),
(-109655,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 13 - run script'),
(-109655,0,5,6,40,0,100,0,16,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 16 - pause wp'),
(-109655,0,6,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 16 - run script'),
(-109655,0,7,8,40,0,100,0,25,@PATH4,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 25 - pause wp'),
(-109655,0,8,9,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.969026, 'Stormfleet Deckhand - Reach wp 25 - turn to'),
(-109655,0,9,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - Reach wp 25 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set bytes1'),
(@ENTRY*100,9,1,0,0,0,100,0,10000,10000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - remove bytes1'),
(@ENTRY*100+1,9,0,0,0,0,100,0,3000,3000,0,0,5,22,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - emote'),
(@ENTRY*100+1,9,1,0,0,0,100,0,6000,6000,0,0,5,70,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - emote'),
(@ENTRY*100+1,9,2,0,0,0,100,0,6000,6000,0,0,5,22,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - emote'),
(@ENTRY*100+2,9,0,0,0,0,100,0,1000,1000,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set state STATE_USESTANDING'),
(@ENTRY*100+2,9,1,0,0,0,100,0,8000,8000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set state NONE'),
(@ENTRY*100+2,9,2,0,0,0,100,0,0,0,0,0,90,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - set bytes1'),
(@ENTRY*100+2,9,3,0,0,0,100,0,2000,2000,0,0,91,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stormfleet Deckhand - script - remove bytes1');
-- Waypoints for Stormfleet Deckhand from sniff
DELETE FROM `waypoints` WHERE `entry` IN (@PATH1,@PATH2,@PATH3,@PATH4);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH1,1,2261.388,5305.248,21.68184, 'Stormfleet Deckhand'),
(@PATH1,2,2259.963,5295.583,20.08975, 'Stormfleet Deckhand'),
(@PATH1,3,2260.002,5286.996,15.49093, 'Stormfleet Deckhand'),
(@PATH1,4,2257.711,5281.927,12.09341, 'Stormfleet Deckhand'),
(@PATH1,5,2261.763,5286.725,15.76729, 'Stormfleet Deckhand'),
(@PATH1,6,2260.902,5294.649,19.95268, 'Stormfleet Deckhand'),
(@PATH1,7,2263.460,5304.816,21.72922, 'Stormfleet Deckhand'),
(@PATH1,8,2265.704,5314.686,22.43809, 'Stormfleet Deckhand'),
(@PATH2,1,2248.875,5255.391,36.45885, 'Stormfleet Deckhand'),
(@PATH2,2,2246.625,5256.641,37.20885, 'Stormfleet Deckhand'),
(@PATH2,3,2244.625,5258.641,36.45885, 'Stormfleet Deckhand'),
(@PATH2,4,2241.625,5258.391,37.20885, 'Stormfleet Deckhand'),
(@PATH2,5,2238.625,5259.391,36.45885, 'Stormfleet Deckhand'),
(@PATH2,6,2232.960,5260.392,35.71835, 'Stormfleet Deckhand'),
(@PATH2,7,2235.375,5260.141,36.20885, 'Stormfleet Deckhand'),
(@PATH2,8,2239.375,5259.141,36.45885, 'Stormfleet Deckhand'),
(@PATH2,9,2241.625,5258.641,37.20885, 'Stormfleet Deckhand'),
(@PATH2,10,2244.625,5258.641,36.45885, 'Stormfleet Deckhand'),
(@PATH2,11,2247.125,5256.391,37.20885, 'Stormfleet Deckhand'),
(@PATH2,12,2249.125,5255.391,36.45885, 'Stormfleet Deckhand'),
(@PATH2,13,2253.791,5252.389,35.69936, 'Stormfleet Deckhand'),
(@PATH3,1,2212.298,5281.927,10.82595, 'Stormfleet Deckhand'),
(@PATH3,2,2211.701,5275.361,10.82595, 'Stormfleet Deckhand'),
(@PATH3,3,2224.383,5268.124,7.166187, 'Stormfleet Deckhand'),
(@PATH3,4,2235.353,5264.704,8.606246, 'Stormfleet Deckhand'),
(@PATH3,5,2244.243,5262.414,11.81635, 'Stormfleet Deckhand'),
(@PATH3,6,2248.373,5259.464,11.78494, 'Stormfleet Deckhand'),
(@PATH3,7,2247.781,5252.418,11.96684, 'Stormfleet Deckhand'),
(@PATH3,8,2246.383,5249.14,15.53435, 'Stormfleet Deckhand'),
(@PATH3,9,2243.871,5243.415,21.4974, 'Stormfleet Deckhand'),
(@PATH3,10,2245.975,5248.252,16.51618, 'Stormfleet Deckhand'),
(@PATH3,11,2248.437,5255.79,11.86939, 'Stormfleet Deckhand'),
(@PATH3,12,2248.403,5261.318,11.747, 'Stormfleet Deckhand'),
(@PATH3,13,2228.012,5267.475,7.16457, 'Stormfleet Deckhand'),
(@PATH3,14,2215.574,5274.178,11.13563, 'Stormfleet Deckhand'),
(@PATH3,15,2213.556,5283.097,10.82595, 'Stormfleet Deckhand'),
(@PATH3,16,2218.244,5291.424,10.70095, 'Stormfleet Deckhand'),
(@PATH3,17,2224.214,5293.65,10.82595, 'Stormfleet Deckhand'),
(@PATH3,18,2220.033,5292.01,10.70095, 'Stormfleet Deckhand'),
(@PATH4,1,2232.031,5289.312,11.11433, 'Stormfleet Deckhand'),
(@PATH4,2,2229.514,5285.923,11.22073, 'Stormfleet Deckhand'),
(@PATH4,3,2231.239,5285.13,11.22661, 'Stormfleet Deckhand'),
(@PATH4,4,2229.854,5285.705,11.22414, 'Stormfleet Deckhand'),
(@PATH4,5,2228.48,5291.178,11.13671, 'Stormfleet Deckhand'),
(@PATH4,6,2226.165,5291.41,10.95095, 'Stormfleet Deckhand'),
(@PATH4,7,2223.731,5291.465,10.82595, 'Stormfleet Deckhand'),
(@PATH4,8,2218.564,5293.642,10.70095, 'Stormfleet Deckhand'),
(@PATH4,9,2213.531,5285.789,10.70095, 'Stormfleet Deckhand'),
(@PATH4,10,2208.855,5275.448,10.82595, 'Stormfleet Deckhand'),
(@PATH4,11,2206.379,5260.244,10.58918, 'Stormfleet Deckhand'),
(@PATH4,12,2211.11,5256.537,10.71418, 'Stormfleet Deckhand'),
(@PATH4,13,2219.187,5252.958,11.33607, 'Stormfleet Deckhand'),
(@PATH4,14,2216.945,5251.284,11.26102, 'Stormfleet Deckhand'),
(@PATH4,15,2215.487,5248.678,11.44615, 'Stormfleet Deckhand'),
(@PATH4,16,2217.447,5248.063,11.4383, 'Stormfleet Deckhand'),
(@PATH4,17,2213.407,5251.713,10.96418, 'Stormfleet Deckhand'),
(@PATH4,18,2207.356,5257.069,10.71418, 'Stormfleet Deckhand'),
(@PATH4,19,2205.434,5262.277,10.58918, 'Stormfleet Deckhand'),
(@PATH4,20,2208.177,5274.885,10.82595, 'Stormfleet Deckhand'),
(@PATH4,21,2214.61,5286.973,10.82595, 'Stormfleet Deckhand'),
(@PATH4,22,2219.416,5292.909,10.70095, 'Stormfleet Deckhand'),
(@PATH4,23,2224.719,5291.44,10.82595, 'Stormfleet Deckhand'),
(@PATH4,24,2228.346,5291.136,10.95095, 'Stormfleet Deckhand'),
(@PATH4,25,2233.497,5291.667,11.21773, 'Stormfleet Deckhand');
-- Template updates for creature 33778 (Tournament Hippogryph)
UPDATE `creature_template` SET `vehicleid`=108,`InhabitType`=4 WHERE `entry`=33778; -- Tournament Hippogryph
-- Model data 22471 (creature 33778 (Tournament Hippogryph))
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=22471; -- Tournament Hippogryph
-- Addon data for creature 33778 (Tournament Hippogryph)
DELETE FROM `creature_template_addon` WHERE `entry`=33778;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33778,0,1,1,0, NULL); -- Tournament Hippogryph
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=33581;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`,`ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(18,33581,24,1,24238, 'Only use Insult on Bjorn Halgurdsson');
-- Updates for (mostly) HoR creatures/GOs
-- Gameobject updates
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=202443; -- Dedication of Honor
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=201761; -- The Pit of Saron Portcullis
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=201759; -- The Forge of Souls Portcullis
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=201760; -- The Halls of Reflection Gate
UPDATE `gameobject_template` SET `flags`=`flags`|32,`faction`=114 WHERE `entry`=201976; -- Doodad_IceCrown_Door_04
UPDATE `gameobject_template` SET `flags`=`flags`|32,`faction`=114 WHERE `entry`=202236; -- Frostmourne Altar
UPDATE `gameobject_template` SET `flags`=`flags`|32,`faction`=114 WHERE `entry`=202302; -- Frostmourne
UPDATE `gameobject_template` SET `flags`=`flags`|32,`faction`=1375 WHERE `entry`=197341; -- Impenetrable Door
UPDATE `gameobject_template` SET `flags`=`flags`|32,`faction`=1375 WHERE `entry`=197343; -- Doodad_IceCrown_Door_03
UPDATE `gameobject_template` SET `flags`=`flags`|32,`faction`=1375 WHERE `entry`=197342; -- Doodad_IceCrown_Door_02
UPDATE `gameobject_template` SET `faction`=16 WHERE `entry`=164639; -- Frost Trap

SET @Equip=10137; -- equipment_id
-- Template updates
UPDATE `creature_template` SET `equipment_id`=@Equip+0 WHERE `entry`=17252; -- Felguard
UPDATE `creature_template` SET `baseattacktime`=1800 WHERE `entry`=38112; -- Falric
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=14881; -- Spider
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|4 WHERE `entry`=1412; -- Squirrel
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|4 WHERE `entry`=32428; -- Underbelly Rat
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|4,`unit_class`=4 WHERE `entry`=36774; -- Silver Covenant Agent
UPDATE `creature_template` SET `equipment_id`=1221 WHERE `entry`=37221; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `equipment_id`=637 WHERE `entry`=37582; -- Archmage Koreln
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32206; -- Armored Brown Bear
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32322; -- Gold Warrior
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32328; -- [DND] Dalaran Sewer Arena - Controller - Death
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32339; -- [DND] Dalaran Sewer Arena - Controller
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32425; -- Galkara the Assassin
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32435; -- Vern
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32441; -- Underbelly Croc
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=32664; -- Segacedi
UPDATE `creature_template` SET `exp`=0,`npcflag`=`npcflag`|130 WHERE `entry`=31032; -- Derek Odds
UPDATE `creature_template` SET `exp`=0,`npcflag`=`npcflag`|3 WHERE `entry`=31081; -- Officer Van Rossem
UPDATE `creature_template` SET `exp`=0,`npcflag`=`npcflag`|640 WHERE `entry`=32416; -- Stefen Cotter
UPDATE `creature_template` SET `exp`=0,`unit_flags`=`unit_flags`|526592 WHERE `entry`=32321; -- Green Warrior
UPDATE `creature_template` SET `exp`=0,`unit_flags`=`unit_flags`|526592 WHERE `entry`=32340; -- Gold Shaman
UPDATE `creature_template` SET `exp`=0,`unit_flags`=`unit_flags`|526592 WHERE `entry`=32342; -- Green Paladin
UPDATE `creature_template` SET `exp`=2 WHERE `entry`=37704; -- Frostmourne Altar Bunny (Quel'Delar)
UPDATE `creature_template` SET `exp`=2,`minlevel`=82,`maxlevel`=82,`unit_flags`=`unit_flags`|33555200 WHERE `entry`=37849; -- Sartharion Image
UPDATE `creature_template` SET `exp`=0,`unit_flags`=`unit_flags`|32768 WHERE `entry`=30755; -- Kor'kron Reaver
UPDATE `creature_template` SET `minlevel`=60,`maxlevel`=60,`unit_flags`=`unit_flags`|33555200 WHERE `entry`=34984; -- World Trigger (Not Floating)
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|512 WHERE `entry`=33936; -- Nargle Lashcord
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|768 WHERE `entry`=33937; -- Xazi Smolderpipe
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|768 WHERE `entry`=33938; -- Zom Bocom
UPDATE `creature_template` SET `unit_class`=4 WHERE `entry`=26125; -- Risen Ghoul
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=28690; -- Tassia Whisperglen
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=28708; -- Kizi Copperclip
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=28956; -- Warcaster Fanoraithe
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=28958; -- Jessa Weaver
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=29660; -- Grand Marauder Sai
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=29665; -- Pazik "The Pick" Prylock
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=30104; -- Adamman the Trader
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=30726; -- Archivist Betha
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=31136; -- High Warlord Uro
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32169; -- Arcanist Braedin
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32170; -- Magister Surdiel
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32676; -- Grindle Firespark
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32677; -- Whirt the All-Knowing
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32678; -- Emeline Fizzlefry
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32679; -- Darthalia Ebonscorch
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32680; -- Fabioso the Fabulous
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32681; -- The Magnificent Merleaux
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32683; -- Grezla the Hag
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32684; -- Mona Everspring
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32685; -- Kitz Proudbreeze
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32686; -- Crafticus Mindbender
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32687; -- Linda Ann Kastinglow
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32688; -- Archmage Tenaj
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32689; -- Adorean Lew
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32690; -- Bitty Frostflinger
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32691; -- Magus Fansy Goodbringer
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32692; -- Arcanist Alec
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32693; -- Sabriana Sorrowgaze
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32726; -- The Chooch
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32727; -- Natalie Tootiblare
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32728; -- Illusionist Karina
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32729; -- Lofwyr Le'Fleur
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32730; -- Goldlilly Gleamingfell
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32731; -- Metopious Loreseeker
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32732; -- Dorfus Alphamage
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=32733; -- Joboba Mezbreaker
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=33031; -- Sebastian Bower
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=36856; -- Shandy Glossgleam
UPDATE `creature_template` SET `npcflag`=`npcflag`|1,`unit_flags`=`unit_flags`|768 WHERE `entry`=35594; -- Brassbolt Mechawrench
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=14990; -- Defilers Emissary
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=14991; -- League of Arathor Emissary
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29533; -- Schembari "Uncle Sal" Shearbolt
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29568; -- "Techs" Rickard Rustbolt
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29667; -- Warsong Gulch Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29668; -- Arathi Basin Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29669; -- Alterac Valley Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29670; -- Eye of the Storm Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29671; -- Strand of the Ancients Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29673; -- Arathi Basin Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=29675; -- Eye of the Storm Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=32330; -- Minzi the Minx
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=32332; -- Ramik Slamwrench
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=32333; -- "Dapper" Danik Blackshaft
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=34952; -- Isle of Conquest Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1048577 WHERE `entry`=34953; -- Isle of Conquest Portal
UPDATE `creature_template` SET `npcflag`=`npcflag`|1154 WHERE `entry`=29535; -- Alchemist Cinesra
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28692; -- "Red" Jack Findle
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28707; -- Angelo Pescatore
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28715; -- Endora Moorehead
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28721; -- Tiffany Cartier
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28723; -- Larana Drome
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28725; -- Patricia Egan
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28726; -- Dominique Stefano
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28727; -- Edward Egan
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28728; -- Dorian Fines
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28951; -- Breanni
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28993; -- Aerith Primrose
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=28994; -- Abra Cadabra
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29491; -- Karandonna
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29495; -- Norvin Alderman
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29510; -- Linna Bruder
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29511; -- Lalla Brightweave
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29512; -- Ainderu Summerleaf
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29528; -- Debbi Moore
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29529; -- Ninsianna
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29548; -- Aimee
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29628; -- Angelique Butler
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29702; -- Chameli Banaphash
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29703; -- Sheddle Glossgleam
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=29716; -- Clockwork Assistant
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=30885; -- Blazik Fireclaw
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=31579; -- Arcanist Adurin
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=31580; -- Arcanist Ivrenne
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=32172; -- Harold Winston
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=32216; -- Mei Francis
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=32334; -- Nixi Fireclaw
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=32509; -- Brammold Deepmine
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=32514; -- Vanessa Sellers
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=33027; -- Jessica Sellers
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=33964; -- Arcanist Firael
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=37942; -- Arcanist Uovril
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=40160; -- Frozo the Renowned
UPDATE `creature_template` SET `npcflag`=`npcflag`|128,`unit_flags`=`unit_flags`|32768 WHERE `entry`=35790; -- Usuri Brightcoin
UPDATE `creature_template` SET `npcflag`=`npcflag`|128,`unit_flags`=`unit_flags`|768 WHERE `entry`=35494; -- Arcanist Miluria
UPDATE `creature_template` SET `npcflag`=`npcflag`|128,`unit_flags`=`unit_flags`|768 WHERE `entry`=35507; -- Enchanter Isian
UPDATE `creature_template` SET `npcflag`=`npcflag`|129 WHERE `entry`=28776; -- Elizabeth Ross
UPDATE `creature_template` SET `npcflag`=`npcflag`|129 WHERE `entry`=29478; -- Jepetto Joybuzz
UPDATE `creature_template` SET `npcflag`=`npcflag`|130 WHERE `entry`=28718; -- Ranid Glowergold
UPDATE `creature_template` SET `npcflag`=`npcflag`|130 WHERE `entry`=29527; -- Orton Bennet
UPDATE `creature_template` SET `npcflag`=`npcflag`|130 WHERE `entry`=32337; -- Christi Stockton
UPDATE `creature_template` SET `npcflag`=`npcflag`|130 WHERE `entry`=32515; -- Braeg Stoutbeard
UPDATE `creature_template` SET `npcflag`=`npcflag`|131,`unit_flags`=`unit_flags`|320 WHERE `entry`=15351; -- Alliance Brigadier General
UPDATE `creature_template` SET `npcflag`=`npcflag`|131072 WHERE `entry`=29530; -- Binzik Goldbook
UPDATE `creature_template` SET `npcflag`=`npcflag`|131072 WHERE `entry`=30604; -- Teller Almeida
UPDATE `creature_template` SET `npcflag`=`npcflag`|131072 WHERE `entry`=30605; -- Teller Gee
UPDATE `creature_template` SET `npcflag`=`npcflag`|131072 WHERE `entry`=30607; -- Teller Plushner
UPDATE `creature_template` SET `npcflag`=`npcflag`|147 WHERE `entry`=28701; -- Timothy Jones
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `entry`=28693; -- Enchanter Nalthanis
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `entry`=28697; -- Timofey Oshenko
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `entry`=28702; -- Professor Pallin
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `entry`=28704; -- Dorothy Egan
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `entry`=29509; -- Namha Moonwater
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `entry`=29513; -- Didi the Wrench
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `entry`=29514; -- Findle Whistlesteam
UPDATE `creature_template` SET `npcflag`=`npcflag`|19 WHERE `entry`=28699; -- Charles Worth
UPDATE `creature_template` SET `npcflag`=`npcflag`|19 WHERE `entry`=28703; -- Linzy Blackbolt
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30115; -- Vereesa Windrunner
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30116; -- Archmage Aethas Sunreaver
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30137; -- Shifty Vickers
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30490; -- Rin Duoctane
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=31080; -- Warden Alturas
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=32516; -- Washed-Up Mage
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=36506; -- Daros Moonlance
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=37776; -- Apprentice Nelphi
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=37780; -- Dark Ranger Vorel
UPDATE `creature_template` SET `npcflag`=`npcflag`|2,`unit_flags`=`unit_flags`|768 WHERE `entry`=35471; -- Sorn Proudmane
UPDATE `creature_template` SET `npcflag`=`npcflag`|2176 WHERE `entry`=28714; -- Ildine Sorrowspear
UPDATE `creature_template` SET `npcflag`=`npcflag`|2176 WHERE `entry`=29537; -- Darahir
UPDATE `creature_template` SET `npcflag`=`npcflag`|2176 WHERE `entry`=29636; -- Hagatha Moorehead
UPDATE `creature_template` SET `npcflag`=`npcflag`|262145 WHERE `entry`=29534; -- "Baroness" Llana
UPDATE `creature_template` SET `npcflag`=`npcflag`|262145 WHERE `entry`=32329; -- Kanika Goldwell
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=16128; -- Rhonin
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=20735; -- Archmage Lan'dalock
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=28160; -- Archmage Pentarus
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=29156; -- Archmage Celindra
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=31439; -- Archmage Timear
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=36669; -- Arcanist Tybalin
UPDATE `creature_template` SET `npcflag`=`npcflag`|384 WHERE `entry`=28691; -- Susana Averoy
UPDATE `creature_template` SET `npcflag`=`npcflag`|384 WHERE `entry`=29493; -- Jarold Puller
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28716; -- Palja Amboss
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28722; -- Bryan Landers
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28989; -- Aemara
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28990; -- Anthony Durain
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28991; -- Valaden Silverblade
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28992; -- Valerie Langrom
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28995; -- Paldesse
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=28997; -- Griselda Hunderland
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=29476; -- Dagna Flintlock
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=29494; -- Shen Kang Cheng
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=29496; -- Kerta the Bold
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=29497; -- Walther Whiteford
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=29499; -- Bartram Haller
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=29523; -- Bragund Brightlink
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=29538; -- Hexil Garrot
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=34252; -- Dubin Clay
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=35497; -- Rafael Langrom
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry`=35500; -- Matilda Brightlink
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|512 WHERE `entry`=34095; -- Trapjaw Rix
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|512 WHERE `entry`=35496; -- Rueben Lauren
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|512 WHERE `entry`=35498; -- Horace Hunderland
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=28682; -- Inzi Charmlight
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=28685; -- Narisa Redgold
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=29547; -- Applebough
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=29714; -- Lucian Trias
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=29715; -- Fialla Sweetberry
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=32403; -- Sandra Bartan
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=32421; -- Marcella Bloom
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=32424; -- Laire Brewgold
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=32426; -- Coira Longrifle
UPDATE `creature_template` SET `npcflag`=`npcflag`|640 WHERE `entry`=33026; -- Sarah Brady
UPDATE `creature_template` SET `npcflag`=`npcflag`|642 WHERE `entry`=29049; -- Arille Azuregaze
UPDATE `creature_template` SET `npcflag`=`npcflag`|65536 WHERE `entry`=28686; -- Caliel Brightwillow
UPDATE `creature_template` SET `npcflag`=`npcflag`|65536 WHERE `entry`=32411; -- Afsaneh Asrar
UPDATE `creature_template` SET `npcflag`=`npcflag`|66177 WHERE `entry`=28687; -- Amisi Azuregaze
UPDATE `creature_template` SET `npcflag`=`npcflag`|66177 WHERE `entry`=31557; -- Uda the Beast
UPDATE `creature_template` SET `npcflag`=`npcflag`|66177 WHERE `entry`=32413; -- Isirami Fairwind
UPDATE `creature_template` SET `npcflag`=`npcflag`|66179 WHERE `entry`=29532; -- Ajay Green
UPDATE `creature_template` SET `npcflag`=`npcflag`|723 WHERE `entry`=28742; -- Marcia Chase
UPDATE `creature_template` SET `npcflag`=`npcflag`|7296 WHERE `entry`=32641; -- Drix Blackwrench
UPDATE `creature_template` SET `npcflag`=`npcflag`|786433 WHERE `entry`=28774; -- Andrew Matthews
UPDATE `creature_template` SET `npcflag`=`npcflag`|80 WHERE `entry`=28694; -- Alard Schmied
UPDATE `creature_template` SET `npcflag`=`npcflag`|80 WHERE `entry`=28698; -- Jedidiah Handers
UPDATE `creature_template` SET `npcflag`=`npcflag`|80 WHERE `entry`=29505; -- Imindril Spearsong
UPDATE `creature_template` SET `npcflag`=`npcflag`|80 WHERE `entry`=29506; -- Orland Schaeffer
UPDATE `creature_template` SET `npcflag`=`npcflag`|82 WHERE `entry`=28706; -- Olisarra the Kind
UPDATE `creature_template` SET `npcflag`=`npcflag`|83 WHERE `entry`=28705; -- Katherine Lee
UPDATE `creature_template` SET `npcflag`=`npcflag`|896 WHERE `entry`=32642; -- Mojodishu
UPDATE `creature_template` SET `unit_class`=4 WHERE `entry`=36774; -- Silver Covenant Agent
UPDATE `creature_template` SET `unit_class`=4 WHERE `entry`=36776; -- Sunreaver Agent
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32832,`equipment_id`=1819 WHERE `entry`=37225; -- Uther the Lightbringer
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33555200 WHERE `entry`=35608; -- [DND] Dalaran Argent Tournament Herald Bunny
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33555200 WHERE `entry`=37906; -- Imprisoned Soul
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|768 WHERE `entry`=34330; -- Jones
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|768 WHERE `entry`=35826; -- Kaye Toogie

-- Equipments
DELETE FROM `creature_equip_template` WHERE `entry` IN (@Equip,@Equip+1);
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@Equip+0,22199,0,0),
(@Equip+1,50771,50781,0);

-- Creature addon updates
DELETE FROM `creature_template_addon` WHERE `entry` IN (15351,16128,20735,23472,25171,26043,26119,27047,27870,28160,28332,28682,28685,28686,28687,28691,28692,28693,28694,28697,28698,28699,28701,28702,28703,28704,28705,28706,28707,28708,28714,28715,28716,28718,28721,28722,28723,28725,28726,28727,28728,28742,28774,28776,28956,28958,28989,28990,28991,28992,28993,28994,28995,28997,29049,29156,29238,29254,29255,29261,29325,29476,29478,29491,29493,29494,29495,29496,29497,29499,29505,29506,29509,29510,29511,29512,29513,29514,29523,29527,29528,29529,29530,29532,29533,29534,29535,29537,29538,29547,29548,29568,29628,29636,29640,29641,29660,29665,29667,29668,29669,29670,29671,29673,29675,29702,29703,29714,29715,29716,29763,29764,29765,29766,29777,29780,29781,29782,29783,29784,29785,29802,29807,29812,30094,30095,30104,30115,30116,30117,30137,30164,30352,30490,30604,30605,30607,30659,30726,30755,30885,31032,31080,31081,31228,31236,31439,31517,31557,31580,31643,31730,32169,32170,32172,32216,32249,32265,32321,32322,32328,32329,32330,32332,32333,32334,32337,32339,32340,32342,32403,32411,32413,32416,32421,32424,32425,32426,32428,32435,32441,32450,32451,32466,32470,32509,32514,32515,32516,32606,32641,32650,32651,32652,32653,32664,32668,32669,32675,32676,32677,32678,32679,32680,32681,32683,32684,32685,32686,32687,32688,32689,32690,32691,32692,32693,32709,32711,32721,32722,32723,32724,32725,32726,32727,32728,32729,32730,32731,32732,32733,32743,32744,32745,32746,32747,32749,32751,32843,32844,33026,33027,33422,33778,33936,33937,33938,33964,34095,34252,34330,34952,34953,34984,35471,35494,35496,35497,35498,35500,35507,35608,35790,35826,36506,36669,36774,36776,36851,36856,37221,37225,37226,37582,37704,37776,37780,37849,37906,37942,38112,38113,38172,38173,38175,38176,38177,38567,40160,7549);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(15351,0,0,1,0, NULL), -- Alliance Brigadier General
(16128,0,0,1,0, NULL), -- Rhonin
(20735,0,0,1,0, NULL), -- Archmage Lan'dalock
(23472,0,0,1,0, NULL), -- World Trigger (Large AOI, Not Immune PC/NPC)
(25171,0,0,1,0, NULL), -- Invisible Stalker (Scale x0.5)
(26043,0,0,1,0, NULL), -- Steam Burst
(26119,0,0,1,0, NULL), -- Phoenix Hatchling
(27047,0,0,1,0, NULL), -- Invisible Stalker (Floating Only)
(27870,0,0,1,0, NULL), -- Wild Flower
(28160,0,0,257,0, NULL), -- Archmage Pentarus
(28332,0,0,1,0, NULL), -- Generic Trigger LAB (Large AOI)
(28682,0,0,1,0, NULL), -- Inzi Charmlight
(28685,0,0,1,0, NULL), -- Narisa Redgold
(28686,0,0,1,0, NULL), -- Caliel Brightwillow
(28687,0,0,257,0, NULL), -- Amisi Azuregaze
(28691,0,0,257,0, NULL), -- Susana Averoy
(28692,0,0,257,0, NULL), -- "Red" Jack Findle
(28693,0,0,257,0, NULL), -- Enchanter Nalthanis
(28694,0,0,257,0, NULL), -- Alard Schmied
(28697,0,0,257,0, NULL), -- Timofey Oshenko
(28698,0,0,257,0, NULL), -- Jedidiah Handers
(28699,0,0,257,0, NULL), -- Charles Worth
(28701,0,0,257,0, NULL), -- Timothy Jones
(28702,0,0,257,0, NULL), -- Professor Pallin
(28703,0,0,257,0, NULL), -- Linzy Blackbolt
(28704,0,0,257,0, NULL), -- Dorothy Egan
(28705,0,0,1,0, NULL), -- Katherine Lee
(28706,0,0,257,0, NULL), -- Olisarra the Kind
(28707,0,0,257,0, NULL), -- Angelo Pescatore
(28708,0,0,257,0, NULL), -- Kizi Copperclip
(28714,0,0,257,0, NULL), -- Ildine Sorrowspear
(28715,0,0,257,0, NULL), -- Endora Moorehead
(28716,0,0,257,0, NULL), -- Palja Amboss
(28718,0,0,257,0, NULL), -- Ranid Glowergold
(28721,0,0,257,0, NULL), -- Tiffany Cartier
(28722,0,0,257,0, NULL), -- Bryan Landers
(28723,0,0,257,0, NULL), -- Larana Drome
(28725,0,0,257,0, NULL), -- Patricia Egan
(28726,0,0,257,0, NULL), -- Dominique Stefano
(28727,0,0,257,0, NULL), -- Edward Egan
(28728,0,0,257,0, NULL), -- Dorian Fines
(28742,0,0,257,0, NULL), -- Marcia Chase
(28774,0,0,257,0, NULL), -- Andrew Matthews
(28776,0,0,257,0, NULL), -- Elizabeth Ross
(28956,0,0,257,0, NULL), -- Warcaster Fanoraithe
(28958,0,0,257,0, NULL), -- Jessa Weaver
(28989,0,0,258,0, NULL), -- Aemara
(28990,0,0,257,0, NULL), -- Anthony Durain
(28991,0,0,257,0, NULL), -- Valaden Silverblade
(28992,0,0,257,0, NULL), -- Valerie Langrom
(28993,0,0,1,0, NULL), -- Aerith Primrose
(28994,0,0,257,0, NULL), -- Abra Cadabra
(28995,0,0,257,0, NULL), -- Paldesse
(28997,0,0,257,0, NULL), -- Griselda Hunderland
(29049,0,0,1,0, NULL), -- Arille Azuregaze
(29156,0,0,257,0, NULL), -- Archmage Celindra
(29238,0,0,1,0, NULL), -- Scourge Haunt
(29254,0,0,1,0, NULL), -- Silver Covenant Guardian Mage
(29255,0,0,1,0, NULL), -- Sunreaver Guardian Mage
(29261,0,0,2,0, NULL), -- Windle Sparkshine
(29325,0,0,1,379, NULL), -- Torgo the Younger
(29476,0,0,258,0, NULL), -- Dagna Flintlock
(29478,0,0,257,0, NULL), -- Jepetto Joybuzz
(29491,0,0,257,0, NULL), -- Karandonna
(29493,0,0,257,0, NULL), -- Jarold Puller
(29494,0,0,257,0, NULL), -- Shen Kang Cheng
(29495,0,0,257,0, NULL), -- Norvin Alderman
(29496,0,0,257,0, NULL), -- Kerta the Bold
(29497,0,0,257,69, NULL), -- Walther Whiteford
(29499,0,0,257,0, NULL), -- Bartram Haller
(29505,0,0,257,233, NULL), -- Imindril Spearsong
(29506,0,0,257,0, NULL), -- Orland Schaeffer
(29509,0,0,257,0, NULL), -- Namha Moonwater
(29510,0,0,257,0, NULL), -- Linna Bruder
(29511,0,0,257,0, NULL), -- Lalla Brightweave
(29512,0,0,257,69, NULL), -- Ainderu Summerleaf
(29513,0,0,257,0, NULL), -- Didi the Wrench
(29514,0,0,257,0, NULL), -- Findle Whistlesteam
(29523,0,0,257,0, NULL), -- Bragund Brightlink
(29527,0,0,257,0, NULL), -- Orton Bennet
(29528,0,0,257,0, NULL), -- Debbi Moore
(29529,0,0,257,0, NULL), -- Ninsianna
(29530,0,0,257,0, NULL), -- Binzik Goldbook
(29532,0,0,257,0, NULL), -- Ajay Green
(29533,0,0,1,0, NULL), -- Schembari "Uncle Sal" Shearbolt
(29534,0,0,1,0, NULL), -- "Baroness" Llana
(29535,0,0,257,0, NULL), -- Alchemist Cinesra
(29537,0,0,257,0, NULL), -- Darahir
(29538,0,0,257,0, NULL), -- Hexil Garrot
(29547,0,0,257,0, NULL), -- Applebough
(29548,0,0,257,0, NULL), -- Aimee
(29568,0,0,1,0, NULL), -- "Techs" Rickard Rustbolt
(29628,0,0,257,0, NULL), -- Angelique Butler
(29636,0,0,257,0, NULL), -- Hagatha Moorehead
(29640,0,0,257,0, NULL), -- Josie Birch
(29641,0,0,257,0, NULL), -- Theresa Wolf
(29660,0,0,1,0, NULL), -- Grand Marauder Sai
(29665,0,0,1,0, NULL), -- Pazik "The Pick" Prylock
(29667,0,0,1,0, NULL), -- Warsong Gulch Portal
(29668,0,0,1,0, NULL), -- Arathi Basin Portal
(29669,0,0,1,0, NULL), -- Alterac Valley Portal
(29670,0,0,1,0, NULL), -- Eye of the Storm Portal
(29671,0,0,1,0, NULL), -- Strand of the Ancients Portal
(29673,0,0,1,0, NULL), -- Arathi Basin Portal
(29675,0,0,1,0, NULL), -- Eye of the Storm Portal
(29702,0,0,257,0, NULL), -- Chameli Banaphash
(29703,0,0,257,0, NULL), -- Sheddle Glossgleam
(29714,0,0,1,0, NULL), -- Lucian Trias
(29715,0,0,257,0, NULL), -- Fialla Sweetberry
(29716,0,0,257,0, NULL), -- Clockwork Assistant
(29763,0,0,1,0, NULL), -- Cosmetic Totem Alliance Air
(29764,0,0,1,0, NULL), -- Cosmetic Totem Alliance Earth
(29765,0,0,1,0, NULL), -- Cosmetic Totem Alliance Fire
(29766,0,0,1,0, NULL), -- Cosmetic Totem Alliance Water
(29777,0,0,1,0, NULL), -- Cosmetic Mechanical Gorilla
(29780,0,0,1,0, NULL), -- Cosmetic Mechanical Chicken
(29781,0,0,1,0, NULL), -- Cosmetic Mechanical Squirrel
(29782,0,0,1,0, NULL), -- Cosmetic Mechanical Sheep
(29783,0,0,1,0, NULL), -- Cosmetic Clockwork Robot
(29784,0,0,1,0, NULL), -- Cosmetic Clockwork Robot (Blue)
(29785,0,0,1,0, NULL), -- Cosmetic Clockwork Robot (Red)
(29802,0,0,1,0, NULL), -- Cosmetic Toy Plane
(29807,0,0,1,0, NULL), -- [DND] Dalaran Toy Store Plane String Hook
(29812,0,0,1,0, NULL), -- [DND] Dalaran Toy Store Plane String Bunny
(30094,0,0,1,0, NULL), -- Dalaran Sewer Rat
(30095,0,0,1,0, NULL), -- Dalaran Sewer Turtle
(30104,0,1,257,0, NULL), -- Adamman the Trader
(30115,0,0,2,0, NULL), -- Vereesa Windrunner
(30116,0,0,1,0, NULL), -- Archmage Aethas Sunreaver
(30117,0,0,1,0, NULL), -- Archmage Modera
(30137,0,0,1,0, NULL), -- Shifty Vickers
(30164,0,0,133121,0, NULL), -- Cavedweller Worg
(30352,0,0,256,0, NULL), -- Skybreaker Marine
(30490,0,0,1,0, NULL), -- Rin Duoctane
(30604,0,0,257,0, NULL), -- Teller Almeida
(30605,0,0,257,0, NULL), -- Teller Gee
(30607,0,0,257,0, NULL), -- Teller Plushner
(30659,0,0,1,0, NULL), -- Violet Hold Guard
(30726,0,0,257,0, NULL), -- Archivist Betha
(30755,0,0,256,0, NULL), -- Kor'kron Reaver
(30885,0,0,1,0, NULL), -- Blazik Fireclaw
(31032,0,0,1,0, NULL), -- Derek Odds
(31080,0,0,1,0, NULL), -- Warden Alturas
(31081,0,0,1,0, NULL), -- Officer Van Rossem
(31228,0,0,1,0, NULL), -- Grove Walker
(31236,0,0,1,0, NULL), -- Dappled Stag
(31439,0,0,1,0, NULL), -- Archmage Timear
(31517,0,0,1,0, NULL), -- Dalaran Fountain Invis Stalker
(31557,0,0,1,0, NULL), -- Uda the Beast
(31580,0,0,1,0, NULL), -- Arcanist Ivrenne
(31643,0,0,1,0, NULL), -- Dalaran Well Teleport Bunny
(31730,0,0,1,0, NULL), -- Cosmetic Frog
(32169,0,0,1,0, NULL), -- Arcanist Braedin
(32170,0,0,1,0, NULL), -- Magister Surdiel
(32172,0,0,257,0, NULL), -- Harold Winston
(32216,0,0,257,0, NULL), -- Mei Francis
(32249,0,0,1,0, NULL), -- Worg Pup
(32265,0,50331648,1,0, NULL), -- Northrend Daily Dungeon Image Bunny
(32321,0,0,1,0, NULL), -- Green Warrior
(32322,0,0,1,0, NULL), -- Gold Warrior
(32328,0,0,1,0, NULL), -- [DND] Dalaran Sewer Arena - Controller - Death
(32329,0,0,1,0, NULL), -- Kanika Goldwell
(32330,0,0,1,0, NULL), -- Minzi the Minx
(32332,0,0,1,0, NULL), -- Ramik Slamwrench
(32333,0,0,1,0, NULL), -- "Dapper" Danik Blackshaft
(32334,0,0,1,0, NULL), -- Nixi Fireclaw
(32337,0,0,257,0, NULL), -- Christi Stockton
(32339,0,0,1,0, NULL), -- [DND] Dalaran Sewer Arena - Controller
(32340,0,0,1,0, NULL), -- Gold Shaman
(32342,0,0,1,0, NULL), -- Green Paladin
(32403,0,0,1,0, NULL), -- Sandra Bartan
(32411,0,0,257,0, NULL), -- Afsaneh Asrar
(32413,0,0,1,0, NULL), -- Isirami Fairwind
(32416,0,0,1,0, NULL), -- Stefen Cotter
(32421,0,0,1,0, NULL), -- Marcella Bloom
(32424,0,0,1,0, NULL), -- Laire Brewgold
(32425,0,0,1,0, NULL), -- Galkara the Assassin
(32426,0,0,1,0, NULL), -- Coira Longrifle
(32428,0,0,1,0, NULL), -- Underbelly Rat
(32435,0,0,1,0, NULL), -- Vern
(32441,0,0,1,0, NULL), -- Underbelly Croc
(32450,0,3,1,0, NULL), -- Badluck
(32451,0,0,257,0, NULL), -- Dalaran Citizen
(32466,0,0,1,0, NULL), -- Monstrous Underbelly Rat
(32470,0,0,1,0, NULL), -- Sewer Frog
(32509,0,0,257,0, NULL), -- Brammold Deepmine
(32514,0,0,257,0, NULL), -- Vanessa Sellers
(32515,0,0,257,0, NULL), -- Braeg Stoutbeard
(32516,0,3,257,0, NULL), -- Washed-Up Mage
(32606,0,0,1,0, NULL), -- [DND] Cosmetic Book
(32641,0,0,1,0, NULL), -- Drix Blackwrench
(32650,0,3,1,0, NULL), -- Wounded Dalaran Protector
(32651,0,7,1,0, NULL), -- Wounded Dalaran Shield Guard
(32652,0,3,1,0, NULL), -- Wounded Dalaran Watcher
(32653,0,7,1,0, NULL), -- Wounded Dalaran Serpent
(32664,0,0,1,0, NULL), -- Segacedi
(32668,0,0,257,0, NULL), -- Emi
(32669,0,0,257,0, NULL), -- Colin
(32675,0,0,257,0, NULL), -- Babagahnoosh the Grumpy
(32676,0,0,257,0, NULL), -- Grindle Firespark
(32677,0,0,257,0, NULL), -- Whirt the All-Knowing
(32678,0,0,257,0, NULL), -- Emeline Fizzlefry
(32679,0,0,257,0, NULL), -- Darthalia Ebonscorch
(32680,0,0,257,0, NULL), -- Fabioso the Fabulous
(32681,0,0,257,0, NULL), -- The Magnificent Merleaux
(32683,0,0,257,0, NULL), -- Grezla the Hag
(32684,0,0,257,0, NULL), -- Mona Everspring
(32685,0,0,257,0, NULL), -- Kitz Proudbreeze
(32686,0,0,257,0, NULL), -- Crafticus Mindbender
(32687,0,0,257,0, NULL), -- Linda Ann Kastinglow
(32688,0,0,257,0, NULL), -- Archmage Tenaj
(32689,0,0,257,0, NULL), -- Adorean Lew
(32690,0,0,257,0, NULL), -- Bitty Frostflinger
(32691,0,0,257,0, NULL), -- Magus Fansy Goodbringer
(32692,0,0,257,0, NULL), -- Arcanist Alec
(32693,0,0,257,0, NULL), -- Sabriana Sorrowgaze
(32709,0,0,1,0, NULL), -- Hunaka Greenhoof
(32711,0,0,1,0, NULL), -- Warp-Huntress Kula
(32721,0,0,1,0, NULL), -- Felcaster Virim
(32722,0,0,1,0, NULL), -- Warmage Lukems
(32723,0,0,257,0, NULL), -- Warmage Kath'leen
(32724,0,0,1,0, NULL), -- Warmage Mumplina
(32725,0,0,1,0, NULL), -- Warmage Silva
(32726,0,0,257,0, NULL), -- The Chooch
(32727,0,0,257,0, NULL), -- Natalie Tootiblare
(32728,0,0,257,0, NULL), -- Illusionist Karina
(32729,0,0,257,0, NULL), -- Lofwyr Le'Fleur
(32730,0,0,257,0, NULL), -- Goldlilly Gleamingfell
(32731,0,0,257,0, NULL), -- Metopious Loreseeker
(32732,0,0,257,0, NULL), -- Dorfus Alphamage
(32733,0,0,257,0, NULL), -- Joboba Mezbreaker
(32743,0,1,1,0, NULL), -- Willard Blauvelt
(32744,0,0,1,0, NULL), -- Bakor the Gangly
(32745,0,0,1,0, NULL), -- Amera Sky
(32746,0,0,1,0, NULL), -- Geffon the Unruly
(32747,0,0,1,0, NULL), -- Mendez Nightshadow
(32749,0,1,1,0, NULL), -- Tuff Gorehoof
(32751,0,0,1,0, NULL), -- Backbiter
(32843,0,0,1,0, NULL), -- Tabea
(32844,0,0,1,0, NULL), -- Apollo
(33026,0,0,1,0, NULL), -- Sarah Brady
(33027,0,0,257,0, NULL), -- Jessica Sellers
(33422,0,0,1,0, NULL), -- Unbound Seer
(33778,0,1,1,0, NULL), -- Tournament Hippogryph
(33936,0,0,1,0, NULL), -- Nargle Lashcord
(33937,0,0,1,0, NULL), -- Xazi Smolderpipe
(33938,0,0,1,0, NULL), -- Zom Bocom
(33964,0,0,1,0, NULL), -- Arcanist Firael
(34095,0,0,1,0, NULL), -- Trapjaw Rix
(34252,0,0,257,0, NULL), -- Dubin Clay
(34330,0,3,1,0, NULL), -- Jones
(34952,0,0,1,0, NULL), -- Isle of Conquest Portal
(34953,0,0,1,0, NULL), -- Isle of Conquest Portal
(34984,0,0,1,0, NULL), -- World Trigger (Not Floating)
(35471,0,0,1,0, NULL), -- Sorn Proudmane
(35494,0,0,1,0, NULL), -- Arcanist Miluria
(35496,0,0,257,0, NULL), -- Rueben Lauren
(35497,0,0,257,0, NULL), -- Rafael Langrom
(35498,0,0,257,0, NULL), -- Horace Hunderland
(35500,0,0,257,0, NULL), -- Matilda Brightlink
(35507,0,0,1,0, NULL), -- Enchanter Isian
(35608,0,0,1,0, NULL), -- [DND] Dalaran Argent Tournament Herald Bunny
(35790,0,0,257,0, NULL), -- Usuri Brightcoin
(35826,0,1,1,0, NULL), -- Kaye Toogie
(36506,0,0,1,0, NULL), -- Daros Moonlance
(36669,0,0,1,0, NULL), -- Arcanist Tybalin
(36774,0,0,1,0, NULL), -- Silver Covenant Agent
(36776,0,0,1,0, NULL), -- Sunreaver Agent
(36851,0,0,1,0, NULL), -- Aquanos
(36856,0,0,1,0, NULL), -- Shandy Glossgleam
(37221,0,0,1,0, NULL), -- Lady Jaina Proudmoore
(37225,0,0,0,0, NULL), -- Uther the Lightbringer
(37226,0,0,1,0, NULL), -- The Lich King
(37582,0,0,1,0, NULL), -- Archmage Koreln
(37704,0,0,1,0, NULL), -- Frostmourne Altar Bunny (Quel'Delar)
(37776,0,0,1,0, NULL), -- Apprentice Nelphi
(37780,0,0,2,0, NULL), -- Dark Ranger Vorel
(37849,0,50331648,0,0, NULL), -- Sartharion Image
(37906,0,50331648,1,0, NULL), -- Imprisoned Soul
(37942,0,0,1,0, NULL), -- Arcanist Uovril
(38112,0,0,1,0, NULL), -- Falric
(38113,0,0,1,0, NULL), -- Marwyn
(38172,0,0,1,0, NULL), -- Phantom Mage
(38173,0,0,1,0, NULL), -- Spectral Footman
(38175,0,0,1,0, NULL), -- Ghostly Priest
(38176,0,0,1,0, NULL), -- Tortured Rifleman
(38177,0,0,1,0, NULL), -- Shadowy Mercenary
(38567,0,0,1,0, NULL), -- Phantom Hallucination
(40160,31837,0,257,0, NULL), -- Frozo the Renowned
(7549,0,0,1,0, NULL); -- Tree Frog

-- Model updates
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=22471; -- Tournament Hippogryph
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26484; -- Alterac Valley Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26495; -- Arathi Basin Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26496; -- Arathi Basin Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26499; -- Eye of the Storm Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26501; -- Eye of the Storm Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26502; -- Warsong Gulch Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=26504; -- Strand of the Ancients Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=29743; -- Isle of Conquest Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=0,`gender`=2 WHERE `modelid`=29744; -- Isle of Conquest Portal
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=0 WHERE `modelid`=251; -- Colin
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=1 WHERE `modelid`=21270; -- Dalaran Visitor
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=1 WHERE `modelid`=80; -- Emi
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=2176; -- Cosmetic Rat
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=25870; -- Mekgineer's Chopper
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=2,`gender`=2 WHERE `modelid`=26759; -- Dalaran Sewer Rat
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=4,`gender`=2 WHERE `modelid`=27243; -- Wooly Mammoth
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=4,`gender`=2 WHERE `modelid`=27972; -- Monstrous Underbelly Rat
UPDATE `creature_model_info` SET `bounding_radius`=0.00235,`combat_reach`=0,`gender`=2 WHERE `modelid`=7804; -- [DND] Dalaran Argent Tournament Herald Bunny
UPDATE `creature_model_info` SET `bounding_radius`=0.03,`combat_reach`=0,`gender`=2 WHERE `modelid`=26557; -- Cosmetic Toy Plane
UPDATE `creature_model_info` SET `bounding_radius`=0.0937,`combat_reach`=0,`gender`=2 WHERE `modelid`=26530; -- Cosmetic Clockwork Robot (Blue)
UPDATE `creature_model_info` SET `bounding_radius`=0.0937,`combat_reach`=0,`gender`=2 WHERE `modelid`=26531; -- Cosmetic Clockwork Robot (Red)
UPDATE `creature_model_info` SET `bounding_radius`=0.0937,`combat_reach`=0,`gender`=2 WHERE `modelid`=26547; -- Cosmetic Clockwork Robot
UPDATE `creature_model_info` SET `bounding_radius`=0.1,`combat_reach`=0,`gender`=2 WHERE `modelid`=24897; -- Wild Flower
UPDATE `creature_model_info` SET `bounding_radius`=0.1,`combat_reach`=0,`gender`=2 WHERE `modelid`=24898; -- Wild Flower
UPDATE `creature_model_info` SET `bounding_radius`=0.12,`combat_reach`=0,`gender`=2 WHERE `modelid`=24895; -- Wild Flower
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Invisible Stalker (Scale x0.5)
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17200; -- Northrend Daily Dungeon Image Bunny
UPDATE `creature_model_info` SET `bounding_radius`=0.15,`combat_reach`=0,`gender`=2 WHERE `modelid`=23574; -- Phoenix Hatchling
UPDATE `creature_model_info` SET `bounding_radius`=0.175,`combat_reach`=0,`gender`=2 WHERE `modelid`=23501; -- Steam Burst
UPDATE `creature_model_info` SET `bounding_radius`=0.18,`combat_reach`=1,`gender`=2 WHERE `modelid`=30799; -- Sartharion Image
UPDATE `creature_model_info` SET `bounding_radius`=0.186,`combat_reach`=0,`gender`=2 WHERE `modelid`=28212; -- Backbiter
UPDATE `creature_model_info` SET `bounding_radius`=0.187,`combat_reach`=0,`gender`=2 WHERE `modelid`=1160; -- Spider
UPDATE `creature_model_info` SET `bounding_radius`=0.187,`combat_reach`=0,`gender`=2 WHERE `modelid`=2536; -- Spider
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26517; -- Cosmetic Totem Alliance Air
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26518; -- Cosmetic Totem Alliance Earth
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26519; -- Cosmetic Totem Alliance Fire
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0,`gender`=2 WHERE `modelid`=26521; -- Cosmetic Totem Alliance Water
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=15253; -- League of Arathor Emissary
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25605; -- Amisi Azuregaze
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25608; -- Susana Averoy
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25620; -- Dorothy Egan
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25621; -- Katherine Lee
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25636; -- Endora Moorehead
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25637; -- Palja Amboss
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25645; -- Tiffany Cartier
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25647; -- Larana Drome
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25648; -- Patricia Egan
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25649; -- Dominique Stefano
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25655; -- Marcia Chase
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25674; -- Elizabeth Ross
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25807; -- Jessa Weaver
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25878; -- Valerie Langrom
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25880; -- Abra Cadabra
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25881; -- Griselda Hunderland
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=25983; -- Aerith Primrose
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26311; -- Kerta the Bold
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26377; -- Linna Bruder
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26390; -- Angelique Butler
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26396; -- Debbi Moore
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26397; -- Hagatha Moorehead
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26398; -- Josie Birch
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26414; -- Grand Marauder Sai
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26438; -- Chameli Banaphash
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=26440; -- Christi Stockton
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27287; -- Archivist Betha
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27782; -- Theresa Wolf
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27822; -- Mei Francis
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27944; -- Warmage Mumplina
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27952; -- Sandra Bartan
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27954; -- Afsaneh Asrar
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27962; -- Marcella Bloom
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=27999; -- Vanessa Sellers
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28125; -- Wounded Dalaran Watcher
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28150; -- Grezla the Hag
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28155; -- Linda Ann Kastinglow
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28166; -- Illusionist Karina
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28202; -- Amera Sky
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28317; -- Tabea
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=28433; -- Jessica Sellers
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1,`gender`=1 WHERE `modelid`=30764; -- Apprentice Nelphi
UPDATE `creature_model_info` SET `bounding_radius`=0.2288,`combat_reach`=1,`gender`=1 WHERE `modelid`=24916; -- Warmage Kath'leen
UPDATE `creature_model_info` SET `bounding_radius`=0.2288,`combat_reach`=1,`gender`=1 WHERE `modelid`=25947; -- Archmage Celindra
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1,`gender`=1 WHERE `modelid`=27333; -- Kor'kron Reaver
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1,`gender`=1 WHERE `modelid`=28185; -- Warp-Huntress Kula
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1,`gender`=1 WHERE `modelid`=28208; -- Galkara the Assassin
UPDATE `creature_model_info` SET `bounding_radius`=0.2429,`combat_reach`=1,`gender`=2 WHERE `modelid`=850; -- Felhunter
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=16259; -- Dalaran Sewer Turtle
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5448; -- Cosmetic Cat Set 2/2
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5554; -- Jones
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5556; -- Badluck
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0,`gender`=2 WHERE `modelid`=5966; -- Wounded Dalaran Serpent
UPDATE `creature_model_info` SET `bounding_radius`=0.26,`combat_reach`=1,`gender`=1 WHERE `modelid`=26771; -- Archmage Modera
UPDATE `creature_model_info` SET `bounding_radius`=0.2625,`combat_reach`=0,`gender`=2 WHERE `modelid`=26524; -- Cosmetic Mechanical Gorilla
UPDATE `creature_model_info` SET `bounding_radius`=0.263347,`combat_reach`=0,`gender`=2 WHERE `modelid`=16885; -- Ravager Specimen
UPDATE `creature_model_info` SET `bounding_radius`=0.275,`combat_reach`=0,`gender`=2 WHERE `modelid`=28318; -- Apollo
UPDATE `creature_model_info` SET `bounding_radius`=0.2912,`combat_reach`=2,`gender`=1 WHERE `modelid`=30977; -- Phantom Hallucination
UPDATE `creature_model_info` SET `bounding_radius`=0.2912,`combat_reach`=2,`gender`=1 WHERE `modelid`=30977; -- Phantom Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=0,`gender`=2 WHERE `modelid`=27720; -- Cosmetic Worg Pup
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=23337; -- Warmage Silva
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=24607; -- Sebastian Bower
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25166; -- Archmage Pentarus
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25609; -- "Red" Jack Findle
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25611; -- Alard Schmied
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25613; -- Timofey Oshenko
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25614; -- Jedidiah Handers
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25615; -- Charles Worth
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25623; -- Angelo Pescatore
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25646; -- Bryan Landers
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25650; -- Edward Egan
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25651; -- Dorian Fines
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25673; -- Andrew Matthews
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=25876; -- Anthony Durain
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26075; -- Timothy Jones
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26138; -- Torgo the Younger
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26307; -- Jarold Puller
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26309; -- Shen Kang Cheng
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26310; -- Norvin Alderman
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26312; -- Walther Whiteford
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26313; -- Bartram Haller
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26338; -- Orland Schaeffer
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26362; -- Schembari "Uncle Sal" Shearbolt
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26372; -- Binzik Goldbook
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26373; -- Ajay Green
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26391; -- "Techs" Rickard Rustbolt
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26395; -- Orton Bennet
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26417; -- Pazik "The Pick" Prylock
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26444; -- Hexil Garrot
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26445; -- Alchemist Cinesra
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26463; -- Nargle Lashcord
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26465; -- Zom Bocom
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26766; -- Adamman the Trader
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26779; -- Shifty Vickers
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26997; -- Skybreaker Marine
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=26998; -- Skybreaker Marine
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27068; -- Rin Duoctane
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27157; -- Teller Almeida
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27158; -- Teller Gee
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27160; -- Teller Plushner
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27334; -- Kor'kron Reaver
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27398; -- Blazik Fireclaw
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27449; -- Derek Odds
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27799; -- Harold Winston
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27910; -- Ramik Slamwrench
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27911; -- "Dapper" Danik Blackshaft
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27915; -- Lucian Trias
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=27958; -- Stefen Cotter
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28006; -- Washed-Up Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28120; -- Drix Blackwrench
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28123; -- Wounded Dalaran Protector
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28124; -- Wounded Dalaran Shield Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28145; -- Whirt the All-Knowing
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28149; -- The Magnificent Merleaux
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28154; -- Crafticus Mindbender
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28159; -- Adorean Lew
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28161; -- Magus Fansy Goodbringer
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28164; -- The Chooch
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=28203; -- Geffon the Unruly
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=29833; -- Horace Hunderland
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=29835; -- Rafael Langrom
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=29836; -- Rueben Lauren
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=30685; -- Archmage Koreln
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=25955; -- Kizi Copperclip
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26335; -- Namha Moonwater
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26347; -- Ninsianna
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26375; -- Didi the Wrench
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26386; -- "Baroness" Llana
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=26464; -- Xazi Smolderpipe
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=27908; -- Kanika Goldwell
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=27909; -- Minzi the Minx
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=27912; -- Nixi Fireclaw
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=29921; -- Usuri Brightcoin
UPDATE `creature_model_info` SET `bounding_radius`=0.3068,`combat_reach`=1,`gender`=1 WHERE `modelid`=27616; -- Uda the Beast
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=27215; -- Violet Hold Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=27216; -- Violet Hold Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=27217; -- Violet Hold Guard
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1,`gender`=0 WHERE `modelid`=29076; -- Trapjaw Rix
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=21273; -- Dalaran Visitor
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=25644; -- Ranid Glowergold
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=26321; -- Bragund Brightlink
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=27332; -- Skybreaker Marine
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=27998; -- Brammold Deepmine
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=28000; -- Braeg Stoutbeard
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=28170; -- Dorfus Alphamage
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=0 WHERE `modelid`=29145; -- Dubin Clay
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=26299; -- Dagna Flintlock
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=27963; -- Laire Brewgold
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=27965; -- Coira Longrifle
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1,`gender`=1 WHERE `modelid`=29834; -- Matilda Brightlink
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=25618; -- Professor Pallin
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26078; -- Windle Sparkshine
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26300; -- Jepetto Joybuzz
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26374; -- Findle Whistlesteam
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=26437; -- Sheddle Glossgleam
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=27465; -- Warden Alturas
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28143; -- Babagahnoosh the Grumpy
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28144; -- Grindle Firespark
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28162; -- Arcanist Alec
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28167; -- Lofwyr Le'Fleur
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=28199; -- Bakor the Gangly
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=0 WHERE `modelid`=30358; -- Shandy Glossgleam
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=25602; -- Inzi Charmlight
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=25619; -- Linzy Blackbolt
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=26378; -- Lalla Brightweave
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28146; -- Emeline Fizzlefry
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28160; -- Bitty Frostflinger
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28165; -- Natalie Tootiblare
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28171; -- Joboba Mezbreaker
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1,`gender`=1 WHERE `modelid`=28432; -- Sarah Brady
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=27587; -- Officer Van Rossem
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=27592; -- Archmage Timear
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=1 WHERE `modelid`=28118; -- Mojodishu
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1,`gender`=0 WHERE `modelid`=27328; -- Kor'kron Reaver
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1,`gender`=0 WHERE `modelid`=28194; -- Willard Blauvelt
UPDATE `creature_model_info` SET `bounding_radius`=0.3817,`combat_reach`=1,`gender`=0 WHERE `modelid`=27154; -- Alliance Brigadier General
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25604; -- Caliel Brightwillow
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25610; -- Enchanter Nalthanis
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25806; -- Warcaster Fanoraithe
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25877; -- Valaden Silverblade
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=25882; -- Arille Azuregaze
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26067; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26068; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26072; -- Sunreaver Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=26443; -- Darahir
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27509; -- High Warlord Uro
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27559; -- Arcanist Adurin
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27800; -- Arcanist Braedin
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27801; -- Magister Surdiel
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=27949; -- Warmage Lukems
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28148; -- Fabioso the Fabulous
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28151; -- Dalaran Citizen
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28156; -- Archmage Tenaj
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28169; -- Metopious Loreseeker
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28198; -- Felcaster Virim
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28755; -- Arcanist Tybalin
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=28987; -- Arcanist Firael
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=29830; -- Enchanter Isian
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=30310; -- Silver Covenant Agent
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=30439; -- Sunreaver Agent
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=0 WHERE `modelid`=30842; -- Arcanist Uovril
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=15242; -- Defilers Emissary
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25594; -- Paldesse
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25603; -- Narisa Redgold
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25622; -- Olisarra the Kind
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25635; -- Ildine Sorrowspear
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25875; -- Aemara
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=25879; -- Karandonna
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26069; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26070; -- Silver Covenant Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26073; -- Sunreaver Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26074; -- Sunreaver Guardian Mage
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26330; -- Aimee
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26339; -- Imindril Spearsong
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=26441; -- Fialla Sweetberry
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=27556; -- Arcanist Ivrenne
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=27956; -- Isirami Fairwind
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28147; -- Darthalia Ebonscorch
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28152; -- Mona Everspring
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28153; -- Kitz Proudbreeze
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28163; -- Sabriana Sorrowgaze
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=28168; -- Goldlilly Gleamingfell
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=29832; -- Arcanist Miluria
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=30042; -- Kaye Toogie
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1,`gender`=1 WHERE `modelid`=30311; -- Silver Covenant Agent
UPDATE `creature_model_info` SET `bounding_radius`=0.385,`combat_reach`=1,`gender`=1 WHERE `modelid`=25005; -- Dreadsaber
UPDATE `creature_model_info` SET `bounding_radius`=0.3875,`combat_reach`=1,`gender`=0 WHERE `modelid`=28618; -- Unbound Seer
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1,`gender`=0 WHERE `modelid`=26376; -- Ainderu Summerleaf
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1,`gender`=0 WHERE `modelid`=28204; -- Mendez Nightshadow
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1,`gender`=0 WHERE `modelid`=30156; -- Daros Moonlance
UPDATE `creature_model_info` SET `bounding_radius`=0.3978,`combat_reach`=1,`gender`=0 WHERE `modelid`=26847; -- Dalaran Visitor
UPDATE `creature_model_info` SET `bounding_radius`=0.4,`combat_reach`=0,`gender`=2 WHERE `modelid`=26526; -- Cosmetic Mechanical Sheep
UPDATE `creature_model_info` SET `bounding_radius`=0.4,`combat_reach`=0,`gender`=2 WHERE `modelid`=9563; -- Worg Pup
UPDATE `creature_model_info` SET `bounding_radius`=0.4131,`combat_reach`=2,`gender`=0 WHERE `modelid`=16024; -- Rhonin
UPDATE `creature_model_info` SET `bounding_radius`=0.4185,`combat_reach`=1,`gender`=0 WHERE `modelid`=27820; -- Armored Brown Bear
UPDATE `creature_model_info` SET `bounding_radius`=0.4213,`combat_reach`=1,`gender`=0 WHERE `modelid`=19744; -- Archmage Lan'dalock
UPDATE `creature_model_info` SET `bounding_radius`=0.42228,`combat_reach`=2,`gender`=0 WHERE `modelid`=31713; -- Frozo the Renowned
UPDATE `creature_model_info` SET `bounding_radius`=0.4284,`combat_reach`=2,`gender`=0 WHERE `modelid`=30978; -- Spectral Footman
UPDATE `creature_model_info` SET `bounding_radius`=0.4284,`combat_reach`=2,`gender`=0 WHERE `modelid`=30981; -- Shadowy Mercenary
UPDATE `creature_model_info` SET `bounding_radius`=0.44045,`combat_reach`=1,`gender`=1 WHERE `modelid`=30686; -- Dark Ranger Vorel
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=0,`gender`=1 WHERE `modelid`=30867; -- Lady Jaina Proudmoore
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1,`gender`=2 WHERE `modelid`=28282; -- Brassbolt Mechawrench
UPDATE `creature_model_info` SET `bounding_radius`=0.4685,`combat_reach`=0,`gender`=2 WHERE `modelid`=26442; -- Clockwork Assistant
UPDATE `creature_model_info` SET `bounding_radius`=0.47875,`combat_reach`=1,`gender`=0 WHERE `modelid`=26770; -- Archmage Aethas Sunreaver
UPDATE `creature_model_info` SET `bounding_radius`=0.47875,`combat_reach`=1,`gender`=1 WHERE `modelid`=28222; -- Vereesa Windrunner
UPDATE `creature_model_info` SET `bounding_radius`=0.4858,`combat_reach`=2,`gender`=0 WHERE `modelid`=30980; -- Tortured Rifleman
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=0,`gender`=0 WHERE `modelid`=4449; -- Imp
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Dalaran Fountain Invis Stalker
UPDATE `creature_model_info` SET `bounding_radius`=0.5355,`combat_reach`=2,`gender`=0 WHERE `modelid`=30821; -- Uther the Lightbringer
UPDATE `creature_model_info` SET `bounding_radius`=0.5362,`combat_reach`=2,`gender`=0 WHERE `modelid`=30979; -- Ghostly Priest
UPDATE `creature_model_info` SET `bounding_radius`=0.5392,`combat_reach`=1,`gender`=2 WHERE `modelid`=1041; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=0.54,`combat_reach`=0,`gender`=2 WHERE `modelid`=20833; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=0.59823,`combat_reach`=2,`gender`=1 WHERE `modelid`=27917; -- Gold Warrior
UPDATE `creature_model_info` SET `bounding_radius`=0.6,`combat_reach`=0,`gender`=2 WHERE `modelid`=27681; -- Cosmetic Pig
UPDATE `creature_model_info` SET `bounding_radius`=0.6,`combat_reach`=1,`gender`=2 WHERE `modelid`=12200; -- Segacedi
UPDATE `creature_model_info` SET `bounding_radius`=0.60725,`combat_reach`=3,`gender`=2 WHERE `modelid`=1988; -- Grove Walker
UPDATE `creature_model_info` SET `bounding_radius`=0.6324,`combat_reach`=2,`gender`=0 WHERE `modelid`=27919; -- Green Warrior
UPDATE `creature_model_info` SET `bounding_radius`=0.6511,`combat_reach`=2,`gender`=0 WHERE `modelid`=27930; -- Green Paladin
UPDATE `creature_model_info` SET `bounding_radius`=0.6721,`combat_reach`=1,`gender`=2 WHERE `modelid`=31094; -- Arcturis
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=0,`gender`=2 WHERE `modelid`=26064; -- Scourge Haunt
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=1,`gender`=0 WHERE `modelid`=27766; -- [DND] Dalaran Sewer Arena - Controller
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=1,`gender`=2 WHERE `modelid`=17612; -- Frostmourne Altar Bunny (Quel'Delar)
UPDATE `creature_model_info` SET `bounding_radius`=0.765,`combat_reach`=3,`gender`=0 WHERE `modelid`=30972; -- Falric
UPDATE `creature_model_info` SET `bounding_radius`=0.765,`combat_reach`=3,`gender`=0 WHERE `modelid`=30973; -- Marwyn
UPDATE `creature_model_info` SET `bounding_radius`=0.8,`combat_reach`=0,`gender`=2 WHERE `modelid`=27700; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=0.8725,`combat_reach`=3,`gender`=0 WHERE `modelid`=28183; -- Hunaka Greenhoof
UPDATE `creature_model_info` SET `bounding_radius`=0.9,`combat_reach`=1,`gender`=2 WHERE `modelid`=14255; -- Felguard
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4,`gender`=0 WHERE `modelid`=28207; -- Tuff Gorehoof
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4,`gender`=0 WHERE `modelid`=29820; -- Sorn Proudmane
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=1,`gender`=0 WHERE `modelid`=10957; -- Dappled Stag
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=1,`gender`=2 WHERE `modelid`=27726; -- Stabled Hunter Pet
UPDATE `creature_model_info` SET `bounding_radius`=1.1,`combat_reach`=1,`gender`=2 WHERE `modelid`=26532; -- Cosmetic Mechanical Squirrel
UPDATE `creature_model_info` SET `bounding_radius`=1.122,`combat_reach`=0,`gender`=2 WHERE `modelid`=368; -- Black Widow Hatchling
UPDATE `creature_model_info` SET `bounding_radius`=1.18065,`combat_reach`=2,`gender`=2 WHERE `modelid`=833; -- Underbelly Croc
UPDATE `creature_model_info` SET `bounding_radius`=1.2,`combat_reach`=0,`gender`=0 WHERE `modelid`=24235; -- Sinewy Wolf
UPDATE `creature_model_info` SET `bounding_radius`=1.3,`combat_reach`=1,`gender`=2 WHERE `modelid`=134; -- Squirrel
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=0,`gender`=0 WHERE `modelid`=22003; -- Nargut
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=0,`gender`=0 WHERE `modelid`=27019; -- Rhukah
UPDATE `creature_model_info` SET `bounding_radius`=1.7,`combat_reach`=2,`gender`=1 WHERE `modelid`=27931; -- Gold Shaman
UPDATE `creature_model_info` SET `bounding_radius`=2.75,`combat_reach`=5,`gender`=0 WHERE `modelid`=30721; -- The Lich King

-- Template addon updates
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=1412; -- Squirrel
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=14881; -- Spider
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=14990; -- Defilers Emissary
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=14991; -- League of Arathor Emissary
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=17213; -- Broom
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=32642; -- Mojodishu
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=4075; -- Rat
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=721; -- Rabbit
UPDATE `creature_template_addon` SET `bytes1`=3,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=31885; -- Rhukah
UPDATE `creature_template_addon` SET `bytes1`=3,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=31886; -- Nargut
DELETE FROM `creature_transport` WHERE `transport_entry`=192242 AND `npc_entry`=31261;
INSERT INTO `creature_transport` (`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(192242,31261,-46.16626,12.04395,13.22064,1.437376,0); -- Brother Keltan abord the Skybreaker
UPDATE `creature` SET `id`=15105 WHERE `guid` BETWEEN 208382 AND 208393 AND `id`=15102;
-- Spawn Missing Argent Crusaders
-- Redid Exisiting to make Adding simpler
SET @GUID=54706;
DELETE FROM `creature` WHERE id IN (28029,28026);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(107427,28029,571,1,1,26231,0,5514,-2398.25,292.502,1.5708,300,0,0,9572,3561,0,0,0,0,0),
(107428,28029,571,1,1,26228,0,5485.95,-2500.14,292.433,0.934353,300,0,0,9572,3561,0,0,0,0,0),
(107429,28029,571,1,1,26229,0,5495.16,-2439.33,292.498,5.44414,300,0,0,9572,3561,0,0,0,0,0),
(107430,28029,571,1,1,26230,0,5490.07,-2495.2,292.429,3.93988,300,0,0,9572,3561,0,0,0,0,0),
(107431,28029,571,1,1,26230,0,5496.85,-2383.57,292.502,2.30383,300,0,0,9572,3561,0,0,0,0,0),
(@GUID+0,28029,571,1,1,0,0,5442.812,-2554.325,297.783,1.554819,300,0,0,1,1,0,0,0,0,0),
(@GUID+1,28029,571,1,1,0,0,5451.548,-2516.311,292.445,0.1570796,300,0,0,1,1,0,0,0,0,0),
(@GUID+2,28029,571,1,1,0,0,5445.436,-2513.325,292.5019,1.64061,300,0,0,1,1,0,0,0,0,0),
(@GUID+3,28029,571,1,1,0,0,5384.553,-2402.976,292.5019,0.8726646,300,0,0,1,1,0,0,0,0,0),
(@GUID+4,28029,571,1,1,0,0,5386.06,-2421.43,292.5019,1.53589,300,0,0,1,1,0,0,0,0,0),
(@GUID+5,28029,571,1,1,0,0,5383.483,-2472.9,292.5019,1.570796,300,0,0,1,1,0,0,0,0,0),
(@GUID+6,28029,571,1,1,0,0,5400.021,-2448.991,292.5019,2.321288,300,0,0,1,1,0,0,0,0,0),
(@GUID+7,28029,571,1,1,0,0,5369.318,-2443.405,292.5019,0.9424778,300,0,0,1,1,0,0,0,0,0),
(@GUID+8,28029,571,1,1,0,0,5409.107,-2361.323,292.5019,0.6283185,300,0,0,1,1,0,0,0,0,0),
(@GUID+9,28029,571,1,1,0,0,5464.651,-2496.451,292.5019,1.48353,300,0,0,1,1,0,0,0,0,0),
(@GUID+10,28029,571,1,1,0,0,5435.183,-2513.578,292.445,0.918852,300,0,0,1,1,0,0,0,0,0),
(@GUID+11,28029,571,1,1,0,0,5400.03,-2506.189,292.5019,1.553343,300,0,0,1,1,0,0,0,0,0),
(@GUID+12,28029,571,1,1,0,0,5450.897,-2457.951,292.5019,1.553343,300,0,0,1,1,0,0,0,0,0),
-- rampaging Geist
(107193,28026,571,1,1,25286,0,5497.21,-2080.43,240.865,0.857485,300,5,0,10635,0,0,1,0,0,0),
(107194,28026,571,1,1,25402,0,5511.68,-2358.28,292.441,2.71292,300,5,0,10635,0,0,1,0,0,0),
(107195,28026,571,1,1,25402,0,5512.46,-2455.17,292.424,2.97264,300,5,0,10635,0,0,1,0,0,0),
(107196,28026,571,1,1,25286,0,5519.86,-2423.45,292.473,3.83817,300,5,0,10635,0,0,1,0,0,0),
(107197,28026,571,1,1,25286,0,5488.13,-2497.19,292.429,3.93989,300,5,0,10635,0,0,1,0,0,0),
(32067,28026,571,1,1,0,0,5429.262,-2486.59,292.5296,2.737376,300,5,0,10635,0,0,1,0,0,0),
(32068,28026,571,1,1,0,0,5408.888,-2479.563,292.5296,0.7370623,300,5,0,10635,0,0,1,0,0,0),
(32070,28026,571,1,1,0,0,5419.276,-2505.731,292.5433,4.015942,300,5,0,10635,0,0,1,0,0,0),
(32071,28026,571,1,1,0,0,5384.713,-2463.133,292.843,2.721308,300,5,0,10635,0,0,1,0,0,0),
(32073,28026,571,1,1,0,0,5383.064,-2413.345,292.5399,6.069617,300,5,0,10635,0,0,1,0,0,0),
(32074,28026,571,1,1,0,0,5394.180,-2442.885,292.468,2.731286,300,5,0,10635,0,0,1,0,0,0),
(518,28026,571,1,1,0,0,5452.489,-2447.378,292.5435,0.3663993,300,5,0,10635,0,0,1,0,0,0);

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (28029,28026);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28029,0,0,1,375, NULL), -- Argent Crusader
(28026,0,0,1,0, NULL); -- Rampaging Geist
-- Update Vile Familiars, Burning Blade Medallion and Report to Sen'jin Village required races (Horde)
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (792,794,805);
-- Battle to Undercity should be turned in to Bragor Bloodfist
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (14351,550);
DELETE FROM `creature_questrelation` WHERE `quest` IN (14351,550);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES (36273,14351);
DELETE FROM `gameobject_template` WHERE `entry`=300149;
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`AIName`,`ScriptName`,`WDBVerified`) VALUES
(300149,8,1287, 'TEMP Wrathscale Lair Fountain', '', '', '',0,0,1,0,0,0,0,0,0,223,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '', '',1);

-- NEEDS VISUAL (apart form Ruins of Stardust, its MISSING!)
DELETE FROM `gameobject` WHERE `id`=300149;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(1160,300149,530,1,1,-2186.4,-12340.5,56.2888,5.31,0,0,0.121294,-0.992617,-300,0,1);
-- create missing spawns:
SET @GUID := 151895; -- SET BY TDB

DELETE FROM `creature` WHERE `id`IN(18695,18697,18689,18686,18698,18678,17144,18692,18677,18693,18683,18679);
INSERT INTO creature
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`)
VALUES
-- Ambassador Jerrikar
(@GUID,18695,530,1,1,0,0,-4455.05,1694.55,161.278,1.93093,28800,0,0,13522,0,0,0),
(@GUID+1,18695,530,1,1,0,0,-4203.43,344.462,115.416,4.161,28800,0,0,13522,0,0,0),
(@GUID+2,18695,530,1,1,0,0,-3815.24,2689.31,100.581,5.38433,28800,5,0,13522,0,0,1),
(@GUID+3,18695,530,1,1,0,0,-3082.38,1867.38,139.906,1.53194,28800,5,0,13522,0,0,1),
(@GUID+4,18695,530,1,1,0,0,-3076.35,1020.61,-2.88056,3.73969,28800,5,0,13522,0,0,1),
-- Chief Engineer Lorthander
(@GUID+5,18697,530,1,1,0,0,4092.53,4001.75,117.282,4.650480,28800,0,0,10818,15400,0,0),
(@GUID+6,18697,530,1,1,0,0,2293.31,2821.12,130.917,4.422730,28800,5,0,10818,15400,0,1),
(@GUID+7,18697,530,1,1,0,0,2954.82,2147.42,165.328,0.753333,28800,5,0,10818,15400,0,1),
-- Crippler
(@GUID+8,18689,530,1,1,0,0,-3005.68,5037.76,-23.7032,4.12334,28800,30,0,11828,0,0,1), -- only have one for him :(
-- Doomsayer Jurim
(@GUID+9,18686,530,1,1,0,0,-2537.44,5147.04,9.05971,5.82974,28800,0,0,9144,13525,0,0),
(@GUID+10,18686,530,1,1,0,0,-1874.09,4663.57,10.9095,3.87017,28800,5,0,9144,13525,0,1),
(@GUID+11,18686,530,1,1,0,0,-2172.31,4091.34,3.00316,4.21182,28800,5,0,9144,13525,0,1),
(@GUID+12,18686,530,1,1,0,0,-3001.44,3297.82,0.537389,4.35947,28800,5,0,9144,13525,0,1),
(@GUID+13,18686,530,1,1,0,0,-3540.43,4051.46,66.3999,2.6905,28800,5,0,9144,13525,0,1),
-- Ever-Core the Punisher
(@GUID+14,18698,530,1,1,0,0,3014.36,4025.81,144.105,2.90805,28800,5,0,10466,5982,0,1),
(@GUID+15,18698,530,1,1,0,0,3835.65,3835.2,103.641,5.80224,28800,5,0,10466,5982,0,1),
(@GUID+16,18698,530,1,1,0,0,4824.65,2738.08,88.9073,0.75999,28800,5,0,10466,5982,0,1),
(@GUID+17,18698,530,1,1,0,0,4113.73,1677.64,130.749,0.237701,28800,5,0,10466,5982,0,1),
-- Fulgorge (should be 3 i think)
(@GUID+18,18678,530,1,1,0,0,-565.303,4343,49.9107,6.05994,28800,0,0,10682,0,0,0),
(@GUID+19,18678,530,1,1,0,0,-632.339,3908.47,28.9953,4.74599,28800,0,0,10682,0,0,0),
(@GUID+38,18678,530,1,1,0,0,-634.201,3795.52,28.99509,1.162743,28800,0,0,10682,0,0,0),
-- Goretooth
(@GUID+20,17144,530,1,1,0,0,-1762.6,8066.57,-104.023,1.86887,28800,0,0,11828,0,0,0),
(@GUID+21,17144,530,1,1,0,0,-1840.51,8450.93,-64.6652,4.69754,28800,0,0,11828,0,0,0),
(@GUID+22,17144,530,1,1,0,0,-1025.68,7114.78,2.37478,0.256121,28800,0,0,11828,0,0,0),
(@GUID+23,17144,530,1,1,0,0,-2876.55,6078.57,-4.24251,1.15226,28800,0,0,11828,0,0,0),
-- Hemathion
(@GUID+24,18692,530,1,1,0,0,2116.26,7250.19,365.147,2.86924,28800,0,0,13084,0,0,0),
(@GUID+25,18692,530,1,1,0,0,2699.59,7237.5,366.064,3.30389,28800,0,0,13084,0,0,0),
-- Mekthorg the Wild
(@GUID+26,18677,530,1,1,0,0,-575.456,3240.77,5.76784,4.69623,28800,0,0,10316,0,0,0),
(@GUID+27,18677,530,1,1,0,0,-1084.3,2014.46,67.6811,0.947525,28800,5,0,10316,0,0,1),
-- Speaker Mar'grom
(@GUID+28,18693,530,1,1,0,0,2365.59,6544.67,3.4638,1.66658,28800,0,0,10466,8973,0,0),
(@GUID+29,18693,530,1,1,0,0,1599.44,6433.12,-10.4082,0.215986,28800,0,0,10466,8973,0,0),
(@GUID+30,18693,530,1,1,0,0,1607.56,6423.05,-10.3477,0.577269,28800,5,0,10466,8973,0,1),
(@GUID+31,18693,530,1,1,0,0,2915.68,6000.98,-4.1535,4.87572,28800,5,0,10466,8973,0,1),
(@GUID+32,18693,530,1,1,0,0,3636.49,5349.23,-20.7,4.57491,28800,5,0,10466,8973,0,1),
-- Voidhunter Yar (1 spawn. circular pathing)
(@GUID+33,18683,530,1,1,0,0,-2422.61,8206.15,-38.3408,0.177212,28800,0,0,10466,11964,0,0),
-- Vorakem Doomspeaker
(@GUID+34,18679,530,1,1,0,0,175.918,1720.29,34.4088,3.26023,28800,0,0,8548,2568,0,0),
(@GUID+35,18679,530,1,1,0,0,-444.675,1851.37,78.3747,5.77743,28800,5,0,8548,2568,0,1),
(@GUID+36,18679,530,1,1,0,0,399.416,2204.89,118.365,0.918177,28800,5,0,8548,2568,0,1),
(@GUID+37,18679,530,1,1,0,0,362.142,3354.43,64.1364,1.86458,28800,5,0,8548,2568,0,1);

-- DefiningPooling_templates
DELETE FROM `pool_template` WHERE `entry` BETWEEN 1073 AND 1085;
INSERT INTO pool_template (`entry`,`max_limit`,`description`) VALUES
(1073,1, 'Okrek Rare Spawn (1 out 4)'),
(1074,1, 'Ambassador Jerrikar Rare Spawn (1 out 5)'),
(1075,1, 'Okrek Rare Spawn (1 out 3)'),
(1076,1, 'Crippler Rare Spawn (1 out 1)'),
(1077,1, 'Doomsayer Jurim Rare Spawn (1 out 5)'),
(1078,1, 'Ever-Core the Punisher Rare Spawn (1 out 4)'),
(1079,1, 'Fulgore Rare Spawn (1 out 3)'),
(1080,1, 'Goretooth Rare Spawn (1 out 4)'),
(1081,1, 'Hemathion Rare Spawn (1 out 2)'),
(1082,1, 'Mekthorg the Wild Rare Spawn (1 out 2)'),
(1083,1, 'Speaker Margrom Rare Spawn (1 out 5)'),
(1084,1, 'Voidhunter Yar Rare Spawn (1 out 1)'),
(1085,1, 'Vorakem Doomspeaker Rare Spawn (1 out 4)');

-- Pooling the Spawns
DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 1073 AND 1085;
INSERT INTO pool_creature(`guid`,`pool_entry`,`chance`,`description`) VALUES
(85382,1073,25, 'Okrek - Spawnlocation 1'),
(85405,1073,25, 'Okrek - Spawnlocation 2'),
(85564,1073,25, 'Okrek - Spawnlocation 3'),
(85565,1073,25, 'Okrek - Spawnlocation 4'),
(@GUID,1074,20, 'Ambassador Jerrikar - Spawnlocation 1'),
(@GUID+1,1074,20, 'Ambassador Jerrikar - Spawnlocation 2'),
(@GUID+2,1074,20, 'Ambassador Jerrikar - Spawnlocation 3'),
(@GUID+3,1074,20, 'Ambassador Jerrikar - Spawnlocation 4'),
(@GUID+4,1074,20, 'Ambassador Jerrikar - Spawnlocation 5'),
(@GUID+5,1075,33, 'Chief Engineer Lorthander - Spawnlocation 1'),
(@GUID+6,1075,33, 'Chief Engineer Lorthander - Spawnlocation 2'),
(@GUID+7,1075,34, 'Chief Engineer Lorthander - Spawnlocation 3'),
(@GUID+8,1076,100, 'Crippler - Spawnlocation 1'),
(@GUID+9,1077,20, 'Doomsayer Jurim Spawnlocation 1'),
(@GUID+10,1077,20, 'Doomsayer Jurim Spawnlocation 2'),
(@GUID+11,1077,20, 'Doomsayer Jurim Spawnlocation 3'),
(@GUID+12,1077,20, 'Doomsayer Jurim Spawnlocation 4'),
(@GUID+13,1077,20, 'Doomsayer Jurim Spawnlocation 5'),
(@GUID+14,1078,25, 'Ever-Core the Punisher Spawnlocation 1'),
(@GUID+15,1078,25, 'Ever-Core the Punisher Spawnlocation 2'),
(@GUID+16,1078,25, 'Ever-Core the Punisher Spawnlocation 3'),
(@GUID+17,1078,25, 'Ever-Core the Punisher Spawnlocation 4'),
(@GUID+18,1079,33, 'Fulgore Spawnlocation 1'),
(@GUID+19,1079,33, 'Fulgore Spawnlocation 2'),
(@GUID+38,1079,33, 'Fulgore Spawnlocation 2'),
(@GUID+20,1080,25, 'Goretooth Spawnlocation 1'),
(@GUID+21,1080,25, 'Goretooth Spawnlocation 2'),
(@GUID+22,1080,25, 'Goretooth Spawnlocation 3'),
(@GUID+23,1080,25, 'Goretooth Spawnlocation 4'),
(@GUID+24,1081,50, 'Hemathion Spawnlocation 1'),
(@GUID+25,1081,50, 'Hemathion Spawnlocation 2'),
(@GUID+26,1082,50, 'Mekthorg the Wild Spawnlocation 1'),
(@GUID+27,1082,50, 'Mekthorg the Wild Spawnlocation 2'),
(@GUID+28,1083,20, 'Speaker Margrom Spawnlocation 1'),
(@GUID+29,1083,20, 'Speaker Margrom Spawnlocation 2'),
(@GUID+30,1083,20, 'Speaker Margrom Spawnlocation 3'),
(@GUID+31,1083,20, 'Speaker Margrom Spawnlocation 4'),
(@GUID+32,1083,20, 'Speaker Margrom Spawnlocation 5'),
(@GUID+33,1084,100, 'Voidhunter Yar Spawnlocation 1'),
(@GUID+34,1085,25, 'Vorakem Doomspeaker Spawnlocation 1'),
(@GUID+35,1085,25, 'Vorakem Doomspeaker Spawnlocation 2'),
(@GUID+36,1085,25, 'Vorakem Doomspeaker Spawnlocation 3'),
(@GUID+37,1085,25, 'Vorakem Doomspeaker Spawnlocation 4');

-- Chief Engineer Lorthander (sniffed)
SET @EquiEntry = 1807; -- (creature_equip_template.entry - need 1)
UPDATE `creature_template` SET `faction_A`=1701,`faction_H`=1701,`equipment_id`=@EquiEntry,`speed_walk`=1 WHERE `entry`=18697;
DELETE FROM `creature_equip_template` WHERE `entry`=@EquiEntry;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@EquiEntry,31301,32768,0);
DELETE FROM `creature_template_addon` WHERE `entry`=18697;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(18697,0,0,1,0, NULL);
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=10404; -- Pustulating Horror 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=34606; -- Frost Sphere
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36724; -- Servant of the Throne
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36725; -- Nerub'ar Broodkeeper
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36805; -- Deathspeaker Servant
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36807; -- Deathspeaker Disciple
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36808; -- Deathspeaker Zealot
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36811; -- Deathspeaker Attendant
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36829; -- Deathspeaker High Priest
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36839; -- Horde Gunship Cannon
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36844; -- Risen Deathspeaker Servant
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36998; -- Skybreaker Protector
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37003; -- Skybreaker Vindicator
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37004; -- Skybreaker Dreadblade
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37007; -- Deathbound Ward
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37011; -- The Damned
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37012; -- Ancient Skeletal Soldier
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37016; -- Skybreaker Luminary
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37017; -- Skybreaker Assassin
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37021; -- Skybreaker Vicar
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37027; -- Skybreaker Hierophant
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37030; -- Kor'kron Primalist
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37031; -- Kor'kron Oracle
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37032; -- Kor'kron Defender
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37033; -- Kor'kron Invoker
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37035; -- Kor'kron Vanquisher
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37144; -- Skybreaker Marksman
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37146; -- Kor'kron Sniper
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37148; -- Skybreaker Summoner
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37149; -- Kor'kron Necrolyte
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37230; -- Spire Frostwyrm
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37544; -- Spire Gargoyle
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37545; -- Spire Minion
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37546; -- Frenzied Abomination
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36880; -- Decaying Colossus
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36897; -- Little Ooze
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36899; -- Big Ooze
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37022; -- Blighted Abomination
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37023; -- Plague Scientist
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37025; -- Stinky
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37038; -- Vengeful Fleshreaper
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37098; -- Val'kyr Herald
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37217; -- Precious
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37571; -- Darkfallen Advisor
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37595; -- Darkfallen Blood Knight
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37662; -- Darkfallen Commander
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37663; -- Darkfallen Noble
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37664; -- Darkfallen Archmage
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37665; -- Darkfallen Lieutenant
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37666; -- Darkfallen Tactician
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37782; -- Flesh-eating Insect
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37901; -- Vampiric Fiend
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38104; -- Plagued Zombie
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38410; -- Severed Essence
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37034; -- Kor'kron Templar
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37501; -- Nerub'ar Champion
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37502; -- Nerub'ar Webweaver
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38184; -- Corrupted Ymirjar
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37232; -- Nerub'ar Broodling
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36990; -- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37068; -- Spiritual Reflection
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37107; -- Spiritual Reflection
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37920; -- Kor'kron Reaver
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38456; -- Frozen Orb

-- Delete all the fake/temp diffentry templates
DELETE FROM `creature_template` WHERE `entry` BETWEEN 3460602 AND 3845601 OR `entry` IN (1040402,1040403);
DELETE FROM `creature_loot_template` WHERE `entry` IN (3672402,3672403,3672502,3672503,3680502,3680503,3680702,3680703,3680802,3680803,3681102,3681103,3682902,3682903,3688002,3688003,3699802,3699803,3700302,3700303,3700402,3700403,3700702,3700703,3701102,3701103,3701202,3701203,3701602,3701603,3701702,3701703,3702102,3702103,3702202,3702203,3702302,3702303,3702502,3702503,3702702,3702703,3703002,3703003,3703102,3703103,3703202,3703203,3703302,3703303,3703402,3703403,3703502,3703503,3703802,3703803,3709802,3709803,3714402,3714403,3714602,3714603,3714802,3714803,3714902,3714903,3721702,3721703,3723002,3723003,3750102,3750103,3750202,3750203,3754402,3754403,3754502,3754503,3754602,3754603,3757102,3757103,3759502,3759503,3766202,3766203,3766302,3766303,3766402,3766403,3766502,3766503,3766602,3766603);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` BETWEEN 3460602 AND 3845601 OR `creature_id` IN (1040402,1040403);
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
SET @ICC_TrashGenericPurple := @ICC_TrashGenericGrey+11;

DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @ICC_TrashGenericGrey AND @ICC_TrashGenericGrey+11; 
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
-- purple items icc (7)
(@ICC_TrashGenericPurpleICC,50444,0,1,1,1,1), -- Rowan's Rifle of Silver Bullets
(@ICC_TrashGenericPurpleICC,50451,0,1,1,1,1), -- Belt of the Lonely Noble
(@ICC_TrashGenericPurpleICC,50450,0,1,1,1,1), -- Leggings of Dubious Charms
(@ICC_TrashGenericPurpleICC,50449,0,1,1,1,1), -- Stiffened Corpse Shoulderpads
(@ICC_TrashGenericPurpleICC,50453,0,1,1,1,1), -- Ring of Rotting Sinew
(@ICC_TrashGenericPurpleICC,50447,0,1,1,1,1), -- Harbinger's Bone Band
(@ICC_TrashGenericPurpleICC,50452,0,1,1,1,1), -- Wodin's Lucky Necklace
-- Generic World Epics
(@ICC_TrashGenericPurple,44311,0,1,1,1,1), -- Avool's Sword of Jin
(@ICC_TrashGenericPurple,37835,0,1,1,1,1), -- Je'Tze's Bell
(@ICC_TrashGenericPurple,44310,0,1,1,1,1), -- Namlak's Supernumerary Sticker
(@ICC_TrashGenericPurple,44309,0,1,1,1,1), -- Sash of Jordan
(@ICC_TrashGenericPurple,44308,0,1,1,1,1), -- Signet of Edward the Odd
(@ICC_TrashGenericPurple,37254,0,1,1,1,1), -- Super Simian Sphere
(@ICC_TrashGenericPurple,44312,0,1,1,1,1), -- Wapach's Spaulders of Solidarity
(@ICC_TrashGenericPurple,44313,0,1,1,1,1), -- Zom's Crackling Bulwark
-- purple items dungeon_N (4)
(@ICC_TrashGenericPurpleDUNN,49852,0,1,1,1,1), -- Coffin Nail
(@ICC_TrashGenericPurpleDUNN,49855,0,1,1,1,1), -- Plated Grips of Korth'azz
(@ICC_TrashGenericPurpleDUNN,49853,0,1,1,1,1), -- Titanium Links of Lore
(@ICC_TrashGenericPurpleDUNN,49854,0,1,1,1,1), -- Mantle of Tattered Feathers
-- purple items dungeon_H (3)
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
(@ICC_TrashCitadelFinal,7,2,1,0,-@ICC_TrashGenericPurpleICC,1), -- 1 purple icc loot (2%)
(@ICC_TrashCitadelFinal,8,1,1,0,-@ICC_TrashGenericPurple,1), -- 1 purple world loot (1%)
-- final output dungeon_n
(@ICC_TrashDungeonNFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonNFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonNFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashDungeonNFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashDungeonNFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashDungeonNFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashDungeonNFinal,7,2,1,0,-@ICC_TrashGenericPurpleDUNN,1), -- 1 purple dungeon loot (2%)
(@ICC_TrashDungeonNFinal,8,1,1,0,-@ICC_TrashGenericPurple,1), -- 1 purple world loot (1%)
-- final output dungeon_h
(@ICC_TrashDungeonHFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonHFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonHFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashDungeonHFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashDungeonHFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashDungeonHFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashDungeonHFinal,7,2,1,0,-@ICC_TrashGenericPurpleDUNH,1), -- 1 purple heroicdungeon loot (1%)
(@ICC_TrashDungeonHFinal,8,1,1,0,-@ICC_TrashGenericPurple,1); -- 1 purple world loot (1%)


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
-- Jean Pierre Poulain SAI
SET @ENTRY  := 34244;
SET @GOSSIP := 10478;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,64795,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Jean Pierre Poulain - On gossip option select - cast spell');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (1047800);

-- Fizzcrank Fullthrottle SAI
SET @ENTRY  := 25590;
SET @GOSSIP := 9182;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,15,11708,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Fullthrottle - On gossip option select - quest complete'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Fullthrottle - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (918200);

-- Keeper Remulos SAI
SET @ENTRY  := 11832;
SET @GOSSIP := 10215;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,57413,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - cast spell'),
(@ENTRY,0,1,2,62,0,100,0,@GOSSIP,1,0,0,11,57670,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - cast spell'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (1021500,1021501);

-- Fizzcrank Recon Pilot SAI
SET @ENTRY  := 25841;
SET @GOSSIP := 21248;
SET @SCRIPT := 212481;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,46362,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On gossip option select - close gossip'),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spawn - set gossip flag'),
(@ENTRY,0,3,4,8,0,100,0,46362,0,0,0,11,46362,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spellhit - cast spell on envoker'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spellhit - set phase 1'),
(@ENTRY,0,5,0,1,1,100,0,3000,3000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - OOC - wait 3 sec despawn (Phase 1)');
-- Cleanup EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;

-- Glodrak Huntsniper SAI
SET @ENTRY  := 24657;
SET @GOSSIP := 10603;
SET @SCRIPT := 1060400;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,66592,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Glodrak Huntsniper - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Glodrak Huntsniper - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;
-- Goldark Snipehunter SAI
SET @ENTRY  := 23486;
SET @GOSSIP := 10604;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,66592,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Goldark Snipehunter - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Goldark Snipehunter - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;

-- Pol Amberstill & Driz Tumblequick SAI
SET @ENTRY   := 24468;
SET @ENTRY1  := 24510;
SET @GOSSIP  := 8958;
SET @GOSSIP1 := 8960;
SET @SCRIPT  := 895800;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (@ENTRY,@ENTRY1);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Pol Amberstill
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,6,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - close gossip'),
(@ENTRY,0,2,3,62,0,100,0,@GOSSIP1,0,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - cast spell'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - close gossip'),
-- Driz Tumblequick
(@ENTRY1,0,0,1,62,0,100,0,@GOSSIP,6,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - cast spell'),
(@ENTRY1,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - close gossip'),
(@ENTRY1,0,2,3,62,0,100,0,@GOSSIP1,0,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - cast spell'),
(@ENTRY1,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - close gossip');
-- Ckeanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=6;
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP1 AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;

-- Steel Gate Chief Archaeologist SAI
SET @ENTRY  := 24399;
SET @GOSSIP := 8953;
SET @SCRIPT := 895300;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,43533,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;

-- Drakuru SAI
SET @ENTRY := 26423;
SET @GOSSIP := 21249;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,33,27921,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Drakuru - On gossip option select - killcredit'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Drakuru - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@GOSSIP;

-- Dread Captain DeMeza SAI
SET @ENTRY := 28048;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,9647,0,0,0,11,50517,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Dread Captain DeMeza - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Dread Captain DeMeza - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=9647 AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=9647;
-- Scourge Deathspeaker SAI 
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=27615;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=27615;
DELETE FROM `smart_scripts` WHERE `entryorguid`=27615;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27615,0,0,1,1,0,100,1,1000,1000,1000,1000,11,49119,2,0,0,0,0,10,101497,27452,0,0,0,0,0,'Scourge Deathspeaker - Spawn & reset - channel Fire Beam'),
(27615,0,1,0,61,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - Spawn & reset - Prevent Combat Movement'),
(27615,0,2,3,4,0,100,1,0,0,0,0,11,52282,2,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - On aggro - Cast Fireball'),
(27615,0,3,0,61,0,100,1,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - On aggro - Set phase 1'),
(27615,0,4,0,9,1,100,0,3000,3000,3400,4800,11,52282,1,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - in combat - Cast Fireball (phase 1)'),
(27615,0,5,0,9,1,100,0,35,80,1000,1000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 35 Yards - Start Combat Movement (phase 1)'),
(27615,0,6,0,9,1,100,0,5,15,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15 Yards - Prevent Combat Movement (phase 1)'),
(27615,0,7,0,9,1,100,0,0,5,1000,1000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - Below 5 Yards - Start Combat Movement (phase 1)'),
(27615,0,8,0,3,1,100,1,0,7,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - Mana at 7% - Set Phase 2 (phase 1)'),
(27615,0,9,0,0,2,100,1,0,0,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - In combat - Allow Combat Movement (phase 2)'),
(27615,0,10,0,3,2,100,1,15,100,100,100,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - Mana above 15% - Set Phase 1 (phase 2)'),
(27615,0,11,0,2,0,100,1,0,30,120000,130000,11,52281,0,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Cast Flame of the Seer'),
(27615,0,12,0,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Set Phase 3'),
(27615,0,13,0,2,4,100,1,0,15,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Allow Combat Movement (phase 3)'),
(27615,0,14,15,2,4,100,1,0,15,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Flee (phase 3)'),
(27615,0,15,0,61,4,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scourge Deathspeaker - At 15% HP - Say text0 (Phase 3)');

-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry` IN (27615);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27615,0,0, '%s attempts to run away in fear!',2,0,100,0,0,0, 'Scourge Deathspeaker');

-- SET InhabitType for Invisible Stalker Grizzly Hills
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=27452;

-- SAI for Dark Conclave Ritualist
SET @ENTRY := 22138;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,38469,0,0,0,0,0,19,22139,0,0,0,0,0,0,'Dark Conclave Ritualist - OOC - Dark Conclave Ritualist Channel');

-- Shattered Sun Marksman fixup (tested) 
-- Console no longer spamming waypoint script errors in The Dawning Square
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=24938;
-- Shattered Sun Marksman shoot at Bridge Marksman Target Dummy SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65694,-65695,-65696,-65697,-65698,-65699,-65700,-65702);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-65694,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,62844,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65695,0,0,0,1,0,100,0,2000,2000,5000,7000,11,45223,0,0,0,0,0,10,62844,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65696,0,0,0,1,0,100,0,3000,3000,5000,7000,11,45223,0,0,0,0,0,10,62843,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65697,0,0,0,1,0,100,0,6000,6000,5000,7000,11,45223,0,0,0,0,0,10,62843,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65698,0,0,0,1,0,100,0,2000,2000,5000,7000,11,45223,0,0,0,0,0,10,59515,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65699,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,62841,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65700,0,0,0,1,0,100,0,1000,1000,5000,7000,11,45223,0,0,0,0,0,10,62842,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65702,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,59473,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
-- Remove path data and scripts from Shattered Sun Marksman
DELETE FROM `waypoint_data` WHERE `id` IN (656940,656950,656960,656970,656980,656990,657000,657020);
DELETE FROM `waypoint_scripts` WHERE `id` BETWEEN 80 AND 111;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid` IN (65694,65695,65696,65697,65698,65699,65700,65702);
UPDATE `creature_addon` SET `path_id`=0 WHERE `guid` IN (65694,65695,65696,65697,65698,65699,65700,65702);

-- Fix Spell condition for Spell 45223 to target Bridge Marksman Target Dummy 25192 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=45223;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,45223,0,18,1,25192,0,0,'','Spell 45223 targets Bridge Marksman Target Dummy');
-- Quest 10895 "Zeth'Gor Must Burn!" (Alliance)
-- Remove flame spawns from db
DELETE FROM `gameobject` WHERE `guid` IN (32141,32142,32143,24683,24684,24685,24686);
-- Remove Honor Hold Gryphon Brigadier, Foothill spawns from db
DELETE FROM `creature` WHERE `guid` IN (78738,78739,78740,78741);
-- Zeth'Gor Quest Credit Marker, They Must Burn & Remove Honor Hold Gryphon Brigadier have wrong inhabit type, fix flags
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (21173,21170,22404,22405,22406);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|2048 WHERE `entry` IN (21170,22404,22405,22406);

-- Add missing Zeth'Gor Quest Credit Marker, They Must Burn
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(78738,21173,530,1,1,0,0,-1162.911377,2248.195313,152.24733,4.815845,120,0,0,1,0,0,0);

-- Add missing Go
DELETE FROM `gameobject_template` WHERE `entry`=183929;
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`,`WDBVerified`) VALUES 
(183929,6,0, '', '', '',35,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '',1);

-- SAI add animation to GameObject Smoke Beacon
SET @ENTRY := 184661;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,1,0,100,0,0,0,1000,1000,93,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'GameObject Smoke Beacon - On Spawn - Do Custom Animation');

-- Add spell conditions for 36325
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=36325;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,36325,0,18,1,21182,0,0,'','Spell 36325 target creature 21182'),
(13,0,36325,0,18,1,22401,0,0,'','Spell 36325 target creature 22401'),
(13,0,36325,0,18,1,22402,0,0,'','Spell 36325 target creature 22402'),
(13,0,36325,0,18,1,22403,0,0,'','Spell 36325 target creature 22403');

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower South
SET @ENTRY := 21182;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,1,0,0,0,0,10,78738,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower South from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-1156.975,2109.627,83.51005,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 1'),
(@ENTRY,2,-1152.303,2112.098,90.67654,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 2'),
(@ENTRY,3,-1150.817,2103.74,89.81573,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 3'),
(@ENTRY,4,-1153.965,2107.031,97.06559,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 4'),
(@ENTRY,5,-1156.105,2107.421,93.06557,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 5'),
(@ENTRY,6,-1152.167,2107.406,83.17665,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 6'),
(@ENTRY,7,-1150.145,2102.392,75.23684,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 7'),
(@ENTRY,8,-1158.784,2102.993,76.98234,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 8'),
(@ENTRY,9,-1158.344,2112.019,79.20454,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 9'),
(@ENTRY,10,-1148.166,2113.343,77.0103,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 10'),
(@ENTRY,11,-1148.897,2102.624,69.67694,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 11'),
(@ENTRY,12,-1157.054,2104.975,82.9548,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 12');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-1157.054,`position_y`=2104.975,`position_z`=82.9548,`orientation`=1.186824 WHERE `guid`=74299;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower North
SET @ENTRY := 22401;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,2,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower North from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-821.9919,2034.883,55.01843,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 1'),
(@ENTRY,2,-820.9771,2027.591,63.68367,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 2'),
(@ENTRY,3,-825.2185,2034.113,65.86314,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 3'),
(@ENTRY,4,-816.8493,2028.659,49.75199,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 4'),
(@ENTRY,5,-825.249,2026.351,46.58422,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 5');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-825.249,`position_y`=2026.351,`position_z`=46.58422,`orientation`=1.186824 WHERE `guid`=78735;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge
SET @ENTRY := 22402;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,3,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-897.1001,1917.556,93.73737,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 1'),
(@ENTRY,2,-903.386,1919.14,76.0997,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 2'),
(@ENTRY,3,-898.1819,1920.161,82.67819,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 3'),
(@ENTRY,4,-901.2836,1920.168,92.57269,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 4'),
(@ENTRY,5,-894.9478,1924.78,75.48938,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 5'),
(@ENTRY,6,-894.4704,1919.866,93.71019,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 6');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-894.4704,`position_y`=1919.866,`position_z`=93.71019,`orientation`=1.186824 WHERE `guid`=78736;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill
SET @ENTRY := 22403;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`flags_extra`=`flags_extra`|128,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,4,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On spell hit - Spawn fire');

-- Waypoints for Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-978.3713,1883.556,104.3167,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 1'),
(@ENTRY,2,-974.3038,1878.926,109.6782,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 2'),
(@ENTRY,3,-974.1463,1874.819,121.9402,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 3'),
(@ENTRY,4,-982.4401,1875.441,100.4122,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 4'),
(@ENTRY,5,-975.1263,1882.178,118.0354,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 5'),
(@ENTRY,6,-979.3693,1876.667,121.5866,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 6');
-- Update Creature
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-979.3693,`position_y`=1876.667,`position_z`=121.5866,`orientation`=1.186824 WHERE `guid`=78737;

-- SAI for Zeth'Gor Quest Credit Marker, They Must Burn
SET @ENTRY  := 21173; -- Zeth'Gor Quest Credit Marker, They Must Burn
SET @ENTRY1 := 21170; -- Honor Hold Gryphon Brigadier, South
SET @ENTRY2 := 22404; -- Honor Hold Gryphon Brigadier, North
SET @ENTRY3 := 22405; -- Honor Hold Gryphon Brigadier, Forge
SET @ENTRY4 := 22406; -- Honor Hold Gryphon Brigadier, Foothills
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100, (@ENTRY*100)+1, (@ENTRY*100)+2, (@ENTRY*100)+3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,(@ENTRY*100)+0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On dataset - load script'),
(@ENTRY,0,1,0,38,0,100,0,0,2,0,0,80,(@ENTRY*100)+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On dataset - load script'),
(@ENTRY,0,2,0,38,0,100,0,0,3,0,0,80,(@ENTRY*100)+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On dataset - load script'),
(@ENTRY,0,3,0,38,0,100,0,0,4,0,0,80,(@ENTRY*100)+3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On dataset - load script'),
-- Script 0
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset data 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,7,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,8,0,0,0,100,0,3000,3000,0,0,45,0,4,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
-- Script 1
((@ENTRY*100)+1,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+1,9,1,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,3,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,5,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,7,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,8,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
-- Script 2
((@ENTRY*100)+2,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+2,9,1,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,3,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,5,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,7,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,8,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
-- Script 3
((@ENTRY*100)+3,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+3,9,1,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,3,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,5,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,7,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,8,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill');

-- SAI for Honor Hold Gryphon Brigadier, South
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY1;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY1,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY1,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY1*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY1*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY1*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY1*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,5,0,40,0,100,0,10,@ENTRY1*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,6,0,40,0,100,0,10,(@ENTRY1*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,7,0,40,0,100,0,11,(@ENTRY1*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,8,0,40,0,100,0,11,(@ENTRY1*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- SAI for Honor Hold Gryphon Brigadier, North
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY2;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY2,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY2,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY2*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY2*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY2*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY2*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,5,0,40,0,100,0,12,@ENTRY2*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,6,0,40,0,100,0,11,(@ENTRY2*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,7,0,40,0,100,0,12,(@ENTRY2*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,8,0,40,0,100,0,12,(@ENTRY2*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- SAI for Honor Hold Gryphon Brigadier, Forge
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY3;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY3,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY3,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY3*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY3*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY3*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY3*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,5,0,40,0,100,0,13,@ENTRY3*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,6,0,40,0,100,0,13,(@ENTRY3*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,7,0,40,0,100,0,12,(@ENTRY3*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,8,0,40,0,100,0,14,(@ENTRY3*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- SAI for Honor Hold Gryphon Brigadier, Foothill
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY4;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY4;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY4,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY4,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY4*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY4*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY4*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,4,0,40,0,100,0,15,@ENTRY4*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY4,0,5,0,40,0,100,0,15,(@ENTRY4*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY4,0,6,0,40,0,100,0,15,(@ENTRY4*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');

-- Honor Hold Gryphon Brigadier, South Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY1*100, (@ENTRY1*100)+1, (@ENTRY1*100)+2, (@ENTRY1*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, South Path 1
(@ENTRY1*100,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 1 WP 1'),
(@ENTRY1*100,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 1 WP 2'),
(@ENTRY1*100,3,-1162.907,2207.568,140.9076,'Honor Hold Gryphon Brigadier, South Path 1 WP 3'),
(@ENTRY1*100,4,-1165.149,2160.382,126.1298,'Honor Hold Gryphon Brigadier, South Path 1 WP 4'),
(@ENTRY1*100,5,-1171.198,2119.914,110.0741,'Honor Hold Gryphon Brigadier, South Path 1 WP 5'),
(@ENTRY1*100,6,-1152.598,2108.961,101.9074,'Honor Hold Gryphon Brigadier, South Path 1 WP 6'),
(@ENTRY1*100,7,-1126.18,2129.599,118.6573,'Honor Hold Gryphon Brigadier, South Path 1 WP 7'),
(@ENTRY1*100,8,-1113.314,2146.836,135.1296,'Honor Hold Gryphon Brigadier, South Path 1 WP 8'),
(@ENTRY1*100,9,-1105.45,2173.646,171.0185,'Honor Hold Gryphon Brigadier, South Path 1 WP 9'),
(@ENTRY1*100,10,-1107.9,2202.193,195.935,'Honor Hold Gryphon Brigadier, South Path 1 WP 10'),
-- Honor Hold Gryphon Brigadier, South Path 2
((@ENTRY1*100)+1,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 2 WP 1'),
((@ENTRY1*100)+1,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 2 WP 2'),
((@ENTRY1*100)+1,3,-1182.963,2208.794,125.3797,'Honor Hold Gryphon Brigadier, South Path 2 WP 3'),
((@ENTRY1*100)+1,4,-1182.292,2161.906,114.2409,'Honor Hold Gryphon Brigadier, South Path 2 WP 4'),
((@ENTRY1*100)+1,5,-1175.9,2113.828,105.1853,'Honor Hold Gryphon Brigadier, South Path 2 WP 5'),
((@ENTRY1*100)+1,6,-1152.598,2108.961,104.5463,'Honor Hold Gryphon Brigadier, South Path 2 WP 6'),
((@ENTRY1*100)+1,7,-1126.18,2129.599,117.0184,'Honor Hold Gryphon Brigadier, South Path 2 WP 7'),
((@ENTRY1*100)+1,8,-1097.298,2159.928,136.074,'Honor Hold Gryphon Brigadier, South Path 2 WP 8'),
((@ENTRY1*100)+1,9,-1084.76,2185.17,157.8796,'Honor Hold Gryphon Brigadier, South Path 2 WP 9'),
((@ENTRY1*100)+1,10,-1074.359,2208.386,178.1295,'Honor Hold Gryphon Brigadier, South Path 2 WP 10'),
-- Honor Hold Gryphon Brigadier, South Path 3
((@ENTRY1*100)+2,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 3 WP 1'),
((@ENTRY1*100)+2,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 3 WP 2'),
((@ENTRY1*100)+2,3,-1150.548,2194.858,120.9303,'Honor Hold Gryphon Brigadier, South Path 3 WP 3'),
((@ENTRY1*100)+2,4,-1151.814,2161.048,110.9858,'Honor Hold Gryphon Brigadier, South Path 3 WP 4'),
((@ENTRY1*100)+2,5,-1152.937,2131.728,105.9581,'Honor Hold Gryphon Brigadier, South Path 3 WP 5'),
((@ENTRY1*100)+2,6,-1151.148,2107.598,99.458,'Honor Hold Gryphon Brigadier, South Path 3 WP 6'),
((@ENTRY1*100)+2,7,-1165.406,2089.037,115.6802,'Honor Hold Gryphon Brigadier, South Path 3 WP 7'),
((@ENTRY1*100)+2,8,-1174.068,2083.782,125.0691,'Honor Hold Gryphon Brigadier, South Path 3 WP 8'),
((@ENTRY1*100)+2,9,-1205.327,2083.083,164.097,'Honor Hold Gryphon Brigadier, South Path 3 WP 9'),
((@ENTRY1*100)+2,10,-1232.793,2084.872,183.4025,'Honor Hold Gryphon Brigadier, South Path 3 WP 10'),
((@ENTRY1*100)+2,11,-1264.571,2093.127,197.5136,'Honor Hold Gryphon Brigadier, South Path 3 WP 11'),
-- Honor Hold Gryphon Brigadier, South Path 4
((@ENTRY1*100)+3,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 4 WP 1'),
((@ENTRY1*100)+3,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 4 WP 2'),
((@ENTRY1*100)+3,3,-1152.79,2211.288,120.9303,'Honor Hold Gryphon Brigadier, South Path 4 WP 3'),
((@ENTRY1*100)+3,4,-1146.584,2178.448,110.9858,'Honor Hold Gryphon Brigadier, South Path 4 WP 4'),
((@ENTRY1*100)+3,5,-1155.939,2146.783,105.9581,'Honor Hold Gryphon Brigadier, South Path 4 WP 5'),
((@ENTRY1*100)+3,6,-1151.148,2107.598,99.68026,'Honor Hold Gryphon Brigadier, South Path 4 WP 6'),
((@ENTRY1*100)+3,7,-1142.785,2094.159,103.5414,'Honor Hold Gryphon Brigadier, South Path 4 WP 7'),
((@ENTRY1*100)+3,8,-1136.896,2085.377,109.1246,'Honor Hold Gryphon Brigadier, South Path 4 WP 8'),
((@ENTRY1*100)+3,9,-1119.036,2071.976,118.8748,'Honor Hold Gryphon Brigadier, South Path 4 WP 9'),
((@ENTRY1*100)+3,10,-1103.594,2050.397,128.2081,'Honor Hold Gryphon Brigadier, South Path 4 WP 10'),
((@ENTRY1*100)+3,11,-1080.568,2022.377,137.5138,'Honor Hold Gryphon Brigadier, South Path 4 WP 11');

-- Honor Hold Gryphon Brigadier, North Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY2*100, (@ENTRY2*100)+1, (@ENTRY2*100)+2, (@ENTRY2*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, North Path 1
(@ENTRY2*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,4,-774.873,1952.79,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,5,-786.8572,1972.59,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,6,-799.9429,2000.454,78.95126,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,7,-806.1043,2017.675,73.36794,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,8,-819.2725,2032.523,73.17354,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,9,-831.7571,2046.865,80.61793,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,10,-844.0977,2058.49,83.64579,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,11,-859.0389,2080.072,95.78463,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,12,-883.3383,2095.611,107.5624,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
-- Honor Hold Gryphon Brigadier, North Path 2
((@ENTRY2*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,5,-792.3573,1953.981,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,6,-812.7388,1993.078,78.95126,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,7,-823.2512,2008.549,73.36794,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,9,-812.5039,2051.152,80.61793,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,10,-775.5078,2066.004,83.64579,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,11,-728.4387,2072.975,87.72904,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
-- Honor Hold Gryphon Brigadier, North Path 3
((@ENTRY2*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,5,-798.551,1950.061,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,6,-822.979,1966.302,78.95126,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,7,-829.1212,1999.823,73.36794,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,9,-822.0243,2049.509,80.61793,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,10,-838.6264,2088.113,83.64579,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,11,-857.7249,2123.352,87.72904,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,12,-856.7349,2157.759,99.95123,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
-- Honor Hold Gryphon Brigadier, North Path 4
((@ENTRY2*100)+3,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,5,-792.3573,1953.981,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,6,-812.7388,1993.078,78.95126,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,7,-823.2512,2008.549,73.36794,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,9,-812.5039,2051.152,80.61793,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,10,-838.6264,2088.113,83.64579,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,11,-857.7249,2123.352,87.72904,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,12,-891.1043,2149.23,87.72904,'Honor Hold Gryphon Brigadier, North Path 4 WP');

-- Honor Hold Gryphon Brigadier, Forge Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY3*100, (@ENTRY3*100)+1, (@ENTRY3*100)+2, (@ENTRY3*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, Forge Path 1
(@ENTRY3*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,4,-779.0291,1934.054,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,5,-805.9227,1932.241,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,6,-837.3495,1926.666,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,7,-862.7343,1923.357,97.618,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,8,-897.9168,1921.757,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,9,-914.8586,1930.438,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,10,-932.5103,1940.806,109.0624,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,11,-945.1282,1950.602,122.7846,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,12,-966.2561,1954.868,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,13,-993.241,1956.073,157.4512,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
-- Honor Hold Gryphon Brigadier, Forge Path 2
((@ENTRY3*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,4,-780.6625,1927.177,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,5,-811.2864,1921.429,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,6,-834.9781,1920.712,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,7,-866.0516,1916.696,97.618,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,8,-895.7596,1922.273,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,9,-923.1928,1916.771,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,10,-948.4045,1901.38,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,11,-966.732,1893.369,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,12,-989.9695,1893.078,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,13,-1025.913,1875.034,164.979,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
-- Honor Hold Gryphon Brigadier, Forge Path 3
((@ENTRY3*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,5,-799.0213,1938.265,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,6,-821.9453,1929.91,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,7,-847.0975,1925.127,97.618,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,8,-884.1627,1919.391,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,9,-910.0975,1918.052,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,10,-931.7395,1901.312,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,11,-938.8629,1883.565,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,12,-948.2704,1857.24,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
-- Honor Hold Gryphon Brigadier, Forge Path 4
((@ENTRY3*100)+3,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,5,-799.0213,1938.265,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,6,-821.9453,1929.91,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,7,-847.0975,1925.127,97.618,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,8,-884.1627,1919.391,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,9,-898.5378,1920.82,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,10,-909.0667,1943.895,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,11,-882.7237,1983.156,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,12,-857.6995,1997.67,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,13,-834.7382,1999.236,151.1734,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,14,-797.808,1990.238,154.7012,'Honor Hold Gryphon Brigadier, Forge Path 4 WP');

-- Honor Hold Gryphon Brigadier, Foothill Pathing
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY4*100, (@ENTRY4*100)+1, (@ENTRY4*100)+2);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
-- Honor Hold Gryphon Brigadier, Foothill Path 1
(@ENTRY4*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 1'),
(@ENTRY4*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 2'),
(@ENTRY4*100,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 3'),
(@ENTRY4*100,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 4'),
(@ENTRY4*100,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 5'),
(@ENTRY4*100,6,-844.3373,1894.094,121.1179,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 6'),
(@ENTRY4*100,7,-875.8698,1888.307,134.0069,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 7'),
(@ENTRY4*100,8,-908.7481,1889.962,139.368,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 8'),
(@ENTRY4*100,9,-936.4296,1891.453,135.5625,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 9'),
(@ENTRY4*100,10,-956.9449,1888.206,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 10'),
(@ENTRY4*100,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 11'),
(@ENTRY4*100,12,-999.7429,1861.678,156.9511,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 12'),
(@ENTRY4*100,13,-1019.369,1838.22,181.4233,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 13'),
(@ENTRY4*100,14,-1015.93,1818.592,198.4232,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 14'),
(@ENTRY4*100,15,-1003.392,1791.963,211.84,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 15'),
-- Honor Hold Gryphon Brigadier, Foothill Path 2
((@ENTRY4*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 1'),
((@ENTRY4*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 2'),
((@ENTRY4*100)+1,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 3'),
((@ENTRY4*100)+1,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 4'),
((@ENTRY4*100)+1,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 5'),
((@ENTRY4*100)+1,6,-844.3373,1894.094,121.1179,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 6'),
((@ENTRY4*100)+1,7,-875.8698,1888.307,134.0069,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 7'),
((@ENTRY4*100)+1,8,-905.6191,1885.849,139.368,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 8'),
((@ENTRY4*100)+1,9,-933.7491,1881.107,135.5625,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 9'),
((@ENTRY4*100)+1,10,-957.0587,1876.275,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 10'),
((@ENTRY4*100)+1,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 11'),
((@ENTRY4*100)+1,12,-1001.597,1896.851,136.0901,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 12'),
((@ENTRY4*100)+1,13,-1026.942,1912.217,153.8956,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 13'),
((@ENTRY4*100)+1,14,-1046.058,1925.075,168.2844,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 14'),
((@ENTRY4*100)+1,15,-1065.902,1940.892,183.0622,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 15'),
-- Honor Hold Gryphon Brigadier, Foothill Path 3
((@ENTRY4*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 1'),
((@ENTRY4*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 2'),
((@ENTRY4*100)+2,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 3'),
((@ENTRY4*100)+2,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 4'),
((@ENTRY4*100)+2,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 5'),
((@ENTRY4*100)+2,6,-852.6487,1887.492,134.7291,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 6'),
((@ENTRY4*100)+2,7,-885.8631,1878.916,144.8403,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 7'),
((@ENTRY4*100)+2,8,-910.2131,1876.215,149.118,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 8'),
((@ENTRY4*100)+2,9,-933.7659,1874.894,145.9792,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 9'),
((@ENTRY4*100)+2,10,-957.0587,1876.275,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 10'),
((@ENTRY4*100)+2,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 11'),
((@ENTRY4*100)+2,12,-1003.331,1901.21,136.0901,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 12'),
((@ENTRY4*100)+2,13,-1019.146,1920.588,153.8956,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 13'),
((@ENTRY4*100)+2,14,-1035.73,1937.606,168.2844,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 14'),
((@ENTRY4*100)+2,15,-1055.794,1959.019,183.0622,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 15');
UPDATE `creature_template` SET `InhabitType`=7 WHERE `flags_extra` & 128; -- Triggers floating
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|16|8388608 WHERE `type`=6; -- Mobs undeads should be immune to fear and horror
-- Spawn Tribunal Chest in heroic HoS mode and correct wrong spawnmasks
SET @GUID = 151790; -- Set by TDB team (need 1)
UPDATE `gameobject` SET `spawnMask`=1 WHERE `guid`=65564; -- Tribunal Chest non heroic
DELETE FROM `gameobject` WHERE `id`=193996;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)VALUES
(@GUID,193996,599,2,1,880.406,345.164,203.706,0,0,0,0,1,180,0,1); -- Tribunal Chest heroic
UPDATE `gameobject_template` SET `faction`=94, `flags`=4 /* should be 4 and nothing else (temp) */ WHERE `entry` IN (193996,190586);
-- Arcanimus should not have random movement
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid`=96298;
-- Fixup Big Electromental Flavor
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=21757;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=21757;
-- Remove Fizzcrank Airman missspawn
DELETE FROM `creature` WHERE `guid` IN (117923);
DELETE FROM `creature_addon` WHERE `guid` IN (117923);
-- Fixup South Sinkhole, Northeast Sinkhole, Northwest Sinkhole Set as trigger
UPDATE `creature` SET `modelid`=0 WHERE `id` IN (25664,25665,25666);
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (25664,25665,25666);
-- Pathing for Ol' Sooty Entry: 1225
SET @NPC := 8877;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5679.014160,`position_y`=-3185.046875,`position_z`=319.508057 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5716.181152,-3110.810791,316.686523,0,0,0,100,0),
(@PATH,2,-5716.187012,-3093.080078,325.600677,0,0,0,100,0),
(@PATH,3,-5712.214355,-3090.297607,327.738647,0,0,0,100,0),
(@PATH,4,-5705.484375,-3092.523438,329.362366,0,0,0,100,0),
(@PATH,5,-5681.826660,-3110.568848,338.121887,0,0,0,100,0),
(@PATH,6,-5659.498535,-3122.215576,344.336151,0,0,0,100,0),
(@PATH,7,-5639.585938,-3124.536133,348.404938,0,0,0,100,0),
(@PATH,8,-5618.112793,-3110.905762,360.618225,0,0,0,100,0),
(@PATH,9,-5621.486816,-3096.315918,368.247772,0,0,0,100,0),
(@PATH,10,-5632.212891,-3078.608398,374.990936,0,0,0,100,0),
(@PATH,11,-5629.793457,-3056.124023,384.465576,0,0,0,100,0),
(@PATH,12,-5642.278809,-3036.872314,385.471649,0,0,0,100,0),
(@PATH,13,-5609.369141,-3006.883301,386.288177,0,0,0,100,0),
(@PATH,14,-5643.634277,-3036.388672,385.531891,0,0,0,100,0),
(@PATH,15,-5630.174805,-3057.015869,384.385712,0,0,0,100,0),
(@PATH,16,-5629.840332,-3065.496338,381.129578,0,0,0,100,0),
(@PATH,17,-5634.866211,-3078.448975,374.489044,0,0,0,100,0),
(@PATH,18,-5620.416504,-3101.081543,364.819855,0,0,0,100,0),
(@PATH,19,-5624.629395,-3117.040527,354.493805,0,0,0,100,0),
(@PATH,20,-5644.949707,-3125.081787,347.271362,0,0,0,100,0),
(@PATH,21,-5660.741699,-3121.580566,343.975922,0,0,0,100,0),
(@PATH,22,-5676.210938,-3111.586914,340.021484,0,0,0,100,0),
(@PATH,23,-5691.895508,-3102.994385,333.646698,0,0,0,100,0),
(@PATH,24,-5711.662109,-3088.433594,328.761566,0,0,0,100,0),
(@PATH,25,-5717.663574,-3099.033691,321.686920,0,0,0,100,0),
(@PATH,26,-5705.214844,-3132.324219,315.837585,0,0,0,100,0),
(@PATH,27,-5679.014160,-3185.046875,319.508057,0,0,0,100,0);

-- Thargold Ironwing SAI
SET @ENTRY  := 29154;
SET @GOSSIP := 9776;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,53335,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Thargold Ironwing - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Thargold Ironwing - On gossip option select - close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (977600);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10062,10063,10054,10055,10046,10047,10048,10049,10050,10051,10044,10045);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10062,12,0,0, 'achievement_quick_shave'),
(10063,12,1,0, 'achievement_quick_shave'),
(10044,12,0,0, 'achievement_unbroken'),
(10045,12,1,0, 'achievement_unbroken'),
(10054,12,0,0, 'achievement_shutout'),
(10055,12,1,0, 'achievement_shutout'),
(10046,12,0,0, 'achievement_three_car_garage_chopper'),
(10047,12,0,0, 'achievement_three_car_garage_siege'),
(10048,12,0,0, 'achievement_three_car_garage_demolisher'),
(10049,12,1,0, 'achievement_three_car_garage_chopper'),
(10050,12,1,0, 'achievement_three_car_garage_siege'),
(10051,12,1,0, 'achievement_three_car_garage_demolisher'),
(10062,11,0,0, 'achievement_quick_shave'),
(10063,11,0,0, 'achievement_quick_shave'),
(10044,11,0,0, 'achievement_unbroken'),
(10045,11,0,0, 'achievement_unbroken'),
(10054,11,0,0, 'achievement_shutout'),
(10055,11,0,0, 'achievement_shutout'),
(10046,11,0,0, 'achievement_three_car_garage_chopper'),
(10047,11,0,0, 'achievement_three_car_garage_siege'),
(10048,11,0,0, 'achievement_three_car_garage_demolisher'),
(10049,11,0,0, 'achievement_three_car_garage_chopper'),
(10050,11,0,0, 'achievement_three_car_garage_siege'),
(10051,11,0,0, 'achievement_three_car_garage_demolisher');

-- Remove disabled entries
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10044,10045,10046,10047,10048,10049,10050,10051,10054,10055,10062,10063);
-- conditions for spells used by Malygos
DELETE FROM `conditions` WHERE `SourceGroup`=0 AND `SourceEntry` IN (56263,55853,56505,56429,56152) AND `ConditionTypeOrReference`=18;
INSERT INTO `conditions` (SourceTypeOrReferenceId,ConditionTypeOrReference,SourceGroup,SourceEntry,ConditionValue1,ConditionValue2) VALUES 
(13,18,0,55853,1,30090),
(13,18,0,56263,1,30090),
(13,18,0,56505,1,30334),
(13,18,0,56429,1,30334),
(13,18,0,56152,1,28859);
-- vortex trigger
UPDATE `creature_template` SET `modelid1`=11686,`modelid2`=169,`InhabitType`=5,`unit_flags`=0x02000000,`VehicleId`=214,`flags_extra`=130 WHERE `entry`=30090;
UPDATE `creature` SET `modelid`=0 WHERE `id`=30090;

-- Portal (Malygos)
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=30118;
UPDATE `creature_template` SET `speed_walk`=2.4,`speed_run`=0.857142857 WHERE `entry`=30084;

-- Hover Disk
UPDATE `creature_template` SET `VehicleId`=224,`faction_A`=35,`faction_H`=35,`InhabitType`=5 WHERE `entry` IN (30234,30248);

-- Surge of Power
UPDATE `creature_template` SET flags_extra=130 WHERE entry=30334;

-- Wyrmrest Skytalon (Player's Mount)
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=30161;

-- Alexstrasza the Life-Binder
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=32295;

-- static Field
UPDATE `creature_template` SET `flags_extra`=130,`InhabitType`=5 WHERE `entry`=30592;

UPDATE `creature_template` SET `VehicleId`=220,`spell1`=56091,`spell2`=56092,`spell3`=57090,`spell4`=57143,`spell5`=57108,`spell6`=57092,`spell7`=60534 WHERE `entry`=30161;DELETE FROM `creature_template_addon` WHERE `entry`=30592;
INSERT INTO `creature_template_addon` (entry,auras) VALUES (30592,'57428 0');
DELETE FROM `creature_text` WHERE `entry` IN (32295,28859);
INSERT INTO `creature_text` (entry,groupid,id,text,type,language,sound,comment) VALUE
(28859,0,0,'My patience has reached its limit, I will be rid of you!',1,0,14517,'Malygos - Aggro (Phase 1)'),
(28859,1,0,'Your stupidity has finally caught up to you',1,0,14519,'Malygos - Killed Player (1) (Phase 1)'),
(28859,1,1,'More artifacts to confiscate...',1,0,14520,'Malygos - Killed Player (2) (Phase 1)'),
(28859,1,2,'<Laughs> How very... naive...',1,0,14521,'Malygos - Killed Player (3) (Phase 1)'),
(28859,2,0,'I had hoped to end your lives quickly, but you have proven more... resilient then I had anticipated. Nonetheless, your efforts are in vain, it is you reckless, careless mortals who are to blame for this war! I do what I must... And if it means your... extinction... THEN SO BE IT',1,0,14522,'Malygos - End Phase One'),
(28859,3,0,'Few have experienced the pain I will now inflict upon you!',1,0,14523,'Malygos - Aggro (Phase 2)'),
(28859,4,0,'I will teach you IGNORANT children just how little you know of magic...',1,0,14524,'Malygos - Anti-Magic Shell'),
(28859,5,0,'Watch helplessly as your hopes are swept away...',1,0,14525,'Malygos - Magic Blast'),
(28859,6,0,'Your energy will be put to good use!',1,0,14526,'Malygos - Killed Player 1 (Phase 2)'),
(28859,6,1,'I am the spell-weaver! My power is infinite!',1,0,14527,'Malygos - Killed Player 2 (Phase 2)'),
(28859,6,2,'Your spirit will linger here forever!',1,0,14528,'Malygos - Killed Player 3 (Phase 2)'),
(28859,7,0,'ENOUGH! If you intend to reclaim Azeroth''s magic, then you shall have it...',1,0,14529,'Malygos - End Phase 2'),
(28859,8,0,'Now your benefactors make their appearance... But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?',1,0,14530,'Intro Phase 3'),
(28859,9,0,'SUBMIT!',1,0,14531,'Malygos - Aggro (Phase 3)'),
(28859,10,0,'The powers at work here exceed anything you could possibly imagine!',1,0,14532,'Malygos - Surge of Power'),
(28859,11,0,'I AM UNSTOPPABLE!',1,0,14533,'Malygos - Buffed by a spark'),
(28859,12,0,'Alexstrasza! Another of your brood falls!',1,0,14534,'Malygos - Killed Player 1 (Phase 3)'),
(28859,12,1,'Little more then gnats!',1,0,14535,'Malygos - Killed Player 2 (Phase 3)'),
(28859,12,2,'Your red allies will share your fate...',1,0,14536,'Malygos - Killed Player 3 (Phase 3)'),
(28859,13,0,'Still standing? Not for long...',1,0,14537,'Malygos - Spell Casting 1(Phase 3)'),
(28859,13,1,'Your cause is lost',1,0,14538,'Malygos - Spell Casting 2 (Phase 3)'),
(28859,13,2,'Your fragile mind will be shattered!',1,0,14539,'Malygos - Spell Casting 3 (Phase 3)'),
(28859,14,0,'Unthinkable! The mortals will destroy... everything... my sister... what have you...',1,0,0,'Malygos - Death'),
(32295,0,0,'I did what I had to, brother. You gave me no alternative.',1,0,0,'Alexstrasza - Yell One'),
(32295,1,0,'And so ends the Nexus War.',1,0,0,'Alexstrasza - Yell Two'),
(32295,2,0,'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos'' recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world''s mightiest has fallen.',1,0,0,'Alexstrasza - Yell Three'),
(32295,3,0,'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life... goes on.',1,0,0,'Alexstrasza - Yell Four');
-- Spawning Focusing Iris
DELETE FROM `gameobject` WHERE `id`=193958;
INSERT INTO `gameobject` (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES 
(151791,193958,616,1,1,754.2546,1301.71973,266.170319,-1.60570168,0,0,0,0,120,0,1);
-- Spawning chests
DELETE FROM `gameobject` WHERE `id` IN (193967,193905);
INSERT INTO `gameobject` (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,animprogress,state) VALUES
(151792,193905,616,1,1,764.56,1284.63,269,1.82,-604800,100,1), 
(151793,193967,616,2,1,764.56,1284.63,269,1.82,-604800,100,1);-- Hover Disk
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (30248,30234);
INSERT INTO `npc_spellclick_spells` (npc_entry,spell_id,quest_start,quest_end,cast_flags) VALUES 
(30234,61421,0,0,0),
(30248,61421,0,0,0);
DELETE FROM `instance_template` WHERE `map`=616;
INSERT INTO `instance_template` (map,parent,script) VALUES (616,571,'instance_eye_of_eternity');

UPDATE `creature_template` SET `ScriptName`='boss_malygos' WHERE `entry`=28859;
UPDATE `creature_template` SET `ScriptName`='npc_power_spark' WHERE `entry`=30084;
UPDATE `creature_template` SET `ScriptName`='npc_portal_eoe' WHERE `entry`=30118;
UPDATE `creature_template` SET `ScriptName`='npc_hover_disk' WHERE `entry` IN (30234,30248);
UPDATE `creature_template` SET `ScriptName`='npc_arcane_overload' WHERE `entry`=30282;
UPDATE `creature_template` SET `ScriptName`='npc_wyrmrest_skytalon' WHERE `entry`=30161;
UPDATE `creature_template` SET `ScriptName`='npc_alexstrasza_eoe' WHERE `entry`=32295;

DELETE FROM `spell_script_names` WHERE `spell_id`=56105;
INSERT INTO `spell_script_names` VALUES (56105,'spell_malygos_vortex_dummy');
DELETE FROM `spell_script_names` WHERE `spell_id`=55873;
INSERT INTO `spell_script_names` VALUES (55873,'spell_malygos_vortex_visual');-- Scripts for Nexus Lord and Scion of Eternity
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (30249,30245);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30249 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30249, 0, 0, 0, 0, 0, 100, 6, 3000, 5000, 4000, 6000, 11, 56397, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Scion of Eternity - Cast Arcane Barrage (Random)'),
(30249, 0, 1, 0, 7, 0, 100, 6, 1, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scion of Eternity - Despawn in EvadeMode');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30245 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30245, 0, 0, 0, 0, 0, 100, 6, 7000, 10000, 10000, 15000, 11, 57060, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Cast Haste (Self)'),
(30245, 0, 1, 0, 0, 0, 100, 6, 5000, 8000, 9000, 12000, 11, 57058, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Cast Arcane Shock (Random)'),
(30245, 0, 2, 0, 7, 0, 100, 6, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Despawn in EvadeMode');
-- Hover Disk
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (30234,30248);
INSERT INTO `vehicle_template_accessory` (entry,accessory_entry,seat_id,minion,description) VALUES 
(30234,30245,0,0,'Hover Disk - Nexus Lord'),
(30248,30249,0,0,'Hover Disk - Scion of Eternity');DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10062,10063,10054,10055,10046,10047,10048,10049,10050,10051,10044,10045) AND `type`!=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10062,12,0,0, ''),
(10063,12,1,0, ''),
(10044,12,0,0, ''),
(10045,12,1,0, ''),
(10054,12,0,0, ''),
(10055,12,1,0, ''),
(10046,12,0,0, ''),
(10047,12,0,0, ''),
(10048,12,0,0, ''),
(10049,12,1,0, ''),
(10050,12,1,0, ''),
(10051,12,1,0, '');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-57350 AND `spell_effect`=60242 ;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-57350,60242,0, 'Darkmoon Card: Illusion');
-- Set Correct Requirements for quest: Once More Unto The Breach, Hero (13104/13105)
UPDATE `quest_template` SET `SkillOrClassMask`=-32 WHERE `entry`= 13105; -- Death Knight only
UPDATE `quest_template` SET `SkillOrClassMask`=-1503 WHERE `entry`= 13105; -- Other Classes
-- Spell Arcane Barrage
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56397;
INSERT INTO `spell_linked_spell` (spell_trigger,spell_effect,type,comment) VALUES (56397,63934,1,'Arcane Barrage - Arcane Barrage');
-- Set Correct Requirements for quest: Once More Unto The Breach, Hero (13104/13105)
UPDATE `quest_template` SET `SkillOrClassMask`=-32 WHERE `entry`= 13105; -- Death Knight only
UPDATE `quest_template` SET `SkillOrClassMask`=-1503 WHERE `entry`= 13104; -- Other Classes
/* Dalaran Books */
SET @Gossip = 21255; -- Set by TDB Team (gossip_menu.entry - need 2)
SET @Guid = 151794; -- Set by TDB Team (gameobject.guid - need 35)
SET @Pool = 5691; -- Set by TDB Team (pool_template.entry - need 8)
SET @GoDespawnTime = 10800; -- Three hours

-- Spawns
DELETE FROM `gameobject` WHERE `id` IN (192708,192706,192871,192905,192710,192886,192869,192880,192895,192713,192889,192890,192894,192884,192866,192891,192872,192881,192709,192883,192651,192888,192711,192653,192887,192652,192865,192874,192868,192870,192885,192867,192882,192707,192896);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
-- Introduction
(@Guid+0,192708,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Introduction
(@Guid+1,192706,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Worst Mage in Dalaran: A Children's Book
(@Guid+2,192871,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Archmage Antonidas - Part II
(@Guid+3,192905,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Old Wizard's Almanac
-- Conjuration
(@Guid+4,192710,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Conjuration
(@Guid+5,192886,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- In Time, the Arcane Corrupts All!
(@Guid+6,192869,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- LAVA BLAST - by Pyroco
(@Guid+7,192880,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- Journal of Archmage Antonidas
(@Guid+8,192895,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- Kirin Tor Monthly (March Issue)
-- Enchantment
(@Guid+9,192713,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Enchantment
(@Guid+10,192889,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- Kirin Tor Monthly (November Issue)
(@Guid+11,192890,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- STAY OUT!!!
(@Guid+12,192894,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- Remedial Magic 101: Tips from the Pros
(@Guid+13,192884,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- Portals are NOT Garbage Bins!
-- Necromancy
(@Guid+14,192866,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Necromancy
(@Guid+15,192891,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- To Do Today
(@Guid+16,192872,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- The Archmage Antonidas - Part III
(@Guid+17,192881,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- Thinking with Portals - A Memorandum on Proper Portal Usage
-- Abjuration
(@Guid+18,192709,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Abjuration
(@Guid+19,192883,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- Blinking Rules & Regulations
(@Guid+20,192651,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- Damaged Apprentice Journal
(@Guid+21,192888,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- Bundle of Romantic Correspondences
-- Divination
(@Guid+22,192711,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Divination
(@Guid+23,192653,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- On the Virtues of Magic
(@Guid+24,192887,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- Losses of the Third War
(@Guid+25,192652,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- Kirin Tor Monthly (May Issue)
-- Illusion
(@Guid+26,192865,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Illusion
(@Guid+27,192874,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Fluffy Bunny
(@Guid+28,192868,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Dangers of Magic Abuse
(@Guid+29,192870,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Archmage Antonidas - Part I
(@Guid+30,192885,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Fate of Apprentice Argoly
-- Transmutation
(@Guid+31,192867,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Transmutation
(@Guid+32,192882,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1), -- Polymorphic Rules & Regulations
(@Guid+33,192707,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1), -- Weathered Diary - Dates from the Third War
(@Guid+34,192896,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1); -- Excerpts from the Journal of Archmage Vargoth

/*
-- SAI prototype: Despawn after use FIXME: SAI can't despawn GOs
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (xxx);
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `id`=0 AND `entryorguid` IN (xxx);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(xxx,1,0,0,64,0,100,0,0,0,0,0,41,180000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dalaran Books: Despawn after 3 mins on gossip_hello');
*/

-- Pooling
DELETE FROM `pool_template` WHERE `entry` BETWEEN @Pool+0 AND @Pool+7;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@Pool+0,1, 'Dalaran Books: Violet Gate'),
(@Pool+1,1, 'Dalaran Books: Violet Citadel Lower'),
(@Pool+2,1, 'Dalaran Books: Threads of Fate'),
(@Pool+3,1, 'Dalaran Books: Ledgerdemain Lounge Upstairs'),
(@Pool+4,1, 'Dalaran Books: Visitor’s Center'),
(@Pool+5,1, 'Dalaran Books: Violet Citadel Upstairs'),
(@Pool+6,1, 'Dalaran Books: Violet Hold'),
(@Pool+7,1, 'Dalaran Books: Ledgerdemain Lounge Lower');

DELETE FROM `pool_gameobject` WHERE `pool_entry` BETWEEN @Pool+0 AND @Pool+7;
INSERT INTO `pool_gameobject` (`guid`,`pool_entry`,`chance`,`description`) VALUES
-- Introduction
(@Guid+0,@Pool+0,0, 'The Schools of Arcane Magic - Introduction'),
(@Guid+1,@Pool+0,0, 'The Worst Mage in Dalaran: A Children''s Book'),
(@Guid+2,@Pool+0,0, 'The Archmage Antonidas - Part II'),
(@Guid+3,@Pool+0,0, 'The Old Wizard''s Almanac'),
-- Conjuration
(@Guid+4,@Pool+1,0, 'The Schools of Arcane Magic - Conjuration'),
(@Guid+5,@Pool+1,0, 'In Time, the Arcane Corrupts All!'),
(@Guid+6,@Pool+1,0, 'LAVA BLAST - by Pyroco'),
(@Guid+7,@Pool+1,0, 'Journal of Archmage Antonidas'),
(@Guid+8,@Pool+1,0, 'Kirin Tor Monthly (March Issue)'),
-- Enchantment
(@Guid+9,@Pool+2,0, 'The Schools of Arcane Magic - Enchantment'),
(@Guid+10,@Pool+2,0, 'Kirin Tor Monthly (November Issue)'),
(@Guid+11,@Pool+2,0, 'STAY OUT!!!'),
(@Guid+12,@Pool+2,0, 'Remedial Magic 101: Tips from the Pros'),
(@Guid+13,@Pool+2,0, 'Portals are NOT Garbage Bins!'),
-- Necromancy
(@Guid+14,@Pool+3,0, 'The Schools of Arcane Magic - Necromancy'),
(@Guid+15,@Pool+3,0, 'To Do Today'),
(@Guid+16,@Pool+3,0, 'The Archmage Antonidas - Part III'),
(@Guid+17,@Pool+3,0, 'Thinking with Portals - A Memorandum on Proper Portal Usage'),
-- Abjuration
(@Guid+18,@Pool+4,0, 'The Schools of Arcane Magic - Abjuration'),
(@Guid+19,@Pool+4,0, 'Blinking Rules & Regulations'),
(@Guid+20,@Pool+4,0, 'Damaged Apprentice Journal'),
(@Guid+21,@Pool+4,0, 'Bundle of Romantic Correspondences'),
-- Divination
(@Guid+22,@Pool+5,0, 'The Schools of Arcane Magic - Divination'),
(@Guid+23,@Pool+5,0, 'On the Virtues of Magic'),
(@Guid+24,@Pool+5,0, 'Losses of the Third War'),
(@Guid+25,@Pool+5,0, 'Kirin Tor Monthly (May Issue)'),
-- Illusion
(@Guid+26,@Pool+6,0, 'The Schools of Arcane Magic - Illusion'),
(@Guid+27,@Pool+6,0, 'The Fluffy Bunny'),
(@Guid+28,@Pool+6,0, 'The Dangers of Magic Abuse'),
(@Guid+29,@Pool+6,0, 'The Archmage Antonidas - Part I'),
(@Guid+30,@Pool+6,0, 'The Fate of Apprentice Argoly'),
-- Transmutation
(@Guid+31,@Pool+7,0, 'The Schools of Arcane Magic - Transmutation'),
(@Guid+32,@Pool+7,0, 'Polymorphic Rules & Regulations'),
(@Guid+33,@Pool+7,0, 'Weathered Diary - Dates from the Third War'),
(@Guid+34,@Pool+7,0, 'Excerpts from the Journal of Archmage Vargoth');

UPDATE `creature_template` SET `gossip_menu_id`=@Gossip+0,`AIName`='SmartAI' WHERE `entry`=19481; -- Archmage Vargoth
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=19284; -- Archmage Vargoth
UPDATE `creature` SET `npcflag`=1 WHERE `guid`=98174; -- Archmage Vargoth
DELETE FROM `creature_template_addon` WHERE `entry`=19481;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(19481,0,0,1,0, NULL); -- Archmage Vargoth
-- Gossip for Archmage Vargoth
DELETE FROM `gossip_menu` WHERE `text_id` IN (14192,14194);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(@Gossip+0,14192),
(@Gossip+1,14194);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@Gossip+0,@Gossip+1) AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@Gossip+0,0,0, 'I have a book that might interest you. Would you like to take a look?',1,1,@Gossip+1,0,0,0,0,NULL),
(@Gossip+1,0,0, 'Thank you! I''ll be sure to notify you if I find anything else.',1,1,0,0,0,0,0,NULL); -- SAI script
DELETE FROM `creature_template_addon` WHERE `entry`=32643;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(32643,0,0,0,3,0,'61478 0'); -- companion pet aura (arcane explosions)

DELETE FROM `smart_scripts` WHERE `entryorguid`=-98174 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-98174,0,0,0,62,0,100,0,@Gossip+1,0,0,0,11,61457,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Archmage Vargoth (Dalaran) - On gossip select cast Kirin Tor Familiar on invoker');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=@Gossip+0 AND `SourceEntry`=14192;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@Gossip+0 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@Gossip+0,14192,0,4,4395,0,0,0, '', 'Archmage Vargoth - Gossip: zone restriction to Dalaran'),
(15,@Gossip+0,0,0,4,4395,0,0,0, '', 'Archmage Vargoth - Gossip option: zone restriction to Dalaran'),
(15,@Gossip+0,0,0,26,44738,1,0,0, '', 'Archmage Vargoth - Gossip option: player should not have item 44738'),
(15,@Gossip+0,0,0,17,1956,0,0,0, '', 'Archmage Vargoth - Gossip option: player should have achiev 1956');
-- FIXME: add a gossip option condition: player should not have spell 61472
/* ################################################################################################
# Zalazane's Fall by Nay and Kaelima
################################################################################################ */
/* ### Variables ### */
SET @CGuid = 208901; -- (Set by TDB team - creature.guid - need X)
SET @GGuid = 151829; -- (Set by TDB team - gameobject.guid - need X)
SET @EquiEntry = 2433; -- (Set by TDB team - creature_equip_template.entry - need X)
SET @Gossip = 21257; -- (Set by TDB team - gossip_menu.entry - need 1)
SET @Event = 61; -- (Set by TDB team - game_event.entry - need 1)
-- Creature enums
SET @N_Vanira = 40184; -- Vanira
SET @N_VaniraTotem = 40187; -- Vanira's Sentry Totem
SET @N_Frog = 40176; -- Sen'jin Frog
SET @N_AtunnedFrog = 40188; -- Atunned Frog
SET @N_Voljin = 40391; -- Vol'jin
SET @N_Uruzin = 40253; -- Champion Uru'zin
SET @N_VoljinBoss = 39654; -- Vol'jin (on the island, starts fight)
SET @N_BatHandler = 40204; -- Handler Marnlek
SET @N_Bat = 40222; -- Scout Bat
SET @N_SpyFrogCredit = 40218; -- Spy Frog Credit
SET @N_TigerCredit = 40301; -- Tiger Matriarch Credit
SET @N_TigerSpirit = 40305; -- Spirit of the Tiger
SET @N_Matriarch = 40312; -- Tiger Matriarch (casts 75163 (Vicious Bite), 61184 (Pounce), 75159 (Claw))
SET @N_Zentabra = 40329; -- Zen'tabra
SET @N_DWarrior = 40392; -- Darkspear Warrior
SET @N_DScout = 40416; -- Darkspear Scout
SET @N_Citizien1 = 40256; -- Troll Citizien (1)
SET @N_Citizien2 = 40257; -- Troll Citizien (2)
SET @N_Volunteer1 = 40260; -- Troll Volunteer
SET @N_Volunteer2 = 40264; -- Troll Volunteer
SET @N_RDancer = 40356; -- Ritual Dancer
SET @N_TDanceleader = 40361; -- Troll Dance Leader
SET @N_DancePart = 40363; -- Dance Participant
SET @N_RDrummer = 40373; -- Ritual Drummer
SET @N_Omen = 40387; -- Omen Event Credit
SET @N_DAncestor = 40388; -- Darkspear Ancestor
SET @N_Voice = 40374; -- Voice of the Spirits
SET @N_Doctor = 40352; -- Witch Doctor Hez'tok
-- Gameobject enums
SET @G_BatTotem = 202833; -- Sen'jin Bat Totem
SET @G_BatStraw = 202834; -- Sen'jin Bat Roost Straw
SET @G_BatFence = 202835; -- Sen'jin Bat Roost Fence
SET @G_BatPost = 202839; -- Sen'jin Bat Roost Fence Post
SET @G_RDrum = 202879; -- Ritual Drum
SET @G_RGong = 202880; -- Ritual Gong
SET @G_RBrazier = 202881; -- Ritual Brazier
SET @G_SRDrum = 202882; -- Small Ritual Drum
SET @G_SRDrum2 = 202883; -- Small Ritual Drum 2
SET @G_Banner = 202885; -- Sen'jin Banner
SET @G_Tent = 202886; -- Sen'jin Tent
SET @G_Table = 202888; -- Sen'jin Table
SET @G_Book1 = 202889; -- Troll Book 1
SET @G_Book2 = 202890; -- Troll Book 2
SET @G_CCrate = 202891; -- Closed Weapon Crate
SET @G_OCrate = 202892; -- Open Weapon Crate
SET @G_SPennant = 202893; -- Sen'jin Pennant
-- Quest enums
SET @Q_DaPerfectSpies = 25444; -- Da Perfect Spies
SET @Q_FrogsAway = 25446; -- Frogs Away!
SET @Q_LadyOfDaTigers = 25470; -- Lady Of Da Tigers
SET @Q_DanceOfDeSpirits = 25480; -- Dance Of De Spirits
SET @Q_TrollinForVolunteers = 25461; -- Trollin' For Volunteers
SET @Q_PreparinForBattle = 25495; -- Preparin For Battle
SET @Q_ZalazanesFall = 25445; -- Zalazane's Fall
-- Spell enums
SET @S_Pickup = 74904; -- Pickup Sen'jin Frog [player -> creature]
SET @S_Pickup2 = 74905; -- Pickup Sen'jin Frog [creature -> player]
SET @S_InvsAura = 75433; -- Spawn Invisibility Aura (QZS 2)
SET @S_FrogsAway = 74977; -- Frogs Away!
SET @S_SeeSenjinFrogInvs = 75434; -- See Sen'jin Frog Invis
SET @S_SeeSpyFrogInvs =74982; -- See Spy Frog Invisibility
SET @S_Taxi_Frog = 74978; -- Echo Isles: Unlearned Spy Frog Taxi
SET @S_Taxi_Troll = 75421; -- Echo Isles: Unlearned Troll Recruit Taxi
SET @S_Taxi_Battle = 75422; -- Echo Isles: Unlearned Troll Battle Taxi
SET @S_SpyFrogInvs = 74980; -- Spy Frog Invisibility
SET @S_SmokeFlare = 74971; -- Red Flare State
SET @S_VisualSpawn = 31517; -- Bind Visual Spawn In DND
SET @S_SpyFrogState = 74917; -- Spy Frog State
SET @S_RideVehicle = 46598; -- Ride Vehicle Hardcoded
SET @S_Tiger = 75147; -- Spirit of the Tiger
SET @S_ForceTiger = 75186; -- Force Cast Spirit of the Tiger
SET @S_NatVisual = 60957; -- Cosmetic Nature Cast
SET @S_TigerAura = 75165; -- Spirit of the Tiger Aura
SET @S_TigerSeeInvs = 75180; -- Detect QZS 3
SET @S_TigerGhost = 22650; -- Ghost Visual
SET @S_BossEmotePAura =75213; -- Boss Emote & No Summon Aura
SET @S_TigerCredit = 40301; -- OCW TOTE On Quest Check (what?)
SET @S_MatriarchShroud = 75179; -- Matriarch's Shroud
SET @S_TigerQuestCredit = 75197; -- Zen'tabra Credit
SET @S_MatriarchSummonF = 75188; -- Force Cast Summon Tiger Matriarch
SET @S_MatriarchSummon = 75187; -- Summon Tiger Matriarch
SET @S_ZentabraSummon = 75181; -- Summon Zen'tabra
SET @S_ZentabraController = 75212; -- Controller Summon Zen'tabra Trigger
SET @S_ZentrabaSmoke = 36747; -- Spawn Smoke (Druid)
SET @S_ZentrabaTransform = 74931; -- [DND] Tiger Transform
SET @S_VolunterSummon1 = 75088; -- Motivate
SET @S_VolunterSummon2 = 75086; -- Motivate

-- Item enums
SET @I_VoljinDrums = 54215; -- Voljin Drums Questitem

/* ### Creatures ### */
-- Templates
UPDATE `creature_template` SET `gossip_menu_id`=11341,`faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`npcflag`=`npcflag`|3,`unit_flags`=`unit_flags`|33024,`equipment_id`=@EquiEntry+0,`unit_class`=2,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_Vanira; -- Vanira
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`speed_run`=1.1428571428571 WHERE `entry`=@N_VaniraTotem; -- Vanira's Sentry Totem
UPDATE `creature_template` SET `AIName`='SmartAI',`baseattacktime`=2000,/*`npcflag`=`npcflag`|16777216,*/`speed_run`=1.1428571428571 WHERE `entry`=@N_Frog; -- Sen'jin Frog
UPDATE `creature_template` SET `faction_A`=190,`faction_H`=190,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`speed_run`=1.1428571428571,`AIName`='SmartAI',`MovementType`=1 WHERE `entry`=@N_AtunnedFrog; -- Atunned Frog
UPDATE `creature_template` SET `gossip_menu_id`=11345,`faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=78,`maxlevel`=78,`baseattacktime`=2000,`npcflag`=`npcflag`|1,`unit_flags`=`unit_flags`|33024,`equipment_id`=191,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_BatHandler; -- Handler Marnlek
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`speed_run`=4.2857142857143 WHERE `entry`=@N_Bat; -- Scout Bat
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571 WHERE `entry`=@N_SpyFrogCredit; -- Spy Frog Credit
UPDATE `creature_template` SET `spell1`=75159,`spell2`=75160,`spell3`=75161,`faction_A`=35,`faction_H`=35,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2500,`unit_flags`=`unit_flags`|16777224,`unit_class`=4,`speed_walk`=2.8,`speed_run`=1.5714285714286,`vehicleid`=736,`attackpower`=1167 WHERE `entry`=@N_TigerSpirit; -- Spirit of the Tiger CHECKME: speed_run and speed_walk
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_TigerCredit; -- Tiger Matriarch Credit
UPDATE `creature_template` SET `faction_A`=2102,`faction_H`=2102,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=1625,`mindmg`=117,`maxdmg`=322,`attackpower`=143,`dmg_multiplier`=1.2,`unit_flags`=`unit_flags`|526336,`dynamicflags`=`dynamicflags`|4,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Matriarch; -- Tiger Matriarch
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|32776,`equipment_id`=1669,`unit_class`=2,`speed_run`=1.1428571428571,`flags_extra`=`flags_extra`|2,`AIName`='SmartAI' WHERE `entry`=@N_Zentabra; -- Zen'tabra
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`npcflag`=`npcflag`|2,`unit_flags`=`unit_flags`|33024,`equipment_id`=@EquiEntry+1,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Uruzin; -- Champion Uru'zin
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33024,`equipment_id`=@EquiEntry+2,`speed_run`=1.1428571428571 WHERE `entry`=@N_DWarrior; -- Darkspear Warrior
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|32768,`equipment_id`=@EquiEntry+3,`speed_run`=1.1428571428571,`InhabitType`=1,`AIName`='SmartAI' WHERE `entry`=@N_DScout; -- Darkspear Scout
UPDATE `creature_template` SET `gossip_menu_id`=11391,`faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=83,`maxlevel`=83,`baseattacktime`=2000,`mindmg`=496,`maxdmg`=674,`attackpower`=783,`dmg_multiplier`=7.5,`npcflag`=`npcflag`|3,`unit_flags`=`unit_flags`|256,`equipment_id`=@EquiEntry+4,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Voljin; -- Vol'jin
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=70,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_RDancer; -- Ritual Dancer
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33280,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_Citizien1; -- Troll Citizien (1)
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33280,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_Citizien2; -- Troll Citizien (2)
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571 WHERE `entry`=@N_TDanceleader; -- Troll Dance Leader
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_walk`=1.6,`speed_run`=2,`InhabitType`=5,`MovementType`=1,`AIName`='SmartAI' WHERE `entry`=@N_DancePart; -- Dance Participant
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=70,`maxlevel`=80,`baseattacktime`=2000,`equipment_id`=36,`unit_class`=2,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_RDrummer; -- Ritual Drummer
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571 WHERE `entry`=@N_Omen; -- Omen Event Credit
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=70,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=@N_DAncestor; -- Darkspear Ancestor
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|0x00008308 WHERE `entry` IN (@N_Volunteer1,@N_Volunteer2); -- Troll Volunteer
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33536,`equipment_id`=@EquiEntry+5,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Voice; -- Voice of the Spirits
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33536,`equipment_id`=@EquiEntry+5,`unit_class`=2,`speed_run`=1.1428571428571,`gossip_menu_id`=@Gossip,`npcflag`=`npcflag`|1,`AIName`='SmartAI' WHERE `entry`=@N_Doctor; -- Witch Doctor Hez'tok
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=@N_VoljinBoss;

-- Models
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31719; -- Vanira
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=0,`gender`=2 WHERE `modelid`=31720; -- Vanira's Sentry Totem
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=1,`gender`=2 WHERE `modelid`=31727; -- Sen'jin Frog
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=2 WHERE `modelid`=22469; -- Atunned Frog
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=31726; -- Handler Marnlek
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=31725; -- Scout Bat
UPDATE `creature_model_info` SET `bounding_radius`=0.4,`combat_reach`=0,`gender`=2 WHERE `modelid`=19595; -- Spy Frog Credit
UPDATE `creature_model_info` SET `bounding_radius`=1.15,`combat_reach`=1,`gender`=0 WHERE `modelid`=31788; -- Spirit of the Tiger
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Tiger Matriarch Credit
UPDATE `creature_model_info` SET `bounding_radius`=1.272,`combat_reach`=2,`gender`=1 WHERE `modelid`=31765; -- Tiger Matriarch
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31734; -- Zen'tabra
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=31762; -- Champion Uru'zin
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31841; -- Darkspear Warrior
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31738; -- Darkspear Scout
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=31736; -- Vol'jin
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=9768; -- Ritual Dancer
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=2589; -- Troll Citizien (1)
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=2588; -- Troll Citizien (2)
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Troll Dance Leader
UPDATE `creature_model_info` SET `bounding_radius`=0.175,`combat_reach`=0,`gender`=2 WHERE `modelid`=22769; -- Dance Participant
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=2589; -- Ritual Drummer
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Omen Event Credit
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=4033; -- Darkspear Ancestor
UPDATE `creature_model_info` SET `bounding_radius`=0.5355,`combat_reach`=2,`gender`=0 WHERE `modelid`=31819; -- Voice of the Spirits

-- Equipments
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN @EquiEntry+0 AND @EquiEntry+5;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@EquiEntry+0,19903,13319,0), -- Vanira
(@EquiEntry+1,33982,33980,49022), -- Champion Uru'zin
(@EquiEntry+2,53924,53933,5870), -- Darkspear Warrior
(@EquiEntry+3,42873,0,5870), -- Darkspear Scout
(@EquiEntry+4,53835,0,14118), -- Vol'jin
(@EquiEntry+5,19909,0,0); -- Voice of the Spirits
-- Addons
DELETE FROM `creature_template_addon` WHERE `entry` IN (@N_VaniraTotem,@N_Frog,@N_AtunnedFrog,@N_BatHandler,@N_Bat,@N_SpyFrogCredit,@N_TigerSpirit,@N_TigerCredit,@N_Matriarch,@N_Zentabra,@N_Uruzin,@N_DWarrior,@N_DScout,@N_Voljin,@N_RDancer,@N_Citizien1,@N_Citizien2,@N_TDanceleader,@N_DancePart,@N_RDrummer,@N_Omen,@N_DAncestor);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@N_VaniraTotem,0,0,1,0,NULL), -- Vanira's Sentry Totem
(@N_Frog,0,65536,1,0, '75433 0'), -- Sen'jin Frog, bytes1=65536 (@S_InvsAura)
(@N_AtunnedFrog,0,0,1,0, '74917 0'), -- Atunned Frog (@S_SpyFrogState)
(@N_BatHandler,0,0,1,0,NULL), -- Handler Marnlek
(@N_Bat,0,33554432,1,0, NULL), -- Scout Bat
(@N_SpyFrogCredit,0,65536,1,0, '74980 0 74971 0'), -- Spy Frog Credit @S_SpyFrogInvs and @S_SmokeFlare
(@N_TigerSpirit,0,65536,1,0, '75180 0 22650 0'), -- Spirit of the Tiger CHECKME: remove auras? @S_TigerSeeInvs and @S_TigerGhost
(@N_TigerCredit,0,0,1,0,NULL), -- Tiger Matriarch Credit
(@N_Matriarch,0,65536,1,0, '75179 0 75179 1'), -- Tiger Matriarch @S_MatriarchShroud
(@N_Zentabra,0,0,0,0,NULL), -- Zentabra
(@N_Uruzin,0,0,2,0, '75075 0 18950 0 18950 1'), -- Champion Uru'zin
(@N_DWarrior,0,0,1,0,NULL), -- Darkspear Warrior
(@N_DScout,31725,0,1,0,NULL), -- Darkspear Scout (mounted)
(@N_Voljin,29261,0,1,0, NULL), -- Vol'jin (mounted)
(@N_RDancer,0,0,1,10, NULL), -- Ritual Dancer
(@N_Citizien1,0,0,1,0, '73940 0'), -- Troll Citizien (1)
(@N_Citizien2,0,0,1,0, '73939 0'), -- Troll Citizien (2)
(@N_TDanceleader,0,0,1,10, NULL), -- Troll Dance Leader
(@N_DancePart,0,0,1,0, '35709 0'), -- Dance Participant
(@N_RDrummer,0,0,1,173, '73940 0'), -- Ritual Drummer
(@N_Omen,0,0,1,0, NULL), -- Omen Event Credit
(@N_DAncestor,0,0,257,10, '73813 0 22650 0'); -- Darkspear Ancestor
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGuid+85 AND @CGuid+92;
INSERT INTO `creature_addon` (`guid`,`emote`,`bytes2`,`auras`) VALUES
(@CGuid+85,10,1, '75228 0'), -- Ritual Dancer
(@CGuid+86,10,1, '75229 0'), -- Ritual Dancer
(@CGuid+87,10,1, '75228 0'), -- Ritual Dancer
(@CGuid+88,10,1, '75230 0'), -- Ritual Dancer
(@CGuid+89,10,1, '75230 0'), -- Ritual Dancer
(@CGuid+90,10,1, '75230 0'), -- Ritual Dancer
(@CGuid+91,10,1, '75228 0'), -- Ritual Dancer
(@CGuid+92,10,1, '75229 0'); -- Ritual Dancer
-- Gossips
DELETE FROM `gossip_menu` WHERE `entry` IN (11341,11345,11391,@Gossip);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(11341,15796), -- Vanira
(11345,15806), -- Handler Marnlek
(11391,15865), -- Vol'jin
(@Gossip,15846); -- Witch Doctor Hez'tok

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (11345,@Gossip);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(11345,0,0, 'Vanira told me to speak to you about borrowing a bat.' ,1,1,0,0,11345*100,0,0,NULL), -- Handler Marnlek (Frogs Away quest)
(11345,1,0, 'I need to get to Razor Hill to reqruit on behalf of Vol''jin. May i borrow a bat?' ,1,1,0,0,11345*100+1,0,0,NULL), -- Handler Marnlek (Trollin' For Volunteers quest)
(11345,2,0, 'I am ready to take back the Echo Isles. Take me to the staging area!' ,1,1,0,0,11345*100+2,0,0,NULL), -- Handler Marnlek (Preparin' For Battle quest)
(@Gossip,0,0, 'Let us consult the omens.' ,1,1,0,0,0,0,0,NULL); -- Witch Doctor Hez'tok (quest Dance of De Spirits)
DELETE FROM `gossip_scripts` WHERE `id` IN (11345*100,11345*100+1,11345*100+2);
INSERT INTO `gossip_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(11345*100+0,0,15,@S_Taxi_Frog,1,0,0,0,0,0), -- Handler Marnlek (Frogs Away quest)
(11345*100+1,0,15,@S_Taxi_Troll,1,0,0,0,0,0),-- Handler Marnlek (Trollin' For Volunteers quest)
(11345*100+2,0,15,@S_Taxi_Battle,1,0,0,0,0,0);-- Handler Marnlek (Prepari' For Battle quest)

-- Spawns
DELETE FROM `creature` WHERE `id` IN (@N_Vanira,@N_VaniraTotem,@N_Frog,@N_BatHandler,@N_Bat,@N_SpyFrogCredit,@N_TigerCredit,@N_Uruzin,@N_DWarrior,@N_DScout,@N_Voljin,@N_RDancer,@N_Citizien1,@N_Citizien2,@N_Doctor);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@CGuid+0,@N_Vanira,1,1,1,0,0,-747.175354,-5003.974,19.505209,3.769911,120,0,0,1,0,0,0), -- Vanira
(@CGuid+1,@N_VaniraTotem,1,1,1,0,0,-747.7049,-5007.78125,18.8993073,3.38593864,120,0,0,1,0,0,0), -- Vanira's Sentry Totem
(@CGuid+2,@N_Frog,1,1,1,0,0,-702.0243,-4936.85938,24.78558,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+3,@N_Frog,1,1,1,0,0,-706.8733,-5089.25342,10.1877956,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+4,@N_Frog,1,1,1,0,0,-717.1079,-5030.84961,16.7545834,0.588063061,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+5,@N_Frog,1,1,1,0,0,-721.449646,-5060.799,14.6723547,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+6,@N_Frog,1,1,1,0,0,-721.4549,-5041.06934,15.9652061,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+7,@N_Frog,1,1,1,0,0,-738.0006,-5049.516,14.9542475,5.759314,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+8,@N_Frog,1,1,1,0,0,-752.2173,-4959.93359,22.16427,1.52473652,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+9,@N_Frog,1,1,1,0,0,-754.166,-4912.5,21.3002,0.8383126,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+10,@N_Frog,1,1,1,0,0,-754.8121,-4931.80273,21.6752,1.62117982,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+11,@N_Frog,1,1,1,0,0,-764.584,-4972.916,20.9381447,1.66710317,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+12,@N_Frog,1,1,1,0,0,-790.7708,-5014.889,15.7722931,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+13,@N_Frog,1,1,1,0,0,-802.0174,-5037.51025,10.57736,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+14,@N_Frog,1,1,1,0,0,-814.3917,-5010.16064,15.0449858,4.40670633,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+15,@N_Frog,1,1,1,0,0,-817.2394,-4942.282,21.2968235,5.06702662,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+16,@N_Frog,1,1,1,0,0,-858.816,-5039.144,3.00985622,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+17,@N_Frog,1,1,1,0,0,-879.258667,-4998.14063,11.6243248,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+18,@N_Frog,1,1,1,0,0,-899.050354,-4994.48633,11.61574,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+19,@N_Frog,1,1,1,0,0,-924.550354,-4933.639,15.4050817,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+20,@N_BatHandler,1,1,1,0,0,-840.052063,-4982.163,14.42927,4.86946869,120,0,0,1,0,0,0), -- Handler Marnlek
(@CGuid+21,@N_Bat,1,1,1,0,0,-833.529541,-4980.7207,17.1929779,4.29351,120,0,0,1,0,0,0), -- Scout Bat
(@CGuid+22,@N_SpyFrogCredit,1,1,1,19595,0,-1020.20831,-5152.76758,0.7509203,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+23,@N_SpyFrogCredit,1,1,1,19595,0,-1040.78821,-5585.186,3.46228218,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+24,@N_SpyFrogCredit,1,1,1,19595,0,-1049.91846,-5542.507,7.80553341,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+25,@N_SpyFrogCredit,1,1,1,19595,0,-1060.92017,-5459.61963,8.204561,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+26,@N_SpyFrogCredit,1,1,1,19595,0,-1061.52954,-5631.46338,4.56439066,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+27,@N_SpyFrogCredit,1,1,1,19595,0,-1066.36108,-5374.9165,6.87270164,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+28,@N_SpyFrogCredit,1,1,1,19595,0,-1088.9635,-5173.884,0.8336973,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+29,@N_SpyFrogCredit,1,1,1,19595,0,-1102.04858,-5435.264,10.6309662,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+30,@N_SpyFrogCredit,1,1,1,19595,0,-1123.28821,-5619.78125,5.64494038,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+31,@N_SpyFrogCredit,1,1,1,19595,0,-1127.76917,-5131.19971,2.93869424,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+32,@N_SpyFrogCredit,1,1,1,19595,0,-1129.83167,-5481.14941,7.60199165,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+33,@N_SpyFrogCredit,1,1,1,19595,0,-1148.42542,-5413.82275,9.589724,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+34,@N_SpyFrogCredit,1,1,1,19595,0,-1188.81775,-5342.51758,4.28526449,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+35,@N_SpyFrogCredit,1,1,1,19595,0,-1194.816,-5617.877,6.84516954,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+36,@N_SpyFrogCredit,1,1,1,19595,0,-1201.60413,-5379.16846,8.589357,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+37,@N_SpyFrogCredit,1,1,1,19595,0,-1240.37854,-5594.7085,8.538581,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+38,@N_SpyFrogCredit,1,1,1,19595,0,-1269.05212,-5386.241,4.37299967,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+39,@N_SpyFrogCredit,1,1,1,19595,0,-1288.60242,-5571.11475,7.43579245,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+40,@N_SpyFrogCredit,1,1,1,19595,0,-1290.526,-5122.43066,1.76108432,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+41,@N_SpyFrogCredit,1,1,1,19595,0,-1304.35938,-5169.80029,0.8500093,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+42,@N_SpyFrogCredit,1,1,1,19595,0,-1319.65625,-5477.335,5.18921232,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+43,@N_SpyFrogCredit,1,1,1,19595,0,-1321.61108,-5527.35938,4.55899572,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+44,@N_SpyFrogCredit,1,1,1,19595,0,-1423.26221,-5171.405,3.53906035,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+45,@N_SpyFrogCredit,1,1,1,19595,0,-1502.29688,-5262.67725,4.59295273,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+46,@N_SpyFrogCredit,1,1,1,19595,0,-1532.30725,-5340.738,7.00164938,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+47,@N_SpyFrogCredit,1,1,1,19595,0,-1589.217,-5340.08154,7.06946659,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+48,@N_SpyFrogCredit,1,1,1,19595,0,-1611.14233,-5275.979,7.61691332,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+49,@N_SpyFrogCredit,1,1,1,19595,0,-654.15625,-5626.69971,7.23921061,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+50,@N_SpyFrogCredit,1,1,1,19595,0,-688.0955,-5517.6875,6.0036335,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+51,@N_SpyFrogCredit,1,1,1,19595,0,-729.5972,-5655.9707,20.0036564,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+52,@N_SpyFrogCredit,1,1,1,19595,0,-732.177063,-5498.76758,5.77328968,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+53,@N_SpyFrogCredit,1,1,1,19595,0,-794.5955,-5544.462,5.39234161,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+54,@N_SpyFrogCredit,1,1,1,19595,0,-794.699646,-5350.50537,2.74348927,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+55,@N_SpyFrogCredit,1,1,1,19595,0,-805.8073,-5674.384,6.65550661,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+56,@N_SpyFrogCredit,1,1,1,19595,0,-835.071167,-5606.038,4.20461655,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+57,@N_SpyFrogCredit,1,1,1,19595,0,-853.2448,-5335.12842,2.75194836,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+58,@N_SpyFrogCredit,1,1,1,19595,0,-954.821167,-5186.238,1.09095335,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+59,@N_TigerCredit,1,1,1,0,0,-1122.29346,-5126.54346,2.91218519,0.7679449,120,0,0,1,0,0,0), -- Tiger Matriarch Credit
(@CGuid+60,@N_Uruzin,1,1,1,0,0,-765.4323,-5018.39746,17.1423054,3.73500466,120,0,0,1,0,0,0), -- Champion Uru'zin
(@CGuid+61,@N_DWarrior,1,1,1,0,0,-732.241333,-5022.276,16.84526,3.89208412,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+62,@N_DWarrior,1,1,1,0,0,-735.364563,-5027.39941,16.4661217,2.00712872,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+63,@N_DWarrior,1,1,1,0,0,-738.178833,-4955.24854,22.872057,4.276057,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+64,@N_DWarrior,1,1,1,0,0,-738.25,-4962.1665,22.7414722,2.09439516,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+65,@N_DWarrior,1,1,1,0,0,-741.2917,-4956.875,22.88887,5.88175964,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+66,@N_DWarrior,1,1,1,0,0,-749.0781,-5000.17041,20.16327,3.89208412,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+67,@N_DWarrior,1,1,1,0,0,-757.1233,-4992.118,21.0182743,3.96189737,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+68,@N_DWarrior,1,1,1,0,0,-763.309,-5027.79541,16.8784733,0.7330383,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+69,@N_DWarrior,1,1,1,0,0,-765.3125,-5030.11133,16.3195953,0.715585,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+70,@N_DWarrior,1,1,1,0,0,-765.8906,-5025.62158,16.8368073,0.715585,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+71,@N_DWarrior,1,1,1,0,0,-767.1684,-5032.358,16.15991,0.7330383,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+72,@N_DWarrior,1,1,1,0,0,-767.9028,-5027.934,16.3112679,0.7679449,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+73,@N_DWarrior,1,1,1,0,0,-768.635437,-5023.29541,16.7641678,0.75049156,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+74,@N_DWarrior,1,1,1,0,0,-769.75,-5030.163,16.0145359,0.715585,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+75,@N_DWarrior,1,1,1,0,0,-770.6458,-5025.61475,16.2830353,0.6981317,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+76,@N_DWarrior,1,1,1,0,0,-771.302063,-5021.15967,16.708334,0.75049156,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+77,@N_DWarrior,1,1,1,0,0,-772.487854,-5027.84375,16.176178,0.5934119,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+78,@N_DWarrior,1,1,1,0,0,-773.3264,-5023.50342,16.5206375,0.7330383,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+79,@N_DWarrior,1,1,1,0,0,-773.822937,-5019.007,16.52002,0.610865235,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+80,@N_DWarrior,1,1,1,0,0,-775.158,-5025.7085,16.1457977,0.75049156,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+81,@N_DWarrior,1,1,1,0,0,-775.8455,-5021.35059,16.11615,0.558505356,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+82,@N_DWarrior,1,1,1,0,0,-777.677063,-5023.559,15.9583549,0.610865235,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+83,@N_DScout,1,1,1,0,0,-860.102844,-5113.565,47.2615623,1.28633785,600,0,0,1,0,0,0), -- Darkspear Scout
(@CGuid+84,@N_Voljin,1,1,1,0,0,-755.1476,-4998.04,20.3369122,4.03171062,120,0,0,1,0,0,0), -- Vol'jin
(@CGuid+85,@N_RDancer,1,1,1,0,0,-794.6799,-4988.15674,17.72195,3.49065852,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+86,@N_RDancer,1,1,1,0,0,-794.896362,-4997.275,17.1909542,3.21140575,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+87,@N_RDancer,1,1,1,0,0,-800.975769,-4981.555,17.78231,4.276057,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+88,@N_RDancer,1,1,1,0,0,-801.497,-5003.56934,16.5553436,2.21656823,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+89,@N_RDancer,1,1,1,0,0,-810.093933,-4981.34033,17.4377289,5.148721,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+90,@N_RDancer,1,1,1,0,0,-810.6152,-5003.353,16.2423363,0.994837642,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+91,@N_RDancer,1,1,1,0,0,-816.6938,-4987.63574,16.7508545,5.846853,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+92,@N_RDancer,1,1,1,0,0,-816.9091,-4996.754,16.6877289,0.34906584,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+93,@N_Citizien1,1,1,1,0,0,246.170135,-4714.729,15.371768,5.6548667,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+94,@N_Citizien1,1,1,1,0,0,247.421875,-4675.27246,16.1996269,0.296705961,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+95,@N_Citizien1,1,1,1,0,0,248.00174,-4672.84033,16.0127563,5.41052055,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+96,@N_Citizien1,1,1,1,0,0,271.295135,-4739.4585,9.89915,5.794493,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+97,@N_Citizien1,1,1,1,0,0,273.3559,-4774.604,12.1704369,0.9599311,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+98,@N_Citizien1,1,1,1,0,0,273.432281,-4738.96338,9.832179,3.73500466,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+99,@N_Citizien1,1,1,1,0,0,343.7361,-4791.71533,11.36291,0.9599311,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+100,@N_Citizien1,1,1,1,0,0,351.678833,-4693.84033,16.5411034,2.25147462,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+101,@N_Citizien1,1,1,1,0,0,369.43576,-4690.94971,15.8566027,5.39306736,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+102,@N_Citizien1,1,1,1,0,0,375.81424,-4775.57666,12.5081263,5.75958633,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+103,@N_Citizien1,1,1,1,0,0,408.949646,-4703.797,9.698563,4.60766935,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+104,@N_Citizien1,1,1,1,0,0,411.1059,-4704.4585,9.560572,3.822271,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+105,@N_Citizien2,1,1,1,0,0,246.520828,-4717.009,15.2929316,1.53588974,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+106,@N_Citizien2,1,1,1,0,0,254.949661,-4698.413,14.71032,2.72271371,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+107,@N_Citizien2,1,1,1,0,0,266.074646,-4829.903,10.9051781,0.331612557,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+108,@N_Citizien2,1,1,1,0,0,289.449646,-4820.14258,10.6073713,0.9599311,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+109,@N_Citizien2,1,1,1,0,0,293.4236,-4798.14063,10.0895939,2.25147462,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+110,@N_Citizien2,1,1,1,0,0,333.5087,-4815.271,10.6071978,2.82743335,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+111,@N_Citizien2,1,1,1,0,0,338.1736,-4669.69434,16.5411034,4.712389,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+112,@N_Citizien2,1,1,1,0,0,343.204865,-4831.057,10.1974783,0.2443461,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+113,@N_Citizien2,1,1,1,0,0,343.3646,-4789.488,11.7296114,6.091199,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+114,@N_Citizien2,1,1,1,0,0,345.03125,-4831.41162,10.3018608,2.60054064,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+115,@N_Citizien2,1,1,1,0,0,349.482635,-4724.882,10.3245821,3.12413931,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+116,@N_Citizien2,1,1,1,0,0,375.765625,-4777.94629,12.5297422,0.7679449,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+117,@N_Doctor,1,1,1,0,0,-805.0104,-4975.75,17.75085,4.655138,120,0,0,1,0,0,0); -- Witch Doctor Hez'tok

/* ### Gameobjects ### */
-- Templates
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatTotem; -- Sen'jin Bat Totem
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatStraw; -- Sen'jin Bat Roost Straw
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatFence; -- Sen'jin Bat Roost Fence
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatPost; -- Sen'jin Bat Roost Fence Post
UPDATE `gameobject_template` SET `faction`=114 WHERE `entry`=@G_RDrum; -- Ritual Drum
UPDATE `gameobject_template` SET `faction`=114 WHERE `entry`=@G_RGong; -- Ritual Gong
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_Banner; -- Sen'jin Banner
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_Tent; -- Sen'jin Tent
-- Spawns
DELETE FROM `gameobject` WHERE `id` IN (@G_BatTotem,@G_BatStraw,@G_BatFence,@G_BatPost,@G_RDrum,@G_RGong,@G_RBrazier,@G_SRDrum,@G_SRDrum2,@G_Banner,@G_Tent,@G_Table,@G_Book1,@G_Book2,@G_CCrate,@G_OCrate,@G_SPennant);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GGuid+0,@G_BatTotem,1,1,1,-839.1424,-4978.337,14.5841064,-2.94959545,0,0,0,0,120,0,1), -- Sen'jin Bat Totem
(@GGuid+1,@G_BatStraw,1,1,1,-833.6285,-4980.71338,14.823576,-2.70525527,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Straw
(@GGuid+2,@G_BatFence,1,1,1,-827.066,-4983.64063,15.518714,-3.07176614,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Fence
(@GGuid+3,@G_BatFence,1,1,1,-829.5955,-4978.009,15.6437654,-2.44346023,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Fence
(@GGuid+4,@G_BatPost,1,1,1,-831.7917,-4975.60938,15.85345,-2.40855432,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Fence Post
(@GGuid+5,@G_RDrum,1,1,1,-797.4774,-4972.70166,17.8050346,-2.12930059,0,0,0,0,120,0,1), -- Ritual Drum                            
(@GGuid+6,@G_RGong,1,1,1,-789.6094,-4979.12842,18.0358353,-2.54817939,0,0,0,0,120,0,1), -- Ritual Gong
(@GGuid+7,@G_RBrazier,1,1,1,-806.4583,-4993.28125,16.5453663,0,0,0,0,0,120,0,1), -- Ritual Brazier
(@GGuid+8,@G_SRDrum,1,1,1,-799.1007,-4987.36475,17.63783,0.2792516,0,0,0,0,120,0,1), -- Small Ritual Drum
(@GGuid+9,@G_SRDrum,1,1,1,-811.529541,-4988.205,17.119791,-1.08210289,0,0,0,0,120,0,1), -- Small Ritual Drum
(@GGuid+10,@G_SRDrum2,1,1,1,-799.7882,-4986.07275,17.487505,0.2792516,0,0,0,0,120,0,1), -- Small Ritual Drum 2
(@GGuid+11,@G_SRDrum2,1,1,1,-810.487854,-4987.1665,17.1008987,-1.08210289,0,0,0,0,120,0,1), -- Small Ritual Drum 2
(@GGuid+12,@G_Banner,1,1,1,-747.2708,-4998.53467,20.1927032,-2.373644,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+13,@G_Banner,1,1,1,-755.0156,-4990.882,20.33256,-2.321287,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+14,@G_Banner,1,1,1,-763.5799,-4919.818,20.1778774,-0.122172989,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+15,@G_Banner,1,1,1,-764.842041,-4936.15967,21.0983143,-0.209439442,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+16,@G_Banner,1,1,1,-775.4427,-4895.79541,19.8775959,0.733038247,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+17,@G_Banner,1,1,1,-789.1441,-4880.585,19.14895,0.7504908,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+18,@G_Banner,1,1,1,-834.1094,-4873.14746,20.0067558,1.16936862,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+19,@G_Banner,1,1,1,-857.8316,-4945.30566,20.62204,2.70525527,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+20,@G_Banner,1,1,1,-863.6007,-4916.259,19.7371979,-2.28637886,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+21,@G_Tent,1,1,1,-736.0573,-5025.12842,16.7929783,2.75761318,0,0,0,0,120,0,1), -- Sen'jin Tent
(@GGuid+22,@G_Tent,1,1,1,-738.6719,-4956.72754,22.8236065,2.75761318,0,0,0,0,120,0,1), -- Sen'jin Tent
(@GGuid+23,@G_Table,1,1,1,-736.4427,-5024.759,16.54466,0,0,0,0,0,120,0,1), -- Sen'jin Table
(@GGuid+24,@G_Table,1,1,1,-739.4375,-4957.403,22.8180714,0,0,0,0,0,120,0,1), -- Sen'jin Table
(@GGuid+25,@G_Book1,1,1,1,-735.8073,-5024.637,17.6406937,-0.6632232,0,0,0,0,120,0,1), -- Troll Book 1
(@GGuid+26,@G_Book1,1,1,1,-737.0833,-5024.98438,17.5850124,-3.10665226,0,0,0,0,120,0,1), -- Troll Book 1
(@GGuid+27,@G_Book1,1,1,1,-739.1528,-4958.62158,23.8722477,-1.23918331,0,0,0,0,120,0,1), -- Troll Book 1
(@GGuid+28,@G_Book2,1,1,1,-736.213562,-5025.762,17.5919647,-1.2566359,0,0,0,0,120,0,1), -- Troll Book 2
(@GGuid+29,@G_Book2,1,1,1,-739.194458,-4957.163,23.8564358,0.994837165,0,0,0,0,120,0,1), -- Troll Book 2
(@GGuid+30,@G_Book2,1,1,1,-740.059,-4958.033,23.8347683,-2.84488273,0,0,0,0,120,0,1), -- Troll Book 2
(@GGuid+31,@G_CCrate,1,1,1,-740.7344,-5022.94775,16.8128815,1.3264482,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+32,@G_CCrate,1,1,1,-740.8455,-5023.08154,17.3481083,1.79768872,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+33,@G_CCrate,1,1,1,-742.066,-4997.028,20.3147964,-0.0523588844,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+34,@G_CCrate,1,1,1,-742.098938,-4997.07129,20.8562927,-0.733038247,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+35,@G_CCrate,1,1,1,-743.295166,-4954.14258,22.7840157,1.3264482,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+36,@G_CCrate,1,1,1,-743.3125,-4954.191,23.3492069,2.86233544,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+37,@G_CCrate,1,1,1,-806.2153,-4925.30225,19.9984951,1.3264482,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+38,@G_CCrate,1,1,1,-806.2483,-4925.19775,19.4074268,-2.23401761,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+39,@G_CCrate,1,1,1,-819.258667,-4934.972,21.0808868,-1.04719758,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+40,@G_CCrate,1,1,1,-819.3316,-4935,20.471838,-1.58824873,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+41,@G_OCrate,1,1,1,-740.9323,-5023.299,17.89152,-2.513274,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+42,@G_OCrate,1,1,1,-742.0833,-4997.009,21.4263363,-2.513274,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+43,@G_OCrate,1,1,1,-743.2639,-4954.288,23.9839115,2.30383062,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+44,@G_OCrate,1,1,1,-819.381958,-4934.98438,21.6449852,-0.366517574,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+45,@G_SPennant,1,1,1,-729.473938,-5019.743,27.5368786,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+46,@G_SPennant,1,1,1,-732.1042,-4951.34033,33.59528,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+47,@G_SPennant,1,1,1,-735.2778,-5033.16162,27.6115456,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+48,@G_SPennant,1,1,1,-736.4948,-5024.741,32.8763771,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+49,@G_SPennant,1,1,1,-737.885437,-4964.80371,33.6575661,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+50,@G_SPennant,1,1,1,-739.0625,-4956.28662,39.0746231,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+51,@G_SPennant,1,1,1,-744.319458,-5021.384,27.2134647,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+52,@G_SPennant,1,1,1,-746.8889,-4953.03,33.6572571,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+53,@G_SPennant,1,1,1,-775.2899,-4910.69434,32.3446465,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+54,@G_SPennant,1,1,1,-784.7708,-4942.91846,55.81524,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+55,@G_SPennant,1,1,1,-802.7708,-4915.73633,29.8921642,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+56,@G_SPennant,1,1,1,-802.798645,-4896.53662,30.4030666,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+57,@G_SPennant,1,1,1,-835.0399,-4898.42725,30.9498634,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+58,@G_SPennant,1,1,1,-842.7656,-4939.89941,33.59177,2.40855432,0,0,0,0,120,0,1); -- Sen'jin Pennant


/* ### Quests ### */
DELETE FROM `disables` WHERE `entry` IN (@Q_DaPerfectSpies,@Q_FrogsAway,@Q_LadyOfDaTigers,@Q_DanceOfDeSpirits,@Q_TrollinForVolunteers,@Q_PreparinForBattle,@Q_ZalazanesFall); -- WTF.
-- Templates
UPDATE `quest_template` SET `PrevQuestId`=@Q_DaPerfectSpies WHERE `entry`=@Q_FrogsAway;
UPDATE `quest_template` SET `PrevQuestId`=@Q_FrogsAway WHERE `entry`=@Q_TrollinForVolunteers;
UPDATE `quest_template` SET `PrevQuestId`=@Q_TrollinForVolunteers WHERE `entry`=@Q_LadyOfDaTigers;
UPDATE `quest_template` SET `PrevQuestId`=@Q_LadyOfDaTigers WHERE `entry`=@Q_DanceOfDeSpirits;
UPDATE `quest_template` SET `PrevQuestId`=@Q_DanceOfDeSpirits WHERE `entry`=@Q_PreparinForBattle;
UPDATE `quest_template` SET `PrevQuestId`=@Q_PreparinForBattle WHERE `entry`=@Q_ZalazanesFall;
UPDATE `quest_template` SET `OfferRewardText` = 'These be enough for me purposes. Now comes de hard part.' WHERE `entry`=@Q_DaPerfectSpies;
UPDATE `quest_template` SET `OfferRewardText` = 'I''m already beginnin'' to see what de frogs are seein''. Ya done it perfectly, $N. Now Vol''jin and I will see what Zalazane be plannin''.' WHERE `entry`=@Q_FrogsAway;
UPDATE `quest_template` SET `OfferRewardText` = 'Vanira''s frog be tellin'' de truth, den? Dis tiger be a druid and an ally? We couldn''t be hopin'' for a better outcome. Dis be a good omen for de coming battle.' WHERE `entry`=@Q_LadyOfDaTigers;
UPDATE `quest_template` SET `OfferRewardText` = 'Ya found some good ones. I be trainin'' them hard and we won''t stop until we''ve driven Zalazane from our islands.' WHERE `entry`=@Q_TrollinForVolunteers;
UPDATE `quest_template` SET `OfferRewardText` = 'I will take de spirits'' advice to heart. Wit'' dem behind us and de power of de ancient loas of de Darkspear Tribe, we be ready to reclaim what''s ours!' WHERE `entry`=@Q_DanceOfDeSpirits;
UPDATE `quest_template` SET `OfferRewardText` = 'At last, everythin'' be ready. Now, we show Zalazane what happen to dose who defy de Darkspears!' WHERE `entry`=@Q_PreparinForBattle;
UPDATE `quest_template` SET `OfferRewardText` = '$N, you''d be a mighty warrior and a fierce commrade to da Darkspear trolls. De Echo Isles are OURS now and we couldn''ta done it wit''out ya.$B$BTake dis cloak. Wear it wit pride. You''d be a member of da tribe now!$B$BIn no time, da trolls will have a home again and we have you to thank for dat.' WHERE `entry`=@Q_ZalazanesFall;
-- Relations
DELETE FROM `creature_involvedrelation` WHERE `id` IN (@N_Vanira,@N_Voljin,@N_Uruzin,@N_VoljinBoss);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(@N_Vanira,@Q_DaPerfectSpies),
(@N_Vanira,@Q_FrogsAway),
(@N_Voljin,@Q_LadyOfDaTigers),
(@N_Voljin,@Q_DanceOfDeSpirits),
(@N_Uruzin,@Q_TrollinForVolunteers),
(@N_VoljinBoss,@Q_PreparinForBattle),
(@N_Voljin,@Q_ZalazanesFall);
-- Map POI
DELETE FROM `quest_poi` WHERE `questid` IN (@Q_FrogsAway,@Q_TrollinForVolunteers,@Q_LadyOfDaTigers,@Q_DanceOfDeSpirits,@Q_PreparinForBattle,@Q_DaPerfectSpies);
INSERT INTO `quest_poi` (`questid`,`id`,`objIndex`,`mapId`,`WorldMapAreaId`,`FloorId`,`unk3`,`unk4`) VALUES
(@Q_FrogsAway,0,0,1,4,0,0,1),(@Q_FrogsAway,1,0,1,4,0,0,1),
(@Q_FrogsAway,2,0,1,4,0,0,1),(@Q_FrogsAway,3,0,1,4,0,0,1),
(@Q_FrogsAway,4,-1,1,4,0,0,1),(@Q_TrollinForVolunteers,0,0,1,4,0,0,1),
(@Q_TrollinForVolunteers,1,-1,1,4,0,0,1),(@Q_LadyOfDaTigers,0,0,1,4,0,0,1),
(@Q_LadyOfDaTigers,1,-1,1,4,0,0,1),(@Q_DanceOfDeSpirits,0,0,1,4,0,0,1),
(@Q_DanceOfDeSpirits,1,-1,1,4,0,0,1),(@Q_PreparinForBattle,0,-1,1,4,0,0,1),
(@Q_DaPerfectSpies,0,-1,1,4,0,0,1),(@Q_DaPerfectSpies,1,10,1,4,0,0,7),
(@Q_DaPerfectSpies,2,1,1,4,0,0,7);
DELETE FROM `quest_poi_points` WHERE `questid` IN (@Q_FrogsAway,@Q_TrollinForVolunteers,@Q_LadyOfDaTigers,@Q_DanceOfDeSpirits,@Q_PreparinForBattle,@Q_DaPerfectSpies);
INSERT INTO `quest_poi_points` (`questId`,`id`,`x`,`y`) VALUES
(@Q_FrogsAway,0,-1041,-5585),(@Q_FrogsAway,0,-1062,-5631),(@Q_FrogsAway,0,-1066,-5375),
(@Q_FrogsAway,0,-1189,-5343),(@Q_FrogsAway,0,-1195,-5618),(@Q_FrogsAway,0,-1269,-5386),
(@Q_FrogsAway,0,-1289,-5571),(@Q_FrogsAway,0,-1320,-5477),(@Q_FrogsAway,0,-1322,-5527),
(@Q_FrogsAway,1,-1502,-5263),(@Q_FrogsAway,1,-1532,-5341),(@Q_FrogsAway,1,-1589,-5340),
(@Q_FrogsAway,1,-1611,-5276),(@Q_FrogsAway,2,-1020,-5153),(@Q_FrogsAway,2,-1089,-5174),
(@Q_FrogsAway,2,-1128,-5131),(@Q_FrogsAway,2,-955,-5186),(@Q_FrogsAway,3,-654,-5627),
(@Q_FrogsAway,3,-688,-5518),(@Q_FrogsAway,3,-730,-5656),(@Q_FrogsAway,3,-732,-5499),
(@Q_FrogsAway,3,-795,-5544),(@Q_FrogsAway,3,-806,-5674),(@Q_FrogsAway,3,-835,-5606),
(@Q_FrogsAway,4,-747,-5004),(@Q_TrollinForVolunteers,0,246,-4715),
(@Q_TrollinForVolunteers,0,247,-4675),(@Q_TrollinForVolunteers,0,248,-4673),
(@Q_TrollinForVolunteers,0,266,-4830),(@Q_TrollinForVolunteers,0,284,-4628),
(@Q_TrollinForVolunteers,0,302,-4612),(@Q_TrollinForVolunteers,0,343,-4831),
(@Q_TrollinForVolunteers,0,345,-4831),(@Q_TrollinForVolunteers,0,376,-4778),
(@Q_TrollinForVolunteers,0,380,-4661),(@Q_TrollinForVolunteers,0,411,-4704),
(@Q_TrollinForVolunteers,1,-765,-5018),(@Q_LadyOfDaTigers,0,-1122,-5127),
(@Q_LadyOfDaTigers,1,-755,-4998),(@Q_DanceOfDeSpirits,0,-805,-4976),
(@Q_DanceOfDeSpirits,1,-755,-4998),(@Q_PreparinForBattle,0,-804,-5373),
(@Q_DaPerfectSpies,0,-747,-5004),(@Q_DaPerfectSpies,1,-1014,-4911),
(@Q_DaPerfectSpies,1,-644,-4999),(@Q_DaPerfectSpies,1,-673,-4932),
(@Q_DaPerfectSpies,1,-673,-5062),(@Q_DaPerfectSpies,1,-736,-5100),
(@Q_DaPerfectSpies,1,-740,-4873),(@Q_DaPerfectSpies,1,-808,-4831),
(@Q_DaPerfectSpies,1,-808,-5100),(@Q_DaPerfectSpies,1,-887,-5062),
(@Q_DaPerfectSpies,1,-892,-4776),(@Q_DaPerfectSpies,1,-959,-4995),
(@Q_DaPerfectSpies,1,-984,-4785),(@Q_DaPerfectSpies,2,-749,-5024);

/* # Quest fixes # */

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@N_Frog,@N_TigerSpirit);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(@N_Frog,@S_Pickup,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,1,0,0,0),
(@N_Frog,@S_Pickup2,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,3,0,0,0),
(@N_TigerSpirit,@S_RideVehicle,0,0,0,1,0,0,0); -- Spirit of the Tiger - Ride Vehicle Hardcoded

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@N_Frog,@N_AtunnedFrog,@N_Vanira,@N_Zentabra,@N_DScout,@N_Citizien1,@N_Citizien2,@N_Doctor,@N_DancePart,@N_RDrummer) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@N_Vanira*100,@N_Zentabra*100,@N_DScout*100,@N_Doctor*100) AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)VALUES
(@N_Frog,0,0,0,8,0,100,0,@S_Pickup,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: Senjin Frog - add aura'),
(@N_AtunnedFrog,0,0,0,54,0,100,0,0,0,0,0,33,@N_SpyFrogCredit,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Echo Isles: Spy Frog Killcredit'), -- FIXME: should be replaced by proper flare targeting
(@N_AtunnedFrog,0,1,0,25,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Attuned Frog: On reset set random movement'),
(@N_Vanira,0,0,0,19,0,100,0,@Q_LadyOfDaTigers,0,0,0,80,@N_Vanira*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On quest accept run script'),
(@N_Vanira*100,9,0,0,0,0,100,0,0,0,0,0,11,@S_ForceTiger,0,0,0,0,0,7,0,0,0,0,0,0,0,'Echo Isles: Cast Force Tiger on player'),
(@N_Vanira*100,9,1,0,0,0,100,0,0,0,0,0,11,@S_NatVisual,0,0,0,0,0,1,0,0,0,0,0,0,0,'Echo Isles: Cast Nature Visual on self'),
(@N_Vanira*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Echo Isles: Say Text 0'),
(@N_Vanira*100,9,3,0,0,0,100,0,500,500,0,0,86,75165,0,22,0,0,0,1,0,0,0,0,0,0,0,'Echo Isles: Force Tiger cast 75165 on self'),
(@N_Zentabra,0,0,0,25,0,100,0,0,0,0,0,80,@N_Zentabra*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Call actionlist on spawn'),
(@N_Zentabra*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Set orientation to player'),
(@N_Zentabra*100,9,1,0,0,0,100,0,0,0,0,0,11,@S_ZentrabaSmoke,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Cast spawn smoke effect on self'),
(@N_Zentabra*100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(@N_Zentabra*100,9,3,0,0,0,100,0,1500,1500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
(@N_Zentabra*100,9,4,0,0,0,100,0,5500,5500,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(@N_Zentabra*100,9,5,0,0,0,100,0,5500,5500,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(@N_Zentabra*100,9,6,0,0,0,100,0,5500,5500,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(@N_Zentabra*100,9,7,0,0,0,100,0,0,0,0,0,33,@N_TigerCredit,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Award kill credit to player'),
(@N_Zentabra*100,9,8,0,0,0,100,0,5500,5500,0,0,11,@S_ZentrabaTransform,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Cast tiger transform on self'),
(@N_Zentabra*100,9,9,0,0,0,100,0,100,100,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set run on self'),
(@N_Zentabra*100,9,10,0,0,0,100,0,0,0,0,0,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Move self forward 10 yards'),
(@N_Zentabra*100,9,11,0,0,0,100,0,600,600,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Despawn self'),
(@N_DScout,0,0,0,25,0,100,0,0,0,0,0,53,1,@N_DScout,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Start waypath on spawn'),
(@N_DScout,0,1,0,40,0,100,0,1,@N_DScout,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Set fly = 0 on waypoint 1'),
(@N_DScout,0,2,0,40,0,100,0,1,@N_DScout,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Set run = 0 on waypoint 1'),
(@N_DScout,0,3,0,40,0,100,0,1,@N_DScout,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Unmount on waypoint 1'),
(@N_DScout,0,4,0,40,0,100,0,6,@N_DScout,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Pause waypoint on waypoint 6'),
(@N_DScout,0,5,0,40,0,100,0,6,@N_DScout,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0.820305, 'Darkspear Scout: Change orientation on waypoint 6'),
(@N_DScout,0,6,0,40,0,100,0,6,@N_DScout,0,0,80,@N_DScout*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Run script on waypoint 6'),
(@N_DScout,0,7,0,40,0,100,0,9,@N_DScout,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Despawn on waypoint 9'),
(@N_DScout*100,9,0,0,0,0,100,0,0,0,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_DScout*100,9,1,0,0,0,50,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random text'),
(@N_DScout*100,9,2,0,0,0,50,0,1000,1000,0,0,1,0,0,0,0,0,0,9,@N_Voljin,0,15,0,0,0,0, 'Vol''Jin: Reply to Darkspear Scout'),
(@N_DScout*100,9,3,0,0,0,100,0,2000,2000,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_DScout*100,9,4,0,0,0,100,0,6000,6000,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_Citizien1,0,0,0,8,0,100,0,@S_VolunterSummon1,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On spellhit - force despawn'),
(@N_Citizien2,0,0,0,8,0,100,0,@S_VolunterSummon2,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On spellhit - force despawn'),
(@N_Doctor, 0,0,0,62,0,0,0,@Gossip+0,0,0,0,80,@N_Doctor*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - On gossip select start script'),
(@N_Doctor*100,9,0,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Remove gossip flag'),
(@N_Doctor*100,9,1,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 0'),
(@N_Doctor*100,9,2,0,0,0,100,0,1000,1000,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-812.137,-4986.7,17.3759,5.89921, 'Witch Doctor Hez''tok - Summon Ritual Drummer (1)'),
(@N_Doctor*100,9,3,0,0,0,100,0,0,0,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-798.187,-4985.52,17.7904,4.41568, 'Witch Doctor Hez''tok - Summon Ritual Drummer (2)'),
(@N_Doctor*100,9,4,0,0,0,100,0,0,0,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-799.888,-4975.01,17.9325,0.942478, 'Witch Doctor Hez''tok - Summon Ritual Drummer (3)'),
(@N_Doctor*100,9,5,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-806.2,-4989.5,17.5177,0, 'Witch Doctor Hez''tok - Move to pos'),
(@N_Doctor*100,9,6,0,0,0,100,0,6500,6500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 1'),
(@N_Doctor*100,9,7,0,0,0,100,0,5500,5500,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 2'),
(@N_Doctor*100,9,8,0,0,0,100,0,3500,3500,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,9,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 3'),
(@N_Doctor*100,9,10,0,0,0,100,0,2500,2500,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,11,0,0,0,100,0,5000,5000,0,0,11,56745,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Drink Alcohol self'),
(@N_Doctor*100,9,12,0,0,0,100,0,600,600,0,0,11,29389,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Firebreathing self'),
(@N_Doctor*100,9,13,0,0,0,100,0,4000,4000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Set bytes1 kneel state'),
(@N_Doctor*100,9,14,0,0,0,100,0,1000,1000,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-805.8477,-5003.044,20.18328,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (1)'),
(@N_Doctor*100,9,15,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-801.0605,-4998.501,18.59358,4.41568, 'Witch Doctor Hez''tok - Summon Dance Participant (2)'),
(@N_Doctor*100,9,16,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-808.2397,-4985.208,19.54311,0.942478, 'Witch Doctor Hez''tok - Summon Dance Participant (3)'),
(@N_Doctor*100,9,17,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-799.2618,-4994.353,19.61933,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (4)'),
(@N_Doctor*100,9,18,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-797.8184,-4986.597,21.60157,4.41568, 'Witch Doctor Hez''tok - Summon Dance Participant (5)'),
(@N_Doctor*100,9,19,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-805.1284,-4987.553,18.79003,0.942478, 'Witch Doctor Hez''tok - Summon Dance Participant (6)'),
(@N_Doctor*100,9,20,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-814.1109,-5001.676,19.44409,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (7)'),
(@N_Doctor*100,9,21,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-795.7561,-4993.671,21.80729,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (8)'),
(@N_Doctor*100,9,22,0,0,0,100,0,1000,1000,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-790.217041,-4999.733,17.171814,2.84488654, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (1)'),
(@N_Doctor*100,9,23,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-792.0052,-4994.14258,17.4839725,2.70526028, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (2)'),
(@N_Doctor*100,9,24,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-795.2049,-5003.078,17.716095,2.46091413, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (3)'),
(@N_Doctor*100,9,25,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-799.2274,-5005.68066,16.6322536,2.11184835, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (4)'),
(@N_Doctor*100,9,26,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-799.2557,-4990.76172,17.6279469,2.70527148, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (5)'),
(@N_Doctor*100,9,27,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-801.422058,-4998.04346,17.0008545,2.46088934, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (6)'),
(@N_Doctor*100,9,28,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-805.4358,-5002.88525,16.544487,1.727876, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (7)'),
(@N_Doctor*100,9,29,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-807.135,-4997.469,17.0008545,1.15000379, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (8)'),
(@N_Doctor*100,9,30,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-810.3698,-4993.825,17.1258545,0.808653831, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (9)'),
(@N_Doctor*100,9,31,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-810.3889,-5004.778,16.12407,1.15191734, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (10)'),
(@N_Doctor*100,9,32,0,0,0,100,0,7000,7000,0,0,11,70663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Shadow Nova self'),
(@N_Doctor*100,9,33,0,0,0,100,0,0,0,0,0,11,31309,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Spirit Particles self'),
(@N_Doctor*100,9,34,0,0,0,100,0,0,0,0,0,91,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Set bytes1 none'),
(@N_Doctor*100,9,35,0,0,0,100,0,100,100,0,0,3,@N_Voice,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change entry to Voice of the Spirits'),
(@N_Doctor*100,9,36,0,0,0,100,0,100,100,0,0,3,0,31819,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change model to Voice of the Spirits'),
(@N_Doctor*100,9,37,0,0,0,100,0,1000,1000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 4'),
(@N_Doctor*100,9,38,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 5'),
(@N_Doctor*100,9,39,0,0,0,100,0,3000,3000,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,40,0,0,0,100,0,3500,3500,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 6'),
(@N_Doctor*100,9,41,0,0,0,100,0,6000,6000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 7'),
(@N_Doctor*100,9,42,0,0,0,100,0,4500,4500,0,0,5,274,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,43,0,0,0,100,0,5000,5000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 8'),
(@N_Doctor*100,9,44,0,0,0,100,0,4500,4500,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,45,0,0,0,100,0,5500,5500,0,0,11,70663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Shadow Nova self'),
(@N_Doctor*100,9,46,0,0,0,100,0,100,100,0,0,28,31309,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Remove aura Spirit Particles'),
(@N_Doctor*100,9,47,0,0,0,100,0,0,0,0,0,3,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change entry and model to Witch Doctor Hez''tok'),
(@N_Doctor*100,9,48,0,0,0,100,0,4000,4000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 9'),
(@N_Doctor*100,9,49,0,0,0,100,0,2500,2500,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,50,0,0,0,100,0,0,0,0,0,85,75319,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Omen Event Credit invoker'), -- working
-- (@N_Doctor*100,9,50,0,0,0,100,0,0,0,0,0,11,75319,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Omen Event Credit self'), -- how it shold be but not working
(@N_Doctor*100,9,51,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-805.0104,-4975.75,17.75085,0, 'Witch Doctor Hez''tok - Move to pos'),
(@N_Doctor*100,9,52,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.625123, 'Witch Doctor Hez''tok - Change orientation'),
(@N_Doctor*100,9,53,0,0,0,100,0,2000,2000,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Enable gossip flag'),
(@N_DancePart,0,0,0,25,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dance Participant - On reset set random movement'),
(@N_DancePart,0,1,0,25,0,100,0,0,0,0,0,3,0,22769,0,0,0,0,1,0,0,0,0,0,0,0, 'Dance Participant - On reset set model'),
(@N_RDrummer,0,0,0,1,0,100,0,0,0,1000,2000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play emote attack 2h every 1 or 2 secs'),
(@N_RDrummer,0,1,0,1,0,100,0,0,0,5000,5000,11,75313,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Cast Bang Ritual Gong every 5 seconds'),
(@N_RDrummer,0,2,0,1,0,100,1,4000,4000,0,0,4,7294,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play TrollDrumLoop after 4 seconds of spawn - not repeteable'),
(@N_RDrummer,0,3,0,1,0,100,0,0,0,30000,30000,4,7294,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play Drumms sound every 30 secs');

DELETE FROM `creature_text` WHERE `entry` IN (@N_Vanira,@N_Zentabra,@N_Volunteer1,@N_Volunteer2,@N_Matriarch,@N_TigerCredit,@N_Doctor,@N_DScout,@N_Voljin);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@N_Vanira,0,0, 'O spirit of de tigers, lend $N your power and help us find de answers we seek!',0,0,100,5,0,0, 'Vanira'),
(@N_Zentabra,0,0, 'Dat be enough for now!',0,0,100,25,0,0, 'Zen''tabra'),
(@N_Zentabra,1,0, 'Don''t be lookin'' so surprised. Your shaman friend has sharp eyes, or should I say, sharp frogs.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Zentabra,2,0, 'My kind, da druids, we been layin'' low for some time now. We been waitin'' to see when an'' if Vol''jin might return.',0,0,100,11,0,0, 'Zen''tabra'),
(@N_Zentabra,3,0, 'Now dat it looks like de Darkspear be returnin'' to these isles, maybe de time has come for us to reveal ourselves.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Zentabra,4,0, 'Go back to Vol''jin an'' tell him dis: Zen''tabra stands ready to help him in de coming battle.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Volunteer1,0,0, 'Sign me up!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,1, 'Anythin'' for Vol''jin!',0,0,100,0,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,2, 'I''d be glad to help.',0,0,100,273,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,3, 'Just point me at de enemy!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,0, 'Sign me up!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,1, 'Anythin'' for Vol''jin!',0,0,100,0,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,2, 'I''d be glad to help.',0,0,100,273,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,3, 'Just point me at de enemy!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,1,0, 'Reportin'' for duty.',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,1, 'Ready to take de fight to Zalazane.',0,0,100,1,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,2, 'Ready to fight beside Vol''jin!',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,3, 'New troll here!',0,0,100,0,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,4, 'When does de trainin'' start?',0,0,100,6,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,0, 'Reportin'' for duty.',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,1, 'Ready to take de fight to Zalazane.',0,0,100,1,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,2, 'Ready to fight beside Vol''jin!',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,3, 'New troll here!',0,0,100,0,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,4, 'When does de trainin'' start?',0,0,100,6,0,0, 'Troll Volunteer Quest Turn in'),
(@N_TigerCredit,0,0, 'The tiger matriarch appears! Prove yourself in combat!',3,0,100,0,0,0, 'Tiger Matriarch Credit'),
(@N_Doctor,0,0, 'Darkspears, we consult de spirits! Drummers, take your places!' ,0,0,100,25,0,0, 'Witch Doctor Hez''tok' ),
(@N_Doctor,1,0, 'Spirits, we be gathered here to ask for your guidance.' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok' ),
(@N_Doctor,2,0, 'Our leader, Vol''jin, son of Sen''jin, issued de call to all Darkspears: reclaim de Echo Isles for our tribe.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,3,0, 'Spirits! I offer me own body to you! Speak through me! Is de time right for mighty Vol''jin''s undertaking?' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,4,0, 'De ancestors hear ya, witch doctor!' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,5,0, 'Know dat your plans please us, Darkspears. De son of Sen''jin walks de right path.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,6,0, 'De task in front of ya will not be easy, but ya have our blessin''.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,7,0, 'Ya gave up your home an'' ya gave up de loas of your ancestors when ya left de Echo Isles. Dey will not be pleased dat you been ignorin'' dem.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,8,0, 'Ya must make amends wit'' Bwonsamdi, de guardian of de dead, if ya hope to defeat Zalazane. It be de only way. Tell de son of Sen''jin dese things.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,9,0, 'De spirits have blessed us wit'' an answer! De Echo Isles will be ours again!' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok'),
(@N_DScout,0,0, 'He got a big army, an'' he be plannin'' somethin'' down dere.' ,0,0,100,1,0,0, 'Darkspear Scout'),
(@N_DScout,0,1, 'Zalazane got most of his hexes trolls hidden under de canopy on de big island.' ,0,0,100,1,0,0, 'Darkspear Scout'),
(@N_Voljin,0,0, 'Thank ya, scout. Keep up da patrols. But for now, a rest is in order. Dismissed.' ,0,0,100,1,0,0, 'Vol''jin');

DELETE FROM `waypoints` WHERE `entry`=@N_DScout;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@N_DScout,1,-838.1788,-4989.835,14.93872, ''),
(@N_DScout,2,-829.3889,-4999.125,15.50085, ''),
(@N_DScout,3,-808.0018,-5010.587,15.36734, ''),
(@N_DScout,4,-796.1736,-5009.604,16.01879, ''),
(@N_DScout,5,-782.4566,-5002.518,17.26879, ''),
(@N_DScout,6,-758.7136,-5001.088,19.65562, 'Run script'),
(@N_DScout,7,-763.0104,-4995.054,20.06314, ''),
(@N_DScout,8,-753.5364,-4974.764,21.81314, ''),
(@N_DScout,9,-742.8715,-4961.878,22.66427, 'Despawn');

DELETE FROM `spell_area` WHERE `spell` IN (@S_SeeSenjinFrogInvs,@S_SeeSpyFrogInvs);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(@S_SeeSenjinFrogInvs,393,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,0,0,2,1), -- Darkspear Strand
(@S_SeeSenjinFrogInvs,367,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,0,0,2,1), -- Sen'jin Village
(@S_SeeSenjinFrogInvs,14,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,0,0,2,1), -- Durotar
(@S_SeeSpyFrogInvs,368,@Q_FrogsAway,1,@Q_FrogsAway,0,0,2,1); -- Echo Isles

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (11345,@Gossip+0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@S_FrogsAway;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=16 AND `SourceEntry`=@N_TigerSpirit;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=@I_VoljinDrums;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=75319;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,11345,0,0,9,@Q_FrogsAway,0,0,0, 'Echo Isles: QFrogs Away: gossip'),
(15,11345,1,0,9,@Q_TrollinForVolunteers,0,0,0, 'Echo Isles: Trollin for Volunteers: gossip'),
(15,11345,2,0,28,@Q_PreparinForBattle,0,0,0, 'Echo Isles: Preparin'' For Battle: gossip'),
(15,@Gossip+0,0,0,9,@Q_DanceOfDeSpirits,0,0,0, 'Hez''tok: Dance of De Spirits: gossip'),
(17,0,@S_FrogsAway,0,1,@S_SeeSpyFrogInvs,0,0,0, 'Echo Isles: SFrogs Away'),
(16,0,@N_TigerSpirit,0,23,367,0,0,0, 'Dismount player when not in intended zone'), -- Sen'jin Village
(16,0,@N_TigerSpirit,1,23,393,0,0,0, 'Dismount player when not in intended zone'), -- Darkspear Strand
(16,0,@N_TigerSpirit,2,23,368,0,0,0, 'Dismount player when not in intended zone'), -- Echo Isles
(18,0,@I_VoljinDrums,0,24,1,@N_Citizien1,0,63, 'Limit Voljin Drums to be used on Troll Citizen'),
(18,0,@I_VoljinDrums,1,24,1,@N_Citizien2,0,63, 'Limit Voljin Drums to be used on Troll Citizen'),
(13,0,75319,0,18,1,0,0,0, 'Omen Kill Credit - Target player AoE');

/* ### Game event ### */
DELETE FROM `game_event` WHERE `eventEntry`=@Event;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event, '2010-09-07 00:00:00' , '2010-10-10 00:00:00' ,9999999,47520,0, 'Zalazane''s Fall' ,0);
DELETE FROM `game_event_creature_quest` WHERE `id` IN (@N_Vanira,@N_Voljin,@N_Uruzin,@N_VoljinBoss);
INSERT INTO `game_event_creature_quest` (`id`,`quest`,`eventEntry`) VALUES
(@N_Vanira,@Q_DaPerfectSpies,@Event),
(@N_Vanira,@Q_FrogsAway,@Event),
(@N_Vanira,@Q_LadyOfDaTigers,@Event),
(@N_Voljin,@Q_DanceOfDeSpirits,@Event),
(@N_Uruzin,@Q_TrollinForVolunteers,@Event),
(@N_Uruzin,@Q_PreparinForBattle,@Event),
(@N_VoljinBoss,@Q_ZalazanesFall,@Event);
DELETE FROM `game_event_creature` WHERE `eventEntry`=@Event;
INSERT INTO `game_event_creature` (`guid`,`eventEntry`) VALUES
(@CGuid+0,@Event),(@CGuid+1,@Event),(@CGuid+2,@Event),
(@CGuid+3,@Event),(@CGuid+4,@Event),(@CGuid+5,@Event),
(@CGuid+6,@Event),(@CGuid+7,@Event),(@CGuid+8,@Event),
(@CGuid+9,@Event),(@CGuid+10,@Event),(@CGuid+11,@Event),
(@CGuid+12,@Event),(@CGuid+13,@Event),(@CGuid+14,@Event),
(@CGuid+15,@Event),(@CGuid+16,@Event),(@CGuid+17,@Event),
(@CGuid+18,@Event),(@CGuid+19,@Event),(@CGuid+20,@Event),
(@CGuid+21,@Event),(@CGuid+22,@Event),(@CGuid+23,@Event),
(@CGuid+24,@Event),(@CGuid+25,@Event),(@CGuid+26,@Event),
(@CGuid+27,@Event),(@CGuid+28,@Event),(@CGuid+29,@Event),
(@CGuid+30,@Event),(@CGuid+31,@Event),(@CGuid+32,@Event),
(@CGuid+33,@Event),(@CGuid+34,@Event),(@CGuid+35,@Event),
(@CGuid+36,@Event),(@CGuid+37,@Event),(@CGuid+38,@Event),
(@CGuid+39,@Event),(@CGuid+40,@Event),(@CGuid+41,@Event),
(@CGuid+42,@Event),(@CGuid+43,@Event),(@CGuid+44,@Event),
(@CGuid+45,@Event),(@CGuid+46,@Event),(@CGuid+47,@Event),
(@CGuid+48,@Event),(@CGuid+49,@Event),(@CGuid+51,@Event),
(@CGuid+52,@Event),(@CGuid+53,@Event),(@CGuid+54,@Event),
(@CGuid+55,@Event),(@CGuid+56,@Event),(@CGuid+57,@Event),
(@CGuid+58,@Event),(@CGuid+59,@Event),(@CGuid+60,@Event),
(@CGuid+61,@Event),(@CGuid+62,@Event),(@CGuid+63,@Event),
(@CGuid+64,@Event),(@CGuid+65,@Event),(@CGuid+66,@Event),
(@CGuid+67,@Event),(@CGuid+68,@Event),(@CGuid+69,@Event),
(@CGuid+70,@Event),(@CGuid+71,@Event),(@CGuid+72,@Event),
(@CGuid+73,@Event),(@CGuid+74,@Event),(@CGuid+75,@Event),
(@CGuid+76,@Event),(@CGuid+77,@Event),(@CGuid+78,@Event),
(@CGuid+79,@Event),(@CGuid+80,@Event),(@CGuid+81,@Event),
(@CGuid+82,@Event),(@CGuid+83,@Event),(@CGuid+84,@Event),
(@CGuid+85,@Event),(@CGuid+86,@Event),(@CGuid+87,@Event),
(@CGuid+88,@Event),(@CGuid+89,@Event),(@CGuid+90,@Event),
(@CGuid+91,@Event),(@CGuid+92,@Event),(@CGuid+93,@Event),
(@CGuid+94,@Event),(@CGuid+95,@Event),(@CGuid+96,@Event),
(@CGuid+97,@Event),(@CGuid+98,@Event),(@CGuid+99,@Event),
(@CGuid+100,@Event),(@CGuid+101,@Event),(@CGuid+102,@Event),
(@CGuid+103,@Event),(@CGuid+104,@Event),(@CGuid+105,@Event),
(@CGuid+106,@Event),(@CGuid+107,@Event),(@CGuid+108,@Event),
(@CGuid+109,@Event),(@CGuid+110,@Event),(@CGuid+111,@Event),
(@CGuid+112,@Event),(@CGuid+113,@Event),(@CGuid+114,@Event),
(@CGuid+115,@Event),(@CGuid+116,@Event),(@CGuid+117,@Event);
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@Event;
INSERT INTO `game_event_gameobject` (`guid`,`eventEntry`) VALUES
(@GGuid+0,@Event),(@GGuid+1,@Event),(@GGuid+2,@Event),
(@GGuid+3,@Event),(@GGuid+4,@Event),(@GGuid+5,@Event),
(@GGuid+6,@Event),(@GGuid+7,@Event),(@GGuid+8,@Event),
(@GGuid+9,@Event),(@GGuid+10,@Event),(@GGuid+11,@Event),
(@GGuid+12,@Event),(@GGuid+13,@Event),(@GGuid+14,@Event),
(@GGuid+15,@Event),(@GGuid+16,@Event),(@GGuid+17,@Event),
(@GGuid+18,@Event),(@GGuid+19,@Event),(@GGuid+20,@Event),
(@GGuid+21,@Event),(@GGuid+22,@Event),(@GGuid+23,@Event),
(@GGuid+24,@Event),(@GGuid+25,@Event),(@GGuid+26,@Event),
(@GGuid+27,@Event),(@GGuid+28,@Event),(@GGuid+29,@Event),
(@GGuid+30,@Event),(@GGuid+31,@Event),(@GGuid+32,@Event),
(@GGuid+33,@Event),(@GGuid+34,@Event),(@GGuid+35,@Event),
(@GGuid+36,@Event),(@GGuid+37,@Event),(@GGuid+38,@Event),
(@GGuid+39,@Event),(@GGuid+40,@Event),(@GGuid+41,@Event),
(@GGuid+42,@Event),(@GGuid+43,@Event),(@GGuid+44,@Event),
(@GGuid+45,@Event),(@GGuid+46,@Event),(@GGuid+47,@Event),
(@GGuid+48,@Event),(@GGuid+49,@Event),(@GGuid+50,@Event),
(@GGuid+51,@Event),(@GGuid+52,@Event),(@GGuid+53,@Event),
(@GGuid+54,@Event),(@GGuid+55,@Event),(@GGuid+56,@Event),
(@GGuid+57,@Event),(@GGuid+58,@Event);
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch_credit' WHERE `entry`=40301;
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch' WHERE `entry`=40312;
UPDATE `creature_template` SET `ScriptName`= 'npc_troll_volunteer' WHERE `entry` IN (40260,40264);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (75420,75102);
INSERT INTO `spell_script_names` VALUES
(75420, 'spell_mount_check'),
(75102, 'spell_voljin_war_drums');
-- Send in-game mail when player completes achievements Emblematic
DELETE FROM `achievement_reward` WHERE `entry` IN (4784,4785);
INSERT INTO `achievement_reward` (`entry`,`title_A`,`title_H`,`item`,`sender`,`subject`,`text`) VALUES
(4784,0,0,0,37942, 'Emblem Quartermasters in Dalaran''s Silver Enclave', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Silver Enclave, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!'),
(4785,0,0,0,37941, 'Emblem Quartermasters in Dalaran''s Sunreaver Sanctuary', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Sunreaver Sanctuary, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!');
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry`=40176; -- Sen'jin Frog
-- Add missing table at Steelgrill's Depot
DELETE FROM `gameobject` WHERE `guid`=151888 AND `id`=202564;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(151888,202564,0,1,1,-5463.98975,-626.967041,393.528717,0,0,0,0,0,120,0,1);
-- Add non-existing equipment
DELETE FROM `creature_equip_template` WHERE `entry`=2432;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES 
(2432,53056,0,0);
UPDATE `creature_template` SET `equipment_id`=2432 WHERE `entry`=39368; -- Set equipment to Drill Sergeant Steamcrank
UPDATE `creature_template` SET `equipment_id`=2432 WHERE `entry`=39675; -- Set equipment to Captain Tread Sparknozzle
UPDATE `creature_template` SET `equipment_id`=682 WHERE `entry`=32417; -- Set equipment to Scarlet Highlord Daion
-- Mjordin Combatant does not have EAI present
UPDATE `creature_template` SET `AIName`= '' WHERE `entry`=30037;
-- Netherwing Ledge Fixup
-- Fix and add spawns
DELETE FROM `creature` WHERE `id` IN (23289,23345,23346,23348,23291,23340,23342,23344,23370,23376,23427,23489);
DELETE FROM `creature` WHERE `guid` BETWEEN 52334 AND 52347;
INSERT INTO `creature` (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES 
(52334,23289,530,1,1,0,0,-5155.48975,696.2224,42.196106,4.90454865,120,0,0,1,0,0,0), -- Mine Car
(52335,23289,530,1,1,0,0,-5195.42334,620.3688,44.1691132,6.20430231,120,0,0,1,0,0,0), -- Mine Car
(52336,23345,530,1,1,0,0,-5066.307,640.2136,86.49668,1.553343,120,0,0,1,0,0,0), -- Wing Commander Ichman
(52337,23346,530,1,1,0,0,-5060.32666,640.43634,86.66157,1.50098312,120,0,0,1,0,0,0), -- Wing Commander Mulverick
(52338,23348,530,1,1,0,0,-5074.878,625.448547,85.91173,1.57079637,120,0,0,1,0,0,0), -- Captain Skyshatter
(52339,23291,530,1,1,0,0,-5105.28,548.8744,85.7275848,0.4537856,120,0,0,1,0,0,0), -- Chief Overseer Mudlump <Beater of Peons>
(52340,23340,530,1,1,0,0,-5088.555,640.8356,86.61429,1.48352981,120,0,0,1,0,0,0), -- Murg "Oldie" Muckjaw
(52341,23342,530,1,1,0,0,-5081.61768,640.931763,86.61429,1.57079637,120,0,0,1,0,0,0), -- Trope the Filth-Belcher
(52342,23344,530,1,1,0,0,-5072.988,640.0335,86.48929,1.60313094,120,0,0,1,0,0,0), -- Corlok the Vet
(52343,23370,530,1,1,0,0,-5104.80127,683.6003,104.504616,5.56760025,120,0,0,1,0,0,0), -- Dragonmaw Tower Controller
(52344,23376,530,1,1,0,0,-5129.35352,681.3448,40.0699348,1.04193306,120,0,0,1,0,0,0), -- Dragonmaw Foreman
(52345,23376,530,1,1,0,0,-5197.53369,620.5416,44.5623055,6.202318,120,0,0,1,0,0,0), -- Dragonmaw Foreman
(52346,23427,530,1,1,0,0,-5092.035,581.6629,86.958786,1.18682384,120,0,0,1,0,0,0), -- Illidari Lord Balthas
(52347,23489,530,1,1,0,0,-5099.259,617.7783,85.9796,4.22369671,120,0,0,1,0,0,0); -- Drake Dealer Hurlunk
DELETE FROM `creature_template_addon` WHERE `entry` IN (23345,23346,23348,23291,23340,23342,23344,23370,23427,23489);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes2`) VALUES
(23345,17718,1), -- Wing Commander Ichman
(23346,17719,1), -- Wing Commander Mulverick
(23348,21425,1), -- Captain Skyshatter
(23291,0,1), -- Chief Overseer Mudlump <Beater of Peons>
(23340,17701,1), -- Murg "Oldie" Muckjaw
(23342,21155,1), -- Trope the Filth-Belcher
(23344,16314,1), -- Corlok the Vet
(23370,0,1), -- Dragonmaw Tower Controller
(23427,0,1), -- Illidari Lord Balthas
(23489,0,1); -- Drake Dealer Hurlunk
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Dragonmaw Peon Work Node
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=2,`gender`=2 WHERE `modelid`=21412; -- Nethermine Flayer
UPDATE `creature_model_info` SET `bounding_radius`=0.3361105,`combat_reach`=1.1,`gender`=0 WHERE `modelid`=20284; -- Nethermine Ravager
UPDATE `creature_model_info` SET `bounding_radius`=0.4687497,`combat_reach`=2.025,`gender`=0 WHERE `modelid`=20893; -- Dragonmaw Skybreaker
UPDATE `creature_model_info` SET `bounding_radius`=2.5,`combat_reach`=5,`gender`=0 WHERE `modelid`=20896; -- Dragonmaw Ascendant
UPDATE `creature_model_info` SET `bounding_radius`=0.5022,`combat_reach`=2.025,`gender`=0 WHERE `modelid`=21421; -- Murg "Oldie" Muckjaw
UPDATE `creature_model_info` SET `bounding_radius`=0.520833,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=21424; -- Corlok the Vet
UPDATE `creature_model_info` SET `bounding_radius`=0.520833,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=21426; -- Captain Skyshatter
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=0 WHERE `modelid`=21422; -- Trope the Filth-Belcher
UPDATE `creature_template` SET `exp`=1,`minlevel`=70,`maxlevel`=70,`speed_run`=1 WHERE `entry`=23308; -- Dragonmaw Peon Work Node
UPDATE `creature_template` SET `speed_walk`=2,`speed_run`=2 WHERE `entry`=22253; -- Dragonmaw Ascendant
-- More Netherwing Eggs
SET @GUID := 151889;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+2;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`) VALUES
(@GUID,185915,530,1,1,-4244.827,325.0044,134.4166,0.1396245,0,0,0.06975555,0.9975641,1600),
(@GUID+1,185915,530,1,1,-4221.473,370.1472,136.2317,2.111848,0,0,0.8703556,0.4924237,1600),
(@GUID+2,185915,530,1,1,-5103.112,707.9791,85.04285,0.2792516,0,0,0.1391726,0.9902682,1600);
-- ---------------------------
-- -- Northrend Rare Spawns --
-- ---------------------------
SET @GUID = 151934;
SET @EQUIP = 2433;
-- ----------------------
-- -- Template Updates --
-- ----------------------
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=64,`speed_run`=0.99206285714286 WHERE `entry`=32447; -- Zul'drak Sentinel
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=32832,`speed_run`=1.1428571428571 WHERE `entry`=32409; -- Crazed Indu'le Survivor
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=32832,`speed_walk`=2,`speed_run`=2 WHERE `entry`=32422; -- Grocklar
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=32832,`speed_walk`=2,`speed_run`=2 WHERE `entry`=32429; -- Seething Hate
UPDATE `creature_model_info` SET `bounding_radius`=0.248,`combat_reach`=4,`gender`=0 WHERE `modelid`=26663; -- Grocklar
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=18083; -- Seething Hate
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385,`combat_reach`=2.625,`gender`=2 WHERE `modelid`=28284; -- Crazed Indu'le Survivor
UPDATE `creature_template` SET `equipment_id`=@EQUIP,`speed_run`=1.3857142857143 WHERE `entry`=32417; -- Scarlet Highlord Daion

-- -------------------------
-- -- Template_Addon data --
-- -------------------------
DELETE FROM `creature_template_addon` WHERE `entry` IN (32429,32422,32409,32417,32447);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(32429,0,0,1,0, '52561 0'), -- Seething Hate
(32422,0,0,1,0, NULL), -- Grocklar
(32409,0,0,1,0, NULL), -- Crazed Indu'le Survivor
(32417,19296,0,1,0, NULL), -- Scarlet Highlord Daion
(32447,0,0,1,0, NULL); -- Zul'drak Sentinel

-- --------------------
-- -- Equipment data --
-- --------------------
DELETE FROM `creature_equip_template` WHERE `entry`=@EQUIP;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES 
(@EQUIP,38175,12932,0);

-- ---------------------
-- -- Creature Spawns --
-- ---------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+86; 
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
-- Old Crystalbark
(@GUID,32357,571,1,1,0,0,3550.59,7169.73,220.75,0.130042,28800,0,0,13936,3231,0,2),
(@GUID+1,32357,571,1,1,0,0,3792.23,7329.76,196.23,5.38979,28800,0,0,13936,3231,0,2),
(@GUID+2,32357,571,1,1,0,0,3990.13,6574,180.599,2.84903,28800,0,0,13936,3231,0,2),
(@GUID+3,32357,571,1,1,0,0,3733.24,6779.39,156.379,2.8011,28800,0,0,13936,3231,0,2),
-- Fumblub Gearwind
(@GUID+4,32358,571,1,1,0,782,3766.55,4309.43,12.6436,0.814532,28800,0,0,13936,0,0,2), -- Fixed Z
-- Icehorn
(@GUID+5,32361,571,1,1,0,0,3565.27,3635.4,36.3026,1.89603,28800,20,0,13936,0,0,1),
(@GUID+6,32361,571,1,1,0,0,3131.14,3647.86,4.40561,2.64266,28800,0,0,13936,0,0,2),
(@GUID+7,32361,571,1,1,0,0,3122.88,3925.21,25.9087,2.59032,28800,20,0,13936,0,0,1),
-- Crazed Indu'le Survivor
(@GUID+8,32409,571,1,1,0,0,3425.29,1811.42,81.2668,0.434945,28800,5,0,14910,0,0,1),
-- Scarlet Highlord Daion
(@GUID+9,32417,571,1,1,0,0,4105.49,-1132.07,134.27,0.953492,28800,0,0,14910,0,0,2),
(@GUID+10,32417,571,1,1,0,0,4577.47,-602.83,155.108,3.43925,28800,0,0,14910,0,0,2),
(@GUID+11,32417,571,1,1,0,0,4739.51,-373.885,187.437,2.81958,28800,0,0,14910,0,0,2),
(@GUID+12,32417,571,1,1,0,0,4616.39,-411.872,155.531,2.32242,28800,0,0,14910,0,0,2),
-- Perobas the Bloodthirster
(@GUID+13,32377,571,1,1,0,0,2402.76,-5545.49,289.63,6.28297,28800,0,0,13936,0,0,2),
(@GUID+14,32377,571,1,1,0,0,2286.36,-5080.37,254.684,0.376,28800,0,0,13936,0,0,2),
(@GUID+15,32377,571,1,1,0,0,2667.07,-4613.32,253.45,2.52328,28800,0,0,13936,0,0,2),
-- Vigdis the War Maiden
(@GUID+16,32386,571,1,1,0,0,1091.68,-5756.49,233.888,5.71161,28800,0,0,13936,0,0,2),
(@GUID+17,32386,571,1,1,0,0,988.678,-5798.41,252.204,5.48463,28800,15,0,13936,0,0,1),
(@GUID+18,32386,571,1,1,0,0,685.78,-5894.07,289.31,3.23013,28800,15,0,13936,0,0,1),
(@GUID+19,32386,571,1,1,0,0,698.198,-5916.6,291.038,2.11171,28800,0,0,13936,0,0,2),
(@GUID+20,32386,571,1,1,0,0,1537.69,-5810.95,272.362,3.87268,28800,0,0,13936,0,0,2),
(@GUID+21,32386,571,1,1,0,0,1219.76,-5551.19,203.268,4.46259,28800,0,0,13936,0,0,2),
-- King Pin
(@GUID+22,32398,571,1,1,27950,0,827.638,-3283.51,12.2082,3.9619,28800,5,0,13936,0,0,1),
(@GUID+23,32398,571,1,1,0,0,534.88,-2934.28,-0.13,5.13,28800,5,0,13936,0,0,1),
(@GUID+24,32398,571,1,1,0,0,314.914,-3130,34.8139,3.91321,28800,5,0,13936,0,0,1),
(@GUID+25,32398,571,1,1,0,0,23.3933,-3343.96,7.06814,0.594844,28800,0,0,13936,0,0,2),
(@GUID+26,32398,571,1,1,0,0,110.217,-3455.56,10.9399,5.36934,28800,5,0,13936,0,0,1),
-- Tukemuth
(@GUID+27,32400,571,1,1,0,0,4423.2,-191.606,86.97,2.2154,28800,0,0,39760,0,0,2),
(@GUID+28,32400,571,1,1,0,0,4257.03,-245.357,71.873,0.90693,28800,0,0,39760,0,0,2),
(@GUID+29,32400,571,1,1,0,0,4171.21,-107.972,66.5049,0.678376,28800,0,0,39760,0,0,2),
(@GUID+30,32400,571,1,1,0,0,4117.19,339.269,56.2234,4.64336,28800,0,0,39760,0,0,2),
(@GUID+31,32400,571,1,1,0,0,3757.18,-256.696,76.8022,1.93109,28800,0,0,39760,0,0,2),
(@GUID+32,32400,571,1,1,0,0,3831,362.401,34.2447,4.3449,28800,0,0,39760,0,0,2),
(@GUID+33,32400,571,1,1,0,0,3327.3,632.078,83.1728,5.52535,28800,0,0,39760,0,0,2),
(@GUID+34,32400,571,1,1,0,0,3424.75,-224.108,75.47,1.22373,28800,0,0,39760,0,0,2),
-- Grocklar
(@GUID+35,32422,571,1,1,0,0,3570.74,-1748.55,160.909,0.577843,28800,0,0,41128,0,0,2),
(@GUID+36,32422,571,1,1,0,0,3568.53,-2418.75,139.732,3.53036,28800,0,0,41128,0,0,2),
(@GUID+37,32422,571,1,1,0,0,3061.42,-1840.03,66.0206,6.06678,28800,0,0,41128,0,0,2),
(@GUID+38,32422,571,1,1,0,0,4028.69,-1717.33,200.062,4.76214,28800,0,0,41128,0,0,2),
(@GUID+39,32422,571,1,1,0,0,2969.77,-2260.25,65.7,1.53929,28800,0,0,41128,0,0,2),
(@GUID+40,32422,571,1,1,0,0,3588.57,-2184.77,137.255,0.374254,28800,0,0,41128,0,0,2),
-- Seething Hate
(@GUID+41,32429,571,1,1,0,0,3913.28,-2804.43,176.136,1.75467,28800,0,0,14910,0,0,2),
(@GUID+42,32429,571,1,1,0,0,3601.19,-3275.54,222.069,4.60829,28800,0,0,14910,0,0,2),
(@GUID+43,32429,571,1,1,0,0,3972.31,-2710.12,165.749,6.28272,28800,0,0,14910,0,0,2),
-- Syreian the Bonecarver
(@GUID+44,32438,571,1,1,0,1660,4064.03,-4598.68,174.644,5.63537,28800,5,0,14910,0,0,1),
(@GUID+45,32438,571,1,1,0,1660,4263.49,-4476.45,189.827,5.73447,28800,0,0,14910,0,0,2),
(@GUID+46,32438,571,1,1,0,1660,4162.44,-4622,140.978,4.71489,28800,5,0,14910,0,0,1),
(@GUID+47,32438,571,1,1,0,1660,4341.29,-4776.17,52.0998,4.73701,28800,5,0,14910,0,0,1),
(@GUID+48,32438,571,1,1,0,1660,4435.31,-4528.65,115.486,4.76371,28800,5,0,14910,0,0,1),
(@GUID+49,32438,571,1,1,0,1660,4582.12,-4714.61,62.4486,4.75272,28800,5,0,14910,0,0,1),
-- Hildana Deathstealer
(@GUID+50,32495,571,1,1,0,0,7514.08,3663.15,623.327,5.33787,3600,0,0,18900,5991,0,0),
(@GUID+51,32495,571,1,1,0,0,8360.11,3510.63,655.052,3.11519,3600,0,0,18900,5991,0,0),
(@GUID+52,32495,571,1,1,0,0,8459.92,3147.1,588.143,3.932,3600,0,0,18900,5991,0,0),
(@GUID+53,32495,571,1,1,0,0,6800.17,1774.63,569.475,4.94124,3600,0,0,18900,5991,0,0),
-- High Thane Jorfus
(@GUID+54,32501,571,1,1,0,0,6155.1,2377.94,510.346,5.46898,28800,5,0,18900,0,0,1),
(@GUID+55,32501,571,1,1,0,0,7711.4,1029.98,446.606,4.69297,28800,5,0,18900,0,0,1),
(@GUID+56,32501,571,1,1,0,0,6525.8,3309.78,665.388,5.66139,28800,5,0,18900,0,0,1),
-- Terror Spinner
(@GUID+57,32475,571,1,1,0,0,6711.42,-4186.12,456.852,5.50739,28800,20,0,16502,0,0,1),
(@GUID+58,32475,571,1,1,0,0,6704.23,-4205.16,458.033,4.71414,28800,20,0,16502,0,0,1),
(@GUID+59,32475,571,1,1,0,0,6554.22,-4523.84,450.781,2.6564,28800,20,0,16502,0,0,1),
(@GUID+60,32475,571,1,1,0,0,6704.23,-4205.16,458.033,4.71414,28800,20,0,16502,0,0,1),
-- Griegen
(@GUID+61,32471,571,1,1,0,0,5115.49,-1652.65,234.728,2.96739,28800,0,0,15952,0,0,2),
(@GUID+62,32471,571,1,1,0,0,5326.75,-1479.26,238.009,3.02158,28800,0,0,15952,0,0,2),
(@GUID+63,32471,571,1,1,0,0,5596.75,-1742.88,239.19,0.406713,28800,0,0,15952,0,0,2),
(@GUID+64,32471,571,1,1,0,0,5314.94,-1939.21,238.942,0.458038,28800,0,0,15952,0,0,2),
(@GUID+65,32471,571,1,1,0,0,5791.11,-1302.72,234.538,4.79067,28800,10,0,15952,0,0,1),
(@GUID+66,32471,571,1,1,0,0,5327.54,-1702.84,238.882,4.63875,28800,10,0,15952,0,0,1),
(@GUID+67,32471,571,1,1,0,0,5133.37,-1853.51,245.385,4.72044,28800,10,0,15952,0,0,1),
-- King Krush
(@GUID+68,32485,571,1,1,0,0,4865.04,4679.54,-69.2385,1.14987,28800,0,0,42540,0,0,2),
(@GUID+69,32485,571,1,1,0,0,6087.94,4603.13,-96.8083,2.44102,28800,0,0,42540,0,0,2),
-- Aotona
(@GUID+70,32481,571,1,1,0,0,5368.74,4427.76,-133.397,0.206642,28800,20,0,15952,0,0,1),
(@GUID+71,32481,571,1,1,0,0,5803.02,4564.18,-135.413,2.00913,28800,20,0,15952,0,0,1),
(@GUID+72,32481,571,1,1,0,0,5286.53,4998.04,-134.7,5.46489,28800,20,0,15952,0,0,1),
(@GUID+73,32481,571,1,1,0,0,5591.7,5192.67,-133.378,0.631543,28800,20,0,15952,0,0,1),
(@GUID+74,32481,571,1,1,0,0,5777.08,5070.89,-136.107,3.63961,28800,20,0,15952,0,0,1),
(@GUID+75,32481,571,1,1,0,0,5762.37,5001.74,-127.39,3.13774,28800,20,0,15952,0,0,1),
-- Dirkee
(@GUID+76,32500,571,1,1,0,0,8392.22,-1189.11,927.468,1.73202,28800,20,0,50400,3994,0,1),
(@GUID+77,32500,571,1,1,0,0,7751.04,-1099.42,926.238,2.84729,28800,20,0,50400,3994,0,1),
(@GUID+78,32500,571,1,1,0,0,7290.77,-1119.28,938.286,0.26333,28800,20,0,50400,3994,0,1),
(@GUID+79,32500,571,1,1,0,0,7934.73,-3183.8,862.21,4.21701,28800,20,0,50400,3994,0,1),
-- Putridus the Ancient
(@GUID+80,32487,571,1,1,0,0,6726.491,2521.456,428.1825,0.130042,28800,0,0,1,0,0,2),
(@GUID+81,32487,571,1,1,0,0,7812.443,2103.041,380.3420,0.130042,28800,0,0,1,0,0,2),
(@GUID+82,32487,571,1,1,0,0,7609.677,1477.351,330.2054,0.130042,28800,0,0,1,0,0,2),
(@GUID+83,32487,571,1,1,0,0,7190.445,1270.757,302.0640,0.130042,28800,0,0,1,0,0,2),
(@GUID+84,32487,571,1,1,0,0,7049.174,1225.784,295.9547,0.130042,28800,0,0,1,0,0,2),
-- Zul Drak Sentinel
(@GUID+85,32447,571,1,1,0,0,5693.950,-2871.760,274.5770,0.130042,28800,0,0,1,0,0,2),
(@GUID+86,32447,571,1,1,0,0,4914.310,-1661.770,248.3090,0.130042,28800,0,0,1,0,0,2);

-- -------------------------------
-- -- DefiningPooling_templates --
-- -------------------------------
DELETE FROM `pool_template` WHERE `entry` BETWEEN 1086 AND 1106;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(1086,1, 'Old Crystalbark Rare Spawn (1 out 4)'),
(1087,1, 'Fumblub Gearwind Rare Spawn (1 out 1)'),
(1088,1, 'Icehorn Rare Spawn (1 out 3)'),
(1089,1, 'Crazed Indu le Survivor Rare Spawn (1 out 1)'),
(1090,1, 'Scarlet Highlord Daion Rare Spawn (1 out 4)'),
(1091,1, 'Perobas the Bloodthirster Rare Spawn (1 out 3)'),
(1092,1, 'Vigdis the War Maiden Rare Spawn (1 out 6)'),
(1093,1, 'King Pin Rare Spawn (1 out 5)'),
(1094,1, 'Tukemuth Rare Spawn (1 out 8)'),
(1095,1, 'Grocklar Rare Spawn (1 out 6)'),
(1096,1, 'Seething Hate Rare Spawn (1 out 3)'),
(1097,1, 'Syreian the Bonecarver Rare Spawn (1 out 6)'),
(1098,1, 'Hildana Deathstealer Rare Spawn (1 out 4)'),
(1099,1, 'High Thane Jorfus Rare Spawn (1 out 3)'),
(1100,1, 'Terror Spinner Rare Spawn (1 out 4)'),
(1101,1, 'Griegen Rare Spawn (1 out 7)'),
(1102,1, 'King Krush Rare Spawn (1 out 2)'),
(1103,1, 'Aotona Rare Spawn (1 out 6)'),
(1104,1, 'Dirkee Rare Spawn (1 out 4)'),
(1105,1, 'Putridus the Ancient Rare Spawn (1 out 5)'),
(1106,1, 'Zul Drak Sentinel Rare Spawn (1 out 2)');
-- ------------------------
-- -- Pooling the Spawns --
-- ------------------------
DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 1086 AND 1106;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@GUID+0,1086,0,  'Old Crystalbark - Spawnlocation 1'),
(@GUID+1,1086,0,  'Old Crystalbark - Spawnlocation 2'),
(@GUID+2,1086,0,  'Old Crystalbark - Spawnlocation 3'),
(@GUID+3,1086,0,  'Old Crystalbark - Spawnlocation 4'),
(@GUID+4,1087,100, 'Fumblub Gearwind - Spawnlocation 1'),
(@GUID+5,1088,0,  'Icehorn - Spawnlocation 1'),
(@GUID+6,1088,0,  'Icehorn Spawnlocation 2'),
(@GUID+7,1088,0,  'Icehorn Spawnlocation 3'),
(@GUID+8,1089,100, 'Crazed Indu le Survivor - Spawnlocation 1'),
(@GUID+9,1090,0,  'Scarlet Highlord Daion Spawnlocation 1'),
(@GUID+10,1090,0, 'Scarlet Highlord Daion Spawnlocation 2'),
(@GUID+11,1090,0, 'Scarlet Highlord Daion Spawnlocation 3'),
(@GUID+12,1090,0, 'Scarlet Highlord Daion Spawnlocation 4'),
(@GUID+13,1091,0, 'Perobas the Bloodthirster Spawnlocation 1'),
(@GUID+14,1091,0, 'Perobas the Bloodthirster Spawnlocation 2'),
(@GUID+15,1091,0, 'Perobas the Bloodthirster Spawnlocation 3'),
(@GUID+16,1092,0, 'Vigdis the War Maiden Spawnlocation 1'),
(@GUID+17,1092,0, 'Vigdis the War Maiden Spawnlocation 2'),
(@GUID+18,1092,0, 'Vigdis the War Maiden Spawnlocation 3'),
(@GUID+19,1092,0, 'Vigdis the War Maiden Spawnlocation 4'),
(@GUID+20,1092,0, 'Vigdis the War Maiden Spawnlocation 5'),
(@GUID+21,1092,0, 'Vigdis the War Maiden Spawnlocation 6'),
(@GUID+22,1093,0, 'King Pin Spawnlocation 1'),
(@GUID+23,1093,0, 'King Pin Spawnlocation 2'),
(@GUID+24,1093,0, 'King Pin Spawnlocation 3'),
(@GUID+25,1093,0, 'King Pin Spawnlocation 4'),
(@GUID+26,1093,0, 'King Pin Spawnlocation 5'),
(@GUID+27,1094,0, 'Tukemuth Spawnlocation 1'),
(@GUID+28,1094,0, 'Tukemuth Spawnlocation 2'),
(@GUID+29,1094,0, 'Tukemuth Spawnlocation 3'),
(@GUID+30,1094,0, 'Tukemuth Spawnlocation 4'),
(@GUID+31,1094,0, 'Tukemuth Spawnlocation 5'),
(@GUID+32,1094,0, 'Tukemuth Spawnlocation 6'),
(@GUID+33,1094,0, 'Tukemuth Spawnlocation 7'),
(@GUID+34,1094,0, 'Tukemuth Spawnlocation 8'),
(@GUID+35,1095,0, 'Grocklar Spawnlocation 1'),
(@GUID+36,1095,0, 'Grocklar Spawnlocation 2'),
(@GUID+37,1095,0, 'Grocklar Spawnlocation 3'),
(@GUID+38,1095,0, 'Grocklar Spawnlocation 4'),
(@GUID+39,1095,0, 'Grocklar Spawnlocation 5'),
(@GUID+40,1095,0, 'Grocklar Spawnlocation 6'),
(@GUID+41,1096,0, 'Seething Hate Spawnlocation 1'),
(@GUID+42,1096,0, 'Seething Hate Spawnlocation 2'),
(@GUID+43,1096,0, 'Seething Hate Spawnlocation 3'),
(@GUID+44,1097,0, 'Syreian the Bonecarver Spawnlocation 1'),
(@GUID+45,1097,0, 'Syreian the Bonecarver Spawnlocation 2'),
(@GUID+46,1097,0, 'Syreian the Bonecarver Spawnlocation 3'),
(@GUID+47,1097,0, 'Syreian the Bonecarver Spawnlocation 4'),
(@GUID+48,1097,0, 'Syreian the Bonecarver Spawnlocation 5'),
(@GUID+49,1097,0, 'Syreian the Bonecarver Spawnlocation 6'),
(@GUID+50,1098,0, 'Hildana Deathstealer Spawnlocation 1'),
(@GUID+51,1098,0, 'Hildana Deathstealer Spawnlocation 2'),
(@GUID+52,1098,0, 'Hildana Deathstealer Spawnlocation 3'),
(@GUID+53,1098,0, 'Hildana Deathstealer Spawnlocation 4'),
(@GUID+54,1099,0, 'High Thane Jorfus Spawnlocation 1'),
(@GUID+55,1099,0, 'High Thane Jorfus Spawnlocation 2'),
(@GUID+56,1099,0, 'High Thane Jorfus Spawnlocation 3'),
(@GUID+57,1100,0, 'Terror Spinner Spawnlocation 1'),
(@GUID+58,1100,0, 'Terror Spinner Spawnlocation 2'),
(@GUID+59,1100,0, 'Terror Spinner Spawnlocation 3'),
(@GUID+60,1100,0, 'Terror Spinner Spawnlocation 4'),
(@GUID+61,1101,0, 'Griegen Spawnlocation 1'),
(@GUID+62,1101,0, 'Griegen Spawnlocation 2'),
(@GUID+63,1101,0, 'Griegen Spawnlocation 3'),
(@GUID+64,1101,0, 'Griegen Spawnlocation 4'),
(@GUID+65,1101,0, 'Griegen Spawnlocation 5'),
(@GUID+66,1101,0, 'Griegen Spawnlocation 6'),
(@GUID+67,1101,0, 'Griegen Spawnlocation 7'),
(@GUID+68,1102,0, 'King Krush Spawnlocation 1'),
(@GUID+69,1102,0, 'King Krush Spawnlocation 2'),
(@GUID+70,1103,0, 'Aotona Spawnlocation 1'),
(@GUID+71,1103,0, 'Aotona Spawnlocation 2'),
(@GUID+72,1103,0, 'Aotona Spawnlocation 3'),
(@GUID+73,1103,0, 'Aotona Spawnlocation 4'),
(@GUID+74,1103,0, 'Aotona Spawnlocation 5'),
(@GUID+75,1103,0, 'Aotona Spawnlocation 6'),
(@GUID+76,1104,0, 'Dirkee Spawnlocation 1'),
(@GUID+77,1104,0, 'Dirkee Spawnlocation 2'),
(@GUID+78,1104,0, 'Dirkee Spawnlocation 3'),
(@GUID+79,1104,0, 'Dirkee Spawnlocation 4'),
(@GUID+80,1105,0, 'Putridus the Ancient Spawnlocation 1'),
(@GUID+81,1105,0, 'Putridus the Ancient Spawnlocation 2'),
(@GUID+82,1105,0, 'Putridus the Ancient Spawnlocation 3'),
(@GUID+83,1105,0, 'Putridus the Ancient Spawnlocation 4'),
(@GUID+84,1105,0, 'Putridus the Ancient Spawnlocation 5'),
(@GUID+85,1106,0, 'Zul Drak Sentinel Spawnlocation 1'),
(@GUID+86,1106,0, 'Zul Drak Sentinel Spawnlocation 2');

-- -----------------------
-- -- Creature Pathings --
-- -----------------------
-- Putridus the Ancient SAI
SET @ENTRY := 32487;
SET @SPELL1 := 61080; -- Putrid Punt
SET @SPELL2 := 41534; -- War Stomp
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,8000,8000,9000,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Putridus the Ancient - Combat - Cast Putrid Punt'),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,12000,12000,11,@SPELL2,1,0,0,0,0,2,0,0,0,0,0,0,0,'Putridus the Ancient - Combat - Cast War Stomp');
-- Pathing for Putridus the Ancient Entry: 32487
SET @PATH := @GUID+80 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+80;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+80,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,2,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,3,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,4,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,5,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,6,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,7,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,8,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,9,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,10,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,11,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,12,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,13,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,14,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,15,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,16,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,17,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,18,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,19,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,20,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,21,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,22,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,23,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,24,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,25,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,26,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,27,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,28,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,29,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,30,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,31,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,32,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,33,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,34,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,35,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,36,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,37,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,38,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,39,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,40,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,41,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,42,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,43,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,44,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,45,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,46,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,47,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,48,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,49,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,50,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,51,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,52,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,53,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,54,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,55,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,56,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,57,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,58,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,59,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,60,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,61,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,62,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,63,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,64,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,65,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,66,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,67,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,68,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,69,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,70,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,71,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,72,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,73,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,74,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,75,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,76,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,77,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,78,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,79,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,80,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,81,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,82,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,83,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,84,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,85,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,86,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,87,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,88,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,89,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,90,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,91,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,92,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,93,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,94,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,95,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,96,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,97,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,98,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,99,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,100,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,101,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,102,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,103,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,104,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,105,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,106,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,107,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,108,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,109,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,110,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,111,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,112,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,113,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,114,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,115,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,116,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,117,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,118,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,119,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,120,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,121,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,122,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,123,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,124,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,125,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,126,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,127,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,128,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,129,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,130,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,131,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,132,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,133,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,134,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,135,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,136,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,137,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,138,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,139,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,140,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,141,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,142,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,143,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,144,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,145,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,146,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,147,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,148,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,149,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,150,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,151,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,152,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,153,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,154,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,155,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,156,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,157,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,158,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,159,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,160,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,161,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,162,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,163,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,164,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,165,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,166,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,167,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,168,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,169,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,170,6726.491,2521.456,428.1825,0,0,0,100,0);
-- Pathing for Putridus the Ancient Entry: 32487
SET @PATH := @GUID+81 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+81;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+81,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,2,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,3,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,4,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,5,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,6,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,7,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,8,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,9,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,10,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,11,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,12,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,13,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,14,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,15,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,16,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,17,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,18,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,19,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,20,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,21,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,22,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,23,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,24,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,25,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,26,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,27,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,28,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,29,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,30,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,31,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,32,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,33,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,34,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,35,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,36,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,37,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,38,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,39,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,40,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,41,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,42,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,43,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,44,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,45,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,46,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,47,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,48,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,49,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,50,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,51,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,52,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,53,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,54,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,55,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,56,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,57,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,58,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,59,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,60,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,61,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,62,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,63,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,64,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,65,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,66,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,67,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,68,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,69,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,70,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,71,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,72,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,73,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,74,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,75,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,76,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,77,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,78,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,79,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,80,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,81,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,82,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,83,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,84,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,85,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,86,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,87,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,88,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,89,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,90,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,91,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,92,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,93,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,94,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,95,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,96,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,97,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,98,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,99,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,100,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,101,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,102,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,103,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,104,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,105,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,106,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,107,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,108,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,109,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,110,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,111,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,112,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,113,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,114,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,115,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,116,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,117,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,118,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,119,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,120,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,121,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,122,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,123,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,124,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,125,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,126,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,127,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,128,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,129,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,130,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,131,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,132,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,133,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,134,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,135,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,136,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,137,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,138,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,139,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,140,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,141,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,142,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,143,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,144,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,145,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,146,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,147,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,148,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,149,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,150,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,151,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,152,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,153,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,154,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,155,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,156,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,157,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,158,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,159,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,160,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,161,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,162,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,163,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,164,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,165,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,166,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,167,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,168,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,169,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,170,7812.443,2103.041,380.3420,0,0,0,100,0);
-- Pathing for Putridus the Ancient Entry: 32487
SET @PATH := @GUID+82 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+82;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+82,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,2,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,3,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,4,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,5,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,6,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,7,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,8,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,9,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,10,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,11,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,12,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,13,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,14,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,15,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,16,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,17,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,18,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,19,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,20,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,21,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,22,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,23,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,24,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,25,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,26,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,27,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,28,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,29,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,30,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,31,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,32,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,33,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,34,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,35,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,36,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,37,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,38,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,39,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,40,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,41,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,42,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,43,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,44,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,45,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,46,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,47,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,48,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,49,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,50,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,51,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,52,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,53,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,54,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,55,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,56,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,57,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,58,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,59,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,60,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,61,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,62,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,63,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,64,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,65,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,66,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,67,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,68,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,69,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,70,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,71,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,72,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,73,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,74,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,75,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,76,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,77,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,78,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,79,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,80,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,81,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,82,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,83,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,84,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,85,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,86,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,87,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,88,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,89,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,90,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,91,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,92,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,93,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,94,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,95,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,96,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,97,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,98,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,99,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,100,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,101,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,102,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,103,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,104,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,105,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,106,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,107,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,108,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,109,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,110,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,111,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,112,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,113,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,114,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,115,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,116,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,117,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,118,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,119,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,120,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,121,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,122,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,123,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,124,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,125,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,126,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,127,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,128,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,129,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,130,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,131,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,132,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,133,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,134,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,135,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,136,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,137,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,138,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,139,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,140,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,141,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,142,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,143,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,144,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,145,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,146,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,147,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,148,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,149,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,150,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,151,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,152,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,153,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,154,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,155,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,156,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,157,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,158,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,159,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,160,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,161,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,162,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,163,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,164,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,165,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,166,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,167,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,168,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,169,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,170,7609.677,1477.351,330.2054,0,0,0,100,0);
-- Pathing for Putridus the Ancient Entry: 32487
SET @PATH := @GUID+83 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+83;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+83,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,2,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,3,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,4,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,5,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,6,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,7,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,8,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,9,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,10,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,11,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,12,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,13,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,14,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,15,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,16,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,17,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,18,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,19,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,20,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,21,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,22,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,23,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,24,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,25,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,26,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,27,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,28,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,29,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,30,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,31,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,32,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,33,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,34,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,35,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,36,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,37,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,38,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,39,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,40,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,41,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,42,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,43,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,44,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,45,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,46,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,47,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,48,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,49,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,50,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,51,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,52,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,53,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,54,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,55,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,56,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,57,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,58,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,59,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,60,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,61,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,62,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,63,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,64,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,65,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,66,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,67,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,68,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,69,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,70,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,71,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,72,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,73,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,74,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,75,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,76,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,77,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,78,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,79,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,80,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,81,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,82,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,83,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,84,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,85,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,86,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,87,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,88,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,89,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,90,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,91,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,92,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,93,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,94,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,95,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,96,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,97,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,98,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,99,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,100,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,101,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,102,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,103,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,104,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,105,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,106,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,107,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,108,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,109,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,110,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,111,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,112,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,113,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,114,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,115,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,116,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,117,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,118,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,119,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,120,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,121,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,122,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,123,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,124,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,125,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,126,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,127,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,128,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,129,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,130,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,131,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,132,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,133,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,134,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,135,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,136,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,137,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,138,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,139,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,140,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,141,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,142,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,143,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,144,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,145,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,146,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,147,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,148,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,149,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,150,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,151,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,152,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,153,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,154,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,155,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,156,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,157,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,158,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,159,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,160,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,161,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,162,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,163,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,164,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,165,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,166,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,167,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,168,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,169,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,170,7190.445,1270.757,302.0640,0,0,0,100,0);
-- Pathing for Putridus the Ancient Entry: 32487
SET @PATH := @GUID+84 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+84;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+84,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,2,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,3,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,4,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,5,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,6,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,7,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,8,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,9,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,10,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,11,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,12,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,13,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,14,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,15,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,16,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,17,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,18,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,19,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,20,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,21,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,22,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,23,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,24,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,25,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,26,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,27,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,28,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,29,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,30,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,31,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,32,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,33,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,34,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,35,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,36,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,37,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,38,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,39,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,40,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,41,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,42,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,43,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,44,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,45,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,46,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,47,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,48,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,49,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,50,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,51,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,52,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,53,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,54,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,55,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,56,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,57,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,58,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,59,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,60,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,61,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,62,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,63,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,64,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,65,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,66,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,67,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,68,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,69,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,70,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,71,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,72,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,73,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,74,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,75,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,76,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,77,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,78,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,79,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,80,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,81,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,82,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,83,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,84,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,85,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,86,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,87,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,88,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,89,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,90,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,91,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,92,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,93,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,94,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,95,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,96,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,97,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,98,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,99,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,100,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,101,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,102,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,103,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,104,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,105,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,106,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,107,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,108,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,109,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,110,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,111,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,112,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,113,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,114,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,115,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,116,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,117,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,118,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,119,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,120,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,121,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,122,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,123,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,124,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,125,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,126,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,127,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,128,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,129,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,130,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,131,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,132,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,133,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,134,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,135,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,136,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,137,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,138,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,139,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,140,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,141,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,142,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,143,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,144,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,145,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,146,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,147,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,148,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,149,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,150,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,151,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,152,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,153,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,154,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,155,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,156,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,157,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,158,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,159,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,160,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,161,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,162,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,163,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,164,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,165,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,166,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,167,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,168,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,169,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,170,7049.174,1225.784,295.9547,0,0,0,100,0);

-- Pathing for Zul'drak Sentinel Entry: 32447
SET @NPC := @GUID+85;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5724.000,-2852.640,274.5060,0,0,0,100,0),
(@PATH,2,5755.550,-2823.590,274.5150,0,0,0,100,0),
(@PATH,3,5809.330,-2835.480,274.4960,0,0,0,100,0),
(@PATH,4,5829.910,-2805.140,274.4080,0,0,0,100,0),
(@PATH,5,5828.510,-2766.280,274.7190,0,0,0,100,0),
(@PATH,6,5828.290,-2755.410,276.5500,0,0,0,100,0),
(@PATH,7,5822.310,-2702.180,276.5840,0,0,0,100,0),
(@PATH,8,5794.060,-2684.310,276.5840,0,0,0,100,0),
(@PATH,9,5761.970,-2664.910,276.5840,0,0,0,100,0),
(@PATH,10,5744.330,-2663.150,280.7680,0,0,0,100,0),
(@PATH,11,5737.410,-2654.850,280.7680,0,0,0,100,0),
(@PATH,12,5737.570,-2632.250,292.4730,0,0,0,100,0),
(@PATH,13,5750.730,-2617.920,292.3230,0,0,0,100,0),
(@PATH,14,5773.040,-2617.450,292.4190,0,0,0,100,0),
(@PATH,15,5791.980,-2617.770,292.4190,0,0,0,100,0),
(@PATH,16,5818.440,-2617.850,292.4190,0,0,0,100,0),
(@PATH,17,5842.470,-2617.850,292.4190,0,0,0,100,0),
(@PATH,18,5869.620,-2618.230,292.4190,0,0,0,100,0),
(@PATH,19,5842.470,-2617.850,292.4190,0,0,0,100,0),
(@PATH,20,5818.440,-2617.850,292.4190,0,0,0,100,0),
(@PATH,21,5791.980,-2617.770,292.4190,0,0,0,100,0),
(@PATH,22,5773.040,-2617.450,292.4190,0,0,0,100,0),
(@PATH,23,5750.730,-2617.920,292.3230,0,0,0,100,0),
(@PATH,24,5727.260,-2618.850,292.4160,0,0,0,100,0),
(@PATH,25,5705.450,-2617.610,292.4120,0,0,0,100,0),
(@PATH,26,5683.230,-2617.440,292.4180,0,0,0,100,0),
(@PATH,27,5666.380,-2618.120,292.4710,0,0,0,100,0),
(@PATH,28,5644.480,-2618.200,292.4710,0,0,0,100,0),
(@PATH,29,5618.580,-2617.640,292.4990,0,0,0,100,0),
(@PATH,30,5597.510,-2617.550,292.4990,0,0,0,100,0),
(@PATH,31,5580.090,-2617.990,292.4990,0,0,0,100,0),
(@PATH,32,5566.360,-2617.760,292.4200,0,0,0,100,0),
(@PATH,33,5580.090,-2617.990,292.4990,0,0,0,100,0),
(@PATH,34,5597.510,-2617.550,292.4990,0,0,0,100,0),
(@PATH,35,5618.580,-2617.640,292.4990,0,0,0,100,0),
(@PATH,36,5644.480,-2618.200,292.4710,0,0,0,100,0),
(@PATH,37,5666.380,-2618.120,292.4710,0,0,0,100,0),
(@PATH,38,5683.230,-2617.440,292.4180,0,0,0,100,0),
(@PATH,39,5705.450,-2617.610,292.4120,0,0,0,100,0),
(@PATH,40,5727.260,-2618.850,292.4160,0,0,0,100,0),
(@PATH,41,5737.570,-2632.250,292.4730,0,0,0,100,0),
(@PATH,42,5737.410,-2654.850,280.7680,0,0,0,100,0),
(@PATH,43,5744.330,-2663.150,280.7680,0,0,0,100,0),
(@PATH,44,5761.970,-2664.910,276.5840,0,0,0,100,0),
(@PATH,45,5794.060,-2684.310,276.5840,0,0,0,100,0),
(@PATH,46,5822.310,-2702.180,276.5840,0,0,0,100,0),
(@PATH,47,5828.290,-2755.410,276.5500,0,0,0,100,0),
(@PATH,48,5828.510,-2766.280,274.7190,0,0,0,100,0),
(@PATH,49,5829.910,-2805.140,274.4080,0,0,0,100,0),
(@PATH,50,5809.330,-2835.480,274.4960,0,0,0,100,0),
(@PATH,51,5755.550,-2823.590,274.5150,0,0,0,100,0),
(@PATH,52,5724.000,-2852.640,274.5060,0,0,0,100,0),
(@PATH,53,5693.950,-2871.760,274.5770,0,0,0,100,0),
(@PATH,54,5664.210,-2905.730,274.3850,0,0,0,100,0),
(@PATH,55,5629.240,-2933.900,274.3790,0,0,0,100,0),
(@PATH,56,5601.860,-2960.070,274.3790,0,0,0,100,0),
(@PATH,57,5594.340,-2966.000,276.5940,0,0,0,100,0),
(@PATH,58,5559.140,-2960.480,276.5840,0,0,0,100,0),
(@PATH,59,5526.130,-2965.070,276.5840,0,0,0,100,0),
(@PATH,60,5507.190,-2996.900,276.5880,0,0,0,100,0),
(@PATH,61,5490.880,-3013.770,288.0960,0,0,0,100,0),
(@PATH,62,5465.120,-3043.530,288.7970,0,0,0,100,0),
(@PATH,63,5455.740,-3053.280,292.0040,0,0,0,100,0),
(@PATH,64,5438.300,-3072.640,292.4190,0,0,0,100,0),
(@PATH,65,5408.170,-3076.490,292.4190,0,0,0,100,0),
(@PATH,66,5389.960,-3057.200,292.4190,0,0,0,100,0),
(@PATH,67,5372.570,-3028.290,292.4190,0,0,0,100,0),
(@PATH,68,5359.020,-2999.280,292.4190,0,0,0,100,0),
(@PATH,69,5343.850,-2981.210,292.4190,0,0,0,100,0),
(@PATH,70,5316.590,-2957.750,292.4180,0,0,0,100,0),
(@PATH,71,5291.510,-2936.590,292.4180,0,0,0,100,0),
(@PATH,72,5269.860,-2920.950,292.4180,0,0,0,100,0),
(@PATH,73,5248.840,-2899.650,292.4180,0,0,0,100,0),
(@PATH,74,5228.780,-2879.540,292.4180,0,0,0,100,0),
(@PATH,75,5202.560,-2855.400,292.4200,0,0,0,100,0),
(@PATH,76,5194.670,-2837.020,292.4180,0,0,0,100,0),
(@PATH,77,5216.640,-2815.020,292.4180,0,0,0,100,0),
(@PATH,78,5246.490,-2789.880,292.4180,0,0,0,100,0),
(@PATH,79,5272.980,-2764.980,292.4180,0,0,0,100,0),
(@PATH,80,5297.260,-2742.340,292.4200,0,0,0,100,0),
(@PATH,81,5323.050,-2718.580,292.4170,0,0,0,100,0),
(@PATH,82,5354.000,-2692.930,292.4190,0,0,0,100,0),
(@PATH,83,5323.050,-2718.580,292.4170,0,0,0,100,0),
(@PATH,84,5297.260,-2742.340,292.4200,0,0,0,100,0),
(@PATH,85,5272.980,-2764.980,292.4180,0,0,0,100,0),
(@PATH,86,5246.490,-2789.880,292.4180,0,0,0,100,0),
(@PATH,87,5216.640,-2815.020,292.4180,0,0,0,100,0),
(@PATH,88,5194.670,-2837.020,292.4180,0,0,0,100,0),
(@PATH,89,5172.790,-2864.270,292.4190,0,0,0,100,0),
(@PATH,90,5154.700,-2887.120,292.4190,0,0,0,100,0),
(@PATH,91,5129.290,-2891.070,292.4190,0,0,0,100,0),
(@PATH,92,5107.440,-2912.540,292.4190,0,0,0,100,0),
(@PATH,93,5083.430,-2936.790,292.4190,0,0,0,100,0),
(@PATH,94,5062.290,-2957.040,292.0600,0,0,0,100,0),
(@PATH,95,5042.170,-2976.570,292.5840,0,0,0,100,0),
(@PATH,96,5013.840,-3004.280,292.4190,0,0,0,100,0),
(@PATH,97,4990.340,-3027.050,292.4190,0,0,0,100,0),
(@PATH,98,4963.340,-3053.410,292.4190,0,0,0,100,0),
(@PATH,99,4935.050,-3080.150,292.4190,0,0,0,100,0),
(@PATH,100,4912.420,-3101.800,292.4190,0,0,0,100,0),
(@PATH,101,4886.650,-3126.440,292.4190,0,0,0,100,0),
(@PATH,102,4862.060,-3149.930,292.4190,0,0,0,100,0),
(@PATH,103,4843.120,-3168.170,292.4190,0,0,0,100,0),
(@PATH,104,4862.060,-3149.930,292.4190,0,0,0,100,0),
(@PATH,105,4886.650,-3126.440,292.4190,0,0,0,100,0),
(@PATH,106,4912.420,-3101.800,292.4190,0,0,0,100,0),
(@PATH,107,4935.050,-3080.150,292.4190,0,0,0,100,0),
(@PATH,108,4963.340,-3053.410,292.4190,0,0,0,100,0),
(@PATH,109,4990.340,-3027.050,292.4190,0,0,0,100,0),
(@PATH,110,5013.840,-3004.280,292.4190,0,0,0,100,0),
(@PATH,111,5042.170,-2976.570,292.5840,0,0,0,100,0),
(@PATH,112,5062.290,-2957.040,292.0600,0,0,0,100,0),
(@PATH,113,5083.430,-2936.790,292.4190,0,0,0,100,0),
(@PATH,114,5107.440,-2912.540,292.4190,0,0,0,100,0),
(@PATH,115,5129.290,-2891.070,292.4190,0,0,0,100,0),
(@PATH,116,5154.700,-2887.120,292.4190,0,0,0,100,0),
(@PATH,117,5172.790,-2864.270,292.4190,0,0,0,100,0),
(@PATH,118,5202.560,-2855.400,292.4200,0,0,0,100,0),
(@PATH,119,5228.780,-2879.540,292.4180,0,0,0,100,0),
(@PATH,120,5248.840,-2899.650,292.4180,0,0,0,100,0),
(@PATH,121,5269.860,-2920.950,292.4180,0,0,0,100,0),
(@PATH,122,5291.510,-2936.590,292.4180,0,0,0,100,0),
(@PATH,123,5316.590,-2957.750,292.4180,0,0,0,100,0),
(@PATH,124,5343.850,-2981.210,292.4190,0,0,0,100,0),
(@PATH,125,5359.020,-2999.280,292.4190,0,0,0,100,0),
(@PATH,126,5372.570,-3028.290,292.4190,0,0,0,100,0),
(@PATH,127,5389.960,-3057.200,292.4190,0,0,0,100,0),
(@PATH,128,5408.170,-3076.490,292.4190,0,0,0,100,0),
(@PATH,129,5438.300,-3072.640,292.4190,0,0,0,100,0),
(@PATH,130,5455.740,-3053.280,292.0040,0,0,0,100,0),
(@PATH,131,5465.120,-3043.530,288.7970,0,0,0,100,0),
(@PATH,132,5490.880,-3013.770,288.0960,0,0,0,100,0),
(@PATH,133,5507.190,-2996.900,276.5880,0,0,0,100,0),
(@PATH,134,5526.130,-2965.070,276.5840,0,0,0,100,0),
(@PATH,135,5559.140,-2960.480,276.5840,0,0,0,100,0),
(@PATH,136,5594.340,-2966.000,276.5940,0,0,0,100,0),
(@PATH,137,5601.860,-2960.070,274.3790,0,0,0,100,0),
(@PATH,138,5629.240,-2933.900,274.3790,0,0,0,100,0),
(@PATH,139,5664.210,-2905.730,274.3850,0,0,0,100,0),
(@PATH,140,5693.950,-2871.760,274.5770,0,0,0,100,0);
-- Pathing for Zul'drak Sentinel Entry: 32447
SET @NPC := @GUID+86;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4914.130,-1622.030,248.3090,0,0,0,100,0),
(@PATH,2,4912.460,-1580.230,248.3090,0,0,0,100,0),
(@PATH,3,4906.730,-1561.730,248.3680,0,0,0,100,0),
(@PATH,4,4883.310,-1539.930,248.7920,0,0,0,100,0),
(@PATH,5,4851.130,-1514.290,249.1620,0,0,0,100,0),
(@PATH,6,4883.310,-1539.930,248.7920,0,0,0,100,0),
(@PATH,7,4906.730,-1561.730,248.3680,0,0,0,100,0),
(@PATH,8,4912.460,-1580.230,248.3090,0,0,0,100,0),
(@PATH,9,4914.130,-1622.030,248.3090,0,0,0,100,0),
(@PATH,10,4914.310,-1661.770,248.3090,0,0,0,100,0),
(@PATH,11,4913.710,-1698.930,248.3080,0,0,0,100,0),
(@PATH,12,4914.110,-1730.130,248.3070,0,0,0,100,0),
(@PATH,13,4914.250,-1760.870,248.3070,0,0,0,100,0),
(@PATH,14,4914.320,-1804.820,248.3090,0,0,0,100,0),
(@PATH,15,4913.730,-1841.620,248.3090,0,0,0,100,0),
(@PATH,16,4912.850,-1875.260,248.3090,0,0,0,100,0),
(@PATH,17,4913.100,-1909.730,248.3070,0,0,0,100,0),
(@PATH,18,4913.340,-1956.600,248.3000,0,0,0,100,0),
(@PATH,19,4913.430,-1996.570,248.3090,0,0,0,100,0),
(@PATH,20,4913.280,-2029.650,248.3080,0,0,0,100,0),
(@PATH,21,4931.000,-2048.890,248.3080,0,0,0,100,0),
(@PATH,22,4966.010,-2050.800,248.3080,0,0,0,100,0),
(@PATH,23,4997.010,-2052.770,248.3080,0,0,0,100,0),
(@PATH,24,5028.930,-2055.350,248.1920,0,0,0,100,0),
(@PATH,25,5062.110,-2058.030,248.2960,0,0,0,100,0),
(@PATH,26,5083.820,-2050.360,248.1850,0,0,0,100,0),
(@PATH,27,5111.150,-2049.930,248.1180,0,0,0,100,0),
(@PATH,28,5148.310,-2050.290,248.2960,0,0,0,100,0),
(@PATH,29,5177.760,-2049.490,248.2960,0,0,0,100,0),
(@PATH,30,5211.760,-2048.980,248.2970,0,0,0,100,0),
(@PATH,31,5177.760,-2049.490,248.2960,0,0,0,100,0),
(@PATH,32,5148.310,-2050.290,248.2960,0,0,0,100,0),
(@PATH,33,5111.150,-2049.930,248.1180,0,0,0,100,0),
(@PATH,34,5083.820,-2050.360,248.1850,0,0,0,100,0),
(@PATH,35,5062.110,-2058.030,248.2960,0,0,0,100,0),
(@PATH,36,5028.930,-2055.350,248.1920,0,0,0,100,0),
(@PATH,37,4997.010,-2052.770,248.3080,0,0,0,100,0),
(@PATH,38,4966.010,-2050.800,248.3080,0,0,0,100,0),
(@PATH,39,4931.000,-2048.890,248.3080,0,0,0,100,0),
(@PATH,40,4913.280,-2029.650,248.3080,0,0,0,100,0),
(@PATH,41,4913.430,-1996.570,248.3090,0,0,0,100,0),
(@PATH,42,4913.340,-1956.600,248.3000,0,0,0,100,0),
(@PATH,43,4913.100,-1909.730,248.3070,0,0,0,100,0),
(@PATH,44,4912.850,-1875.260,248.3090,0,0,0,100,0),
(@PATH,45,4913.730,-1841.620,248.3090,0,0,0,100,0),
(@PATH,46,4914.320,-1804.820,248.3090,0,0,0,100,0),
(@PATH,47,4914.250,-1760.870,248.3070,0,0,0,100,0),
(@PATH,48,4914.110,-1730.130,248.3070,0,0,0,100,0),
(@PATH,49,4913.710,-1698.930,248.3080,0,0,0,100,0),
(@PATH,50,4914.310,-1661.770,248.3090,0,0,0,100,0);

-- Pathing for Fumblub Gearwind Entry: 32358 
SET @NPC := @GUID+4;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4107.777,`position_y`=4981.302,`position_z`=4.601125 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3996.668,5027.57,4.601125,0,0,0,100,0),
(@PATH,2,3908.403,5132.647,18.65668,0,0,0,100,0),
(@PATH,3,3762.461,5061.485,18.65668,0,0,0,100,0),
(@PATH,4,3706.78,4998.379,18.65668,0,0,0,100,0),
(@PATH,5,3626.849,4981.311,18.65668,0,0,0,100,0),
(@PATH,6,3553.993,4971.021,18.65668,0,0,0,100,0),
(@PATH,7,3562.81,4855.884,18.65668,0,0,0,100,0),
(@PATH,8,3482.353,4704.925,8.01779,0,0,0,100,0),
(@PATH,9,3476.721,4495.351,7.07335,0,0,0,100,0),
(@PATH,10,3651.377,4535.771,7.07335,0,0,0,100,0),
(@PATH,11,3797.042,4659.164,4.21224,0,0,0,100,0),
(@PATH,12,3959.966,4664.088,5.490018,0,0,0,100,0),
(@PATH,13,4050.999,4706.122,13.51779,0,0,0,100,0),
(@PATH,14,4141.185,4783.229,13.99001,0,0,0,100,0),
(@PATH,15,4250.018,4783.799,13.8789,0,0,0,100,0),
(@PATH,16,4252.546,4879.61,7.906681,0,0,0,100,0),
(@PATH,17,4107.777,4981.302,4.601125,0,0,0,100,0);


-- NR Rare Spawns
SET @GUID := 250006;

UPDATE `creature_template` SET `faction_a`=14, `faction_h`=14 WHERE entry IN (32630);
DELETE FROM `creature` WHERE `guid`=@GUID; 
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
-- Vyragosa
(@GUID,32630,571,1,1,0,0,7090.247,-1566.583,958.0051,0.7234184,28800,0,0,1,0,0,2);

-- Pathing for Vyragosa Entry: 32630
SET @NPC := @GUID;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=6913.308,`position_y`=-1725.261,`position_z`=954.7917 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7025.494,-1624.87,957.3694,0,0,0,100,0),
(@PATH,2,7167.578,-1501.694,962.5693,0,0,0,100,0),
(@PATH,3,7440.402,-1295.861,997.2911,0,0,0,100,0),
(@PATH,4,7210.958,-1046.892,1006.18,0,0,0,100,0),
(@PATH,5,6998.465,-1076.847,1024.819,0,0,0,100,0),
(@PATH,6,6874.249,-1097.382,927.736,0,0,0,100,0),
(@PATH,7,6614.792,-875.7547,812.7645,0,0,0,100,0),
(@PATH,8,6563.275,-811.7673,749.8757,0,0,0,100,0),
(@PATH,9,6299.502,-797.577,529.1257,0,0,0,100,0),
(@PATH,10,6194.549,-1013.144,501.5424,0,0,0,100,0),
(@PATH,11,6319.254,-1251.661,468.6258,0,0,0,100,0),
(@PATH,12,6309.161,-1537.857,615.0423,0,0,0,100,0),
(@PATH,13,6748.211,-1664.307,919.3118,0,0,0,100,0),
(@PATH,14,6913.308,-1725.261,954.7917,0,0,0,100,0);
-- update some maxcounts in spawnpools
UPDATE `pool_template` SET `max_limit`=15 WHERE `entry`=896; -- Wintergrasp from 20 to 15
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=897; -- Icecrown from 20 to 35
UPDATE `pool_template` SET `max_limit`=10 WHERE `entry`=2001; -- Alterac Mountains (outer section) from 4 to 10
UPDATE `pool_template` SET `max_limit`=45 WHERE `entry`=2002; -- Arathi Highlands (Main Section) from 10 to 45
UPDATE `pool_template` SET `max_limit`=25 WHERE `entry`=2004; -- Badlands from 9 to 25
UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=2005; -- Blasted Lands from 8 to 20
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=2007; -- Burning Steppes from 10 to 40
UPDATE `pool_template` SET `max_limit`=15 WHERE `entry`=2008; -- Dun Morogh from 12 to 15
UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=2009; -- Duskwood from 16 to 20
UPDATE `pool_template` SET `max_limit`=10 WHERE `entry`=2012; -- Eversong Woods from 6 to 10
UPDATE `pool_template` SET `max_limit`=10 WHERE `entry`=2014; -- Hillsbrad Foothills (Main Section) from 5 to 10
UPDATE `pool_template` SET `max_limit`= 3 WHERE `entry`=2016; -- Hillsbrad Foothills (Azurelode Mine) - Special Mineral GOs ONLY from 4 to 3
UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=2018; -- Loch Modan from 9 to 20
UPDATE `creature_template` SET `equipment_id`=682 WHERE `entry`=32417; -- Scarlet Highlord Daion
-- Re-import deleted template
DELETE FROM `creature_equip_template` WHERE `entry`=2433;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(2433,19903,13319,0);
