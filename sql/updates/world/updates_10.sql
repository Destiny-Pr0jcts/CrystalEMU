DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13671,13625,13670,13669,13666);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13676,13673,13674,13675,13677);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Alliance
(19,0,13671,0,8,13835,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13671,0,8,13835,0,0,0, '', NULL),
(19,0,13671,0,8,13837,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13671,0,8,13837,0,0,0, '', NULL),
(19,0,13671,0,8,13828,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13671,0,8,13828,0,0,0, '', NULL),
(19,0,13625,0,8,13835,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13625,0,8,13835,0,0,0, '', NULL),
(19,0,13625,0,8,13837,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13625,0,8,13837,0,0,0, '', NULL),
(19,0,13625,0,8,13828,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13625,0,8,13828,0,0,0, '', NULL),
(19,0,13670,0,8,13835,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13670,0,8,13835,0,0,0, '', NULL),
(19,0,13670,0,8,13837,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13670,0,8,13837,0,0,0, '', NULL),
(19,0,13670,0,8,13828,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13670,0,8,13828,0,0,0, '', NULL),
(19,0,13669,0,8,13835,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13669,0,8,13835,0,0,0, '', NULL),
(19,0,13669,0,8,13837,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13669,0,8,13837,0,0,0, '', NULL),
(19,0,13669,0,8,13828,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13669,0,8,13828,0,0,0, '', NULL),
(19,0,13666,0,8,13835,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13666,0,8,13835,0,0,0, '', NULL),
(19,0,13666,0,8,13837,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13666,0,8,13837,0,0,0, '', NULL),
(19,0,13666,0,8,13828,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13666,0,8,13828,0,0,0, '', NULL),
-- Horde
(19,0,13676,0,8,13838,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13676,0,8,13838,0,0,0, '', NULL),
(19,0,13676,0,8,13839,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13676,0,8,13839,0,0,0, '', NULL),
(19,0,13676,0,8,13829,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13676,0,8,13829,0,0,0, '', NULL),
(19,0,13677,0,8,13838,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13677,0,8,13838,0,0,0, '', NULL),
(19,0,13677,0,8,13839,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13677,0,8,13839,0,0,0, '', NULL),
(19,0,13677,0,8,13829,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13677,0,8,13829,0,0,0, '', NULL),
(19,0,13675,0,8,13838,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13675,0,8,13838,0,0,0, '', NULL),
(19,0,13675,0,8,13839,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13675,0,8,13839,0,0,0, '', NULL),
(19,0,13675,0,8,13829,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13675,0,8,13829,0,0,0, '', NULL),
(19,0,13674,0,8,13838,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13674,0,8,13838,0,0,0, '', NULL),
(19,0,13674,0,8,13839,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13674,0,8,13839,0,0,0, '', NULL),
(19,0,13674,0,8,13829,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13674,0,8,13829,0,0,0, '', NULL),
(19,0,13673,0,8,13838,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13673,0,8,13838,0,0,0, '', NULL),
(19,0,13673,0,8,13839,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13673,0,8,13839,0,0,0, '', NULL),
(19,0,13673,0,8,13829,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13673,0,8,13829,0,0,0, '', NULL);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`=100,`mincountOrRef`=5,`maxcount`=5 WHERE `entry`=41426; -- Magically Wrapped Gift
-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (15214,25171,30281,30298,30342,30343,31898,31899,32498,33222,33223,33225,33229);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(15214,0,0,1,0, NULL), -- Invisible Stalker
(25171,0,0,1,0, NULL), -- Invisible Stalker (Scale x0.5)
(30281,0,1,1,0, NULL), -- Silver Covenant Hippogryph
(30298,0,0,1,0, NULL), -- Invisible Stalker (Float, Uninteractible, LargeAOI)
(30342,0,0,1,0, NULL), -- Orgrim's Hammer
(30343,0,0,1,0, NULL), -- The Skybreaker
(31898,0,0,1,0, NULL), -- Asric
(31899,0,0,1,0, NULL), -- Jadaar
(32498,0,0,1,0, '51583 0'), -- Glacier Penguin; Aura: [DND] Creature Random Size (0 - 50)
(33222,0,0,1,0, '5301 0'), -- Sir Marcus Barlowe; Aura: Defensive State (DND)
(33223,0,0,1,0, '5301 0'), -- Captain Joseph Holley Aura: Defensive State (DND)
(33225,0,0,1,0, '5301 0 62594 0'), -- Marshal Jacob Alerius Aura: Defensive State (DND), Stormwind Champion's Pennant
(33229,0,0,1,0, '7056 0'); -- Melee Target

UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=17213; -- Broom
UPDATE `creature_model_info` SET `bounding_radius`=0.2263,`combat_reach`=0.73,`gender`=2 WHERE `modelid`=25391; -- Glacier Penguin

-- Template updates
UPDATE `creature_template` SET `speed_run`=0.85714 WHERE `entry`=17213; -- Broom
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25171; -- Invisible Stalker (Scale x0.5) (move to new file)
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=30281; -- Silver Covenant Hippogryph
UPDATE `creature_template` SET `minlevel`=80,`exp`=1 WHERE `entry`=31898; -- Asric
UPDATE `creature_template` SET `minlevel`=80,`exp`=1 WHERE `entry`=31899; -- Jadaar
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=32498; -- Glacier Penguin
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33222; -- Sir Marcus Barlowe
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33223; -- Captain Joseph Holley
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33225; -- Marshal Jacob Alerius
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|131072,`dynamicflags`=132,`speed_walk`=1,`speed_run`=1,`flags_extra`=`flags_extra`|262144 WHERE `entry`=33229; -- Melee Target

-- Spawns
UPDATE  `creature` SET `position_x`= 8530.686,`position_y`=647.2205,`position_z`=558.7308,`orientation`=1.623156 WHERE `guid` =202363; -- Invisible Stalker
DELETE FROM `creature` WHERE `guid` IN (110531,110391); -- wrong Asric & Jadaar spawns in Dalaran Sewers

SET @CGUID = 209019;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID+7 AND `id`=25171;
DELETE FROM `creature` WHERE `guid`=@CGUID+8 AND `id`=30298;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@CGUID+0,25171,571,1,1,0,0,8363.315,783.223938,550.2727,3.33357882,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+1,25171,571,1,1,0,0,8366.177,766.661438,551.2031,1.83259571,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+2,25171,571,1,1,0,0,8366.972,896.803833,552.576355,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+3,25171,571,1,1,0,0,8370.458,779.0816,550.0816,3.33357882,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+4,25171,571,1,1,0,0,8371.508,770.821167,550.436157,2.72271371,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+5,25171,571,1,1,0,0,8375.15,908.0208,549.7291,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+6,25171,571,1,1,0,0,8388.508,888.4358,548.0348,2.443461,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+7,25171,571,1,1,0,0,8393.317,894.256958,546.748,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+8,30298,571,1,1,0,0,8440.007,793.1233,585.525,0,120,0,0,1,0,0,0); -- Invisible Stalker (Float, Uninteractible, LargeAOI)

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=25171 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25171,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler (not repeteable)'),
(25171,0,1,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl (not repeteable)');
UPDATE `creature_template` SET `ScriptName` ='' WHERE `entry`=35473; -- Argent Tournament Post
SET @Event = 62;
SET @GUID = 209028;

UPDATE `game_event` SET `start_time`='2011-01-04 14:00:00',`description`='Fishing Extravaganza Fishing Pools' WHERE `eventEntry`=15; -- Fishing Extravaganza
UPDATE `game_event` SET `start_time`='2011-01-03 14:00:00',`length`=60*(24+3) WHERE `eventEntry`=14; -- Fishing Extravaganza Announce
DELETE FROM `game_event` WHERE `eventEntry`=@Event;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event, '2011-01-04 14:00:00', '2020-12-31 05:00:00',10080,3*60,0, 'Fishing Extravaganza Turn-ins',0);

UPDATE `game_event_creature` SET `eventEntry`=@Event WHERE `guid` IN (54688,54687,203521);
DELETE FROM `game_event_creature` WHERE `guid`=@GUID;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(14,@GUID);

DELETE FROM `creature` WHERE `id`=15119;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID,15119,0,1,1,0,0,-4964.69,-936.287,501.743,5.44543,300,0,0,1,0,0,0,0,0,0);
UPDATE `game_event` SET `start_time`='2011-01-01 14:00:00' WHERE `eventEntry`=14; -- Fishing Extravaganza Announce
UPDATE `game_event` SET `start_time`='2011-01-02 14:00:00' WHERE `eventEntry`=15; -- Fishing Extravaganza Pools
UPDATE `game_event` SET `start_time`='2011-01-02 14:00:00' WHERE `eventEntry`=62; -- Fishing Extravaganza Turn-ins
SET @Event = 63;
SET @GUID = 209029;

-- Elder Clearwater
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|768,`equipment_id`=589 WHERE `entry`=38294; -- Elder Clearwater
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385,`combat_reach`=2.625,`gender`=2 WHERE `modelid`=23657; -- Elder Clearwater
DELETE FROM `creature_template_addon` WHERE `entry`=38294;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(38294,0,0,1,0, NULL);

DELETE FROM `creature` WHERE `id`=38294;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@GUID,38294,571,1,1,0,0,5699.039,617.319458,646.797363,0.8552113,120,0,0,1,0,0,0);

DELETE FROM `game_event` WHERE `eventEntry` IN (@Event,@Event+1);
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event+0, '2011-01-03 13:00:00', '2020-12-31 05:00:00',10080,3*60,0, 'Kalu''ak Fishing Derby Turn-ins',0),
(@Event+1, '2011-01-03 14:00:00', '2020-12-31 05:00:00',10080,1*60,0, 'Kalu''ak Fishing Derby Fishing Pools',0); -- to be used with conditions

DELETE FROM `game_event_creature` WHERE `guid`=@GUID;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(@Event,@GUID);

-- And I thought that these were wdb fields...
UPDATE `quest_template` SET `RequestItemsText`='I''m afraid we''ve already had a winner for today, young $N. However, if you bring a shark, I''ll see that it''s released back into the waters, and I might just have a little something for you...',
`OfferRewardText`='Well, it''s nice that you tried $R. I don''t want you to think your efforts were wasted, so I''ve got something for you.' WHERE `entry`=24806; -- Better Luck Next Time
UPDATE `quest_template` SET `RequestItemsText`='The Kalu''ak have a long tradition of honing our fishing skills by putting them to the the test every week.$B$BThe first person to catch and bring a blacktip shark to me will be rewarded handsomely, and be known as the greatest fisherman of the north... for a couple days at least.$B$BThe blacktip shark''s favorite food is the pygmy suckerfish. Try fishing for the blacktip wherever you would normally catch the suckerfish.',
`OfferRewardText`='Don''t just stand there! Give me the shark and I''ll declare you the winner!' WHERE `entry` =24803; -- Kalu'ak Fishing Derby
SET @GUID = 209030; -- Need 2 - creature.guid
SET @BotH = 35607; -- Reginald Arcfire
SET @BotA = 35594; -- Brassbolt Mechawrench

UPDATE `creature_template` SET `npcflag`=`npcflag`|1|2097152,`speed_run`=0.99206,`flags_extra`=`flags_extra`|2 WHERE `entry`=@BotA; -- Brassbolt Mechawrench
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|1|2097152,`speed_run`=0.99206 WHERE `entry`=@BotH; -- Reginald Arcfire

UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=28282;

DELETE FROM `creature_addon` WHERE `guid`=85057; -- old spawn
DELETE FROM `creature_template_addon` WHERE `entry` IN (@BotH,@BotA);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@BotH,0,65536,1,0, '60191 0'), -- Reginald Arcfire
(@BotA,0,65536,1,0, '60190 0'); -- Brassbolt Mechawrench

DELETE FROM `creature` WHERE `id` IN (@BotH,@BotA);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`) VALUES
(@GUID+0,@BotH,571,1,1,5927.63500,731.5764,643.253052,4.694936,120),
(@GUID+1,@BotA,571,1,1,5927.62939,731.5903,643.253052,4.764749,120);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=10656;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(10656,0,6,NULL,13,2097152,0,0,0,0,0,NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10656;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(15,10656,0,7,202,350, 'Steam-Powered Auctioneer - Engineering 350');

DELETE FROM `spell_area` WHERE `spell` IN (60197,60194);
INSERT INTO `spell_area` (`spell`,`area`,`racemask`,`gender`,`autocast`) VALUES
(60197,4395,690,2,1), -- Reginald Arcfire
(60194,4395,1101,2,1); -- Brassbolt Mechawrench
-- Scripting cleanup
UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry` IN (29154,28961,28965);
UPDATE `creature_template` SET `AIName`= '' WHERE `entry` IN (23069,23259,23336,33229,33243,33272);

-- SAI for Gavin Gnarltree
SET @ENTRY := 225;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-10617.34,`position_y`=-1153.902,`position_z`=27.11271 WHERE `guid`=4086;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - ONESHOT_POINT'),
(@ENTRY,0,3,0,40,0,100,0,6,@ENTRY,0,0,54,50000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 6 - pause path'),
(@ENTRY,0,4,5,40,0,100,0,10,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - pause path'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - STATE_WORK_MINING'),
(@ENTRY,0,6,0,56,0,100,0,10,@ENTRY,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - waypoint 10 resumed - STATE_NONE');
-- Waypoints for Gavin Gnarltree from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-10616.74,-1150.729,28.03606, 'Gavin Gnarltree'),
(@ENTRY,2,-10609.4,-1154.94,28.2175, 'Gavin Gnarltree'),
(@ENTRY,3,-10605.3,-1157.31,30.007, 'Gavin Gnarltree'),
(@ENTRY,4,-10600.3,-1159.58,30.0602, 'Gavin Gnarltree'),
(@ENTRY,5,-10596.1,-1156.43,30.0602, 'Gavin Gnarltree'),
(@ENTRY,6,-10596.89,-1154.147,30.05965, 'Gavin Gnarltree'),
(@ENTRY,7,-10601.7,-1159.03,30.0602, 'Gavin Gnarltree'),
(@ENTRY,8,-10606,-1156.86,29.9963, 'Gavin Gnarltree'),
(@ENTRY,9,-10609.6,-1155.18,28.2269, 'Gavin Gnarltree'),
(@ENTRY,10,-10617.34,-1153.902,27.11271, 'Gavin Gnarltree');

-- SAI for Joseph Wilson
SET @ENTRY := 33589;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8489.46,`position_y`=964.667,`position_z`=547.293 WHERE `guid`=75904;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 1 - run script'),
(@ENTRY,0,2,3,40,0,100,0,4,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 4 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.193953, 'Joseph Wilson - Reach wp 4 - turn to'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,2,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - cast'),
(@ENTRY*100,9,3,0,0,0,100,0,10000,10000,0,0,66,0,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,4,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - cast');
-- Waypoints for Joseph Wilson from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8492.984,961.6198,547.2927, 'Joseph Wilson'),
(@ENTRY,2,8489.46,964.667,547.293, 'Joseph Wilson'),
(@ENTRY,3,8489.138,966.7257,547.2927, 'Joseph Wilson'),
(@ENTRY,4,8489.907,967.6441,547.2939, 'Joseph Wilson'),
(@ENTRY,5,8489.138,966.7257,547.2927, 'Joseph Wilson'),
(@ENTRY,6,8489.46,964.667,547.293, 'Joseph Wilson');

-- SAI for Thomas Partridge
SET @ENTRY := 33854;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8480.21,`position_y`=937.883,`position_z`=547.293 WHERE `guid`=76735;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.01942, 'Thomas Partridge - Reach wp 1 - turn to'),
(@ENTRY,0,3,0,40,0,100,0,5,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 5 - run script'),
(@ENTRY,0,4,0,40,0,100,0,9,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 9 - run script'),
(@ENTRY,0,5,0,40,0,100,0,13,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 13 - run script'),
(@ENTRY,0,6,0,40,0,100,0,16,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 16 - run script'),
(@ENTRY,0,7,0,40,0,100,0,20,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 20 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,5,273,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - emote');
-- Waypoints for Thomas Partridge from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8481.685,959.4879,547.2927, 'Thomas Partridge'),
(@ENTRY,2,8482.575,952.007,547.2927, 'Thomas Partridge'),
(@ENTRY,3,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,4,8480.29,928.951,547.293, 'Thomas Partridge'),
(@ENTRY,5,8481.386,929.6846,547.2927, 'Thomas Partridge'),
(@ENTRY,6,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,7,8479.08,935.109,547.293, 'Thomas Partridge'),
(@ENTRY,8,8482.33,937.765,547.294, 'Thomas Partridge'),
(@ENTRY,9,8487.458,937.033,547.2927, 'Thomas Partridge'),
(@ENTRY,10,8482.33,937.765,547.294, 'Thomas Partridge'),
(@ENTRY,11,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,12,8479.21,919.35,547.294, 'Thomas Partridge'),
(@ENTRY,13,8483.181,917.6667,547.2927, 'Thomas Partridge'),
(@ENTRY,14,8480.25,917.926,547.293, 'Thomas Partridge'),
(@ENTRY,15,8480.31,909.402,547.293, 'Thomas Partridge'),
(@ENTRY,16,8484.031,903.8014,547.2927, 'Thomas Partridge'),
(@ENTRY,17,8479.39,909.922,547.293, 'Thomas Partridge'),
(@ENTRY,18,8479.08,935.109,547.293, 'Thomas Partridge'),
(@ENTRY,19,8483.99,937.559,547.293, 'Thomas Partridge'),
(@ENTRY,20,8486.654,940.0261,547.2929, 'Thomas Partridge'),
(@ENTRY,21,8483.99,937.559,547.293, 'Thomas Partridge'),
(@ENTRY,22,8480.21,937.883,547.293, 'Thomas Partridge');

-- SAI for Brammold Deepmine
SET @ENTRY := 32509;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5771.88,`position_y`=632.803,`position_z`=661.075 WHERE `guid`=120355;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,2,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 2 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.321288, 'Brammold Deepmine - Reach wp 2 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,8,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 8 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.692969, 'Brammold Deepmine - Reach wp 8 - turn to');
-- Waypoints for Brammold Deepmine from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5769.026,629.7931,661.0721, 'Brammold Deepmine'),
(@ENTRY,2,5770.056,625.5038,661.0721, 'Brammold Deepmine'),
(@ENTRY,3,5769.026,629.7931,661.0721, 'Brammold Deepmine'),
(@ENTRY,4,5771.88,632.803,661.075, 'Brammold Deepmine'),
(@ENTRY,5,5773.25,637.491,661.151, 'Brammold Deepmine'),
(@ENTRY,6,5759.77,648.809,650.12, 'Brammold Deepmine'),
(@ENTRY,7,5757,647.883,650.141, 'Brammold Deepmine'),
(@ENTRY,8,5753.792,635.2266,650.1417, 'Brammold Deepmine'),
(@ENTRY,9,5757,647.883,650.141, 'Brammold Deepmine'),
(@ENTRY,10,5759.77,648.809,650.12, 'Brammold Deepmine'),
(@ENTRY,11,5773.25,637.491,661.151, 'Brammold Deepmine'),
(@ENTRY,12,5771.88,632.803,661.075, 'Brammold Deepmine');

-- SAI for Emi
SET @ENTRY := 32668;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5805.625,`position_y`=692.3191,`position_z`=647.0484 WHERE `guid`=110543;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Emi - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 1 - pause path'),
(@ENTRY,0,2,3,40,0,100,0,2,@ENTRY,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 2 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.316126, 'Emi - Reach wp 2 - turm to');
-- Waypoints for Emi from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5809.61,694.5121,647.0484, 'Emi'),
(@ENTRY,2,5805.625,692.3191,647.0484, 'Emi');
-- 0xF130007F9C00292F .go 5809.61 694.5121 647.0484

-- SAI for Colin
SET @ENTRY := 32669;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5807.146,`position_y`=683.3826,`position_z`=647.0484 WHERE `guid`=110586;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Colin - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.427974, 'Colin - Reach wp 1 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,2,@ENTRY,0,0,54,28000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 2 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.2094395, 'Colin - Reach wp 2 - turm to'),
(@ENTRY,0,5,6,40,0,100,0,3,@ENTRY,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 3 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.804818, 'Colin - Reach wp 3 - turm to');
-- Waypoints for Colin from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5815.523,681.2226,647.0484, 'Colin'),
(@ENTRY,2,5818.646,688.2175,647.0484, 'Colin'),
(@ENTRY,3,5807.146,683.3826,647.0484, 'Colin');
-- 0xF130007F9D00293F .go 5815.523 681.2226 647.0484
-- Pathing for Redfang Elder Entry: 26436
SET @NPC := 102310;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3466.93,`position_y`=-4594.270,`position_z`=231.273 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3462.383,-4612.148,231.4899,0,0,0,100,0),
(@PATH,2,3455.436,-4622.705,231.2399,0,0,0,100,0),
(@PATH,3,3431.224,-4629.703,231.8959,0,0,0,100,0),
(@PATH,4,3417.972,-4627.66,231.7709,0,0,0,100,0),
(@PATH,5,3407.802,-4618.447,231.8959,0,0,0,100,0),
(@PATH,6,3404.309,-4602.283,231.6459,0,0,0,100,0),
(@PATH,7,3407.839,-4586.454,231.6536,0,0,0,100,0),
(@PATH,8,3418.060,-4573.690,231.466,0,0,0,100,0),
(@PATH,9,3434.690,-4569.920,231.300,0,0,0,100,0),
(@PATH,10,3450.15,-4570.980,231.293,0,0,0,100,0),
(@PATH,11,3462.95,-4577.800,231.405,0,0,0,100,0),
(@PATH,12,3466.93,-4594.270,231.273,0,0,0,100,0);

-- Pathing for Sorlof Entry: 24914
SET @NPC := 103278;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=234.3479,`position_y`=-3839.657,`position_z`=6.546998 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,260.008,-3825.02,5.059539,0,0,0,100,0),
(@PATH,2,279.0299,-3805.746,4.302778,0,0,0,100,0),
(@PATH,3,307.1137,-3802.395,2.265985,0,0,0,100,0),
(@PATH,4,327.6607,-3807.026,2.515985,0,0,0,100,0),
(@PATH,5,356.2998,-3801.84,1.635767,0,0,0,100,0),
(@PATH,6,390.8152,-3765.867,0.9720907,0,0,0,100,0),
(@PATH,7,376.6523,-3827.153,2.452734,0,0,0,100,0),
(@PATH,8,341.8276,-3860.943,5.220708,0,0,0,100,0),
(@PATH,9,317.3375,-3872.974,3.487318,0,0,0,100,0),
(@PATH,10,299.2409,-3881.008,1.03899,0,0,0,100,0),
(@PATH,11,281.0217,-3887.393,5.197232,0,0,0,100,0),
(@PATH,12,242.4368,-3911.016,4.672004,0,0,0,100,0),
(@PATH,13,234.3479,-3839.657,6.546998,0,0,0,100,0);

-- Pathing for Defias Tower Sentry Entry: 7056
SET @NPC := 66994;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11155.1,`position_y`=537.7078,`position_z`=61.61254 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11149.68,531.8951,61.64723,0,0,0,100,0),
(@PATH,2,-11145.47,530.3519,61.64816,0,0,0,100,0),
(@PATH,3,-11142.67,529.801,61.65041,0,0,0,100,0),
(@PATH,4,-11140.16,529.242,61.64826,0,0,0,100,0),
(@PATH,5,-11135.57,530.644,61.6618,0,0,0,100,0),
(@PATH,6,-11131.79,533.377,61.64826,0,0,0,100,0),
(@PATH,7,-11130.45,537.5435,61.64826,0,0,0,100,0),
(@PATH,8,-11129.11,544.0456,61.61562,0,0,0,100,0),
(@PATH,9,-11131.18,551.2862,61.6304,0,0,0,100,0),
(@PATH,10,-11133.83,554.506,61.63765,0,0,0,100,0),
(@PATH,11,-11137.87,556.6643,61.64382,0,0,0,100,0),
(@PATH,12,-11144.09,557.5725,61.63416,0,0,0,100,0),
(@PATH,13,-11150.33,555.5367,61.60638,0,0,0,100,0),
(@PATH,14,-11154.31,552.1038,61.62201,0,0,0,100,0),
(@PATH,15,-11156.64,544.7747,61.62113,0,0,0,100,0),
(@PATH,16,-11155.1,537.7078,61.61254,0,0,0,100,0);

-- Pathing for Defias Tower Patroller Entry: 7052
SET @NPC := 66988;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11152.27,`position_y`=552.6809,`position_z`=55.89178 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11149.12,554.4658,55.80492,0,0,0,100,0),
(@PATH,2,-11144.68,556.6826,55.13705,0,0,0,100,0),
(@PATH,3,-11140.38,556.8944,53.87344,0,0,0,100,0),
(@PATH,4,-11136,554.8301,52.57347,0,0,0,100,0),
(@PATH,5,-11131.66,549.8716,50.37294,0,0,0,100,0),
(@PATH,6,-11130.73,546.1309,49.47009,0,0,0,100,0),
(@PATH,7,-11131.66,549.8716,50.37294,0,0,0,100,0),
(@PATH,8,-11136,554.8301,52.57347,0,0,0,100,0),
(@PATH,9,-11140.38,556.8944,53.87344,0,0,0,100,0),
(@PATH,10,-11144.68,556.6826,55.13705,0,0,0,100,0),
(@PATH,11,-11149.12,554.4658,55.80492,0,0,0,100,0),
(@PATH,12,-11152.27,552.6809,55.89178,0,0,0,100,0);

-- Pathing for Malformed Defias Drone Entry: 7051
SET @NPC := 90331;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11147.35,`position_y`=512.5392,`position_z`=32.61861 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11155.68,519.0281,32.36861,0,0,0,100,0),
(@PATH,2,-11147.35,512.5392,32.61861,0,0,0,100,0),
(@PATH,3,-11135.54,503.5617,31.61861,0,0,0,100,0),
(@PATH,4,-11120.64,505.8491,31.42709,0,0,0,100,0),
(@PATH,5,-11107.24,507.4966,30.92709,0,0,0,100,0),
(@PATH,6,-11120.64,505.8491,31.42709,0,0,0,100,0),
(@PATH,7,-11135.54,503.5617,31.61861,0,0,0,100,0),
(@PATH,8,-11147.35,512.5392,32.61861,0,0,0,100,0);

-- Pathing for Blackrock Scout Entry: 4064
SET @NPC := 28337;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9293.198,`position_y`=-2943.878,`position_z`=163.8473 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9294.498,-2942.447,163.8475,0,0,0,100,0),
(@PATH,2,-9295.34,-2940.965,163.8479,0,0,0,100,0),
(@PATH,3,-9295.685,-2939.59,163.8468,0,0,0,100,0),
(@PATH,4,-9295.738,-2938.026,163.8467,0,0,0,100,0),
(@PATH,5,-9295.759,-2936.388,163.847,0,0,0,100,0),
(@PATH,6,-9295.278,-2935.375,163.8471,0,0,0,100,0),
(@PATH,7,-9294.543,-2934.205,163.8473,0,0,0,100,0),
(@PATH,8,-9294.007,-2933.157,163.8473,0,0,0,100,0),
(@PATH,9,-9292.805,-2932.29,163.8473,0,0,0,100,0),
(@PATH,10,-9291.458,-2931.706,163.8473,0,0,0,100,0),
(@PATH,11,-9290.221,-2931.361,163.8473,0,0,0,100,0),
(@PATH,12,-9289.213,-2931.191,163.8473,0,0,0,100,0),
(@PATH,13,-9288.1,-2930.992,163.8473,0,0,0,100,0),
(@PATH,14,-9287.005,-2931.001,163.8473,0,0,0,100,0),
(@PATH,15,-9285.914,-2931.289,163.8473,0,0,0,100,0),
(@PATH,16,-9284.389,-2931.998,163.8473,0,0,0,100,0),
(@PATH,17,-9283.646,-2933.005,163.8473,0,0,0,100,0),
(@PATH,18,-9282.956,-2934.348,163.8473,0,0,0,100,0),
(@PATH,19,-9282.225,-2935.459,163.8473,0,0,0,100,0),
(@PATH,20,-9281.658,-2936.635,163.8473,0,0,0,100,0),
(@PATH,21,-9281.364,-2937.675,163.8473,0,0,0,100,0),
(@PATH,22,-9281.658,-2936.635,163.8473,0,0,0,100,0),
(@PATH,23,-9282.225,-2935.459,163.8473,0,0,0,100,0),
(@PATH,24,-9282.956,-2934.348,163.8473,0,0,0,100,0),
(@PATH,25,-9283.646,-2933.005,163.8473,0,0,0,100,0),
(@PATH,26,-9284.389,-2931.998,163.8473,0,0,0,100,0),
(@PATH,27,-9285.914,-2931.289,163.8473,0,0,0,100,0),
(@PATH,28,-9287.005,-2931.001,163.8473,0,0,0,100,0),
(@PATH,29,-9288.1,-2930.992,163.8473,0,0,0,100,0),
(@PATH,30,-9289.213,-2931.191,163.8473,0,0,0,100,0),
(@PATH,31,-9290.221,-2931.361,163.8473,0,0,0,100,0),
(@PATH,32,-9291.458,-2931.706,163.8473,0,0,0,100,0),
(@PATH,33,-9292.805,-2932.29,163.8473,0,0,0,100,0),
(@PATH,34,-9294.007,-2933.157,163.8473,0,0,0,100,0),
(@PATH,35,-9294.543,-2934.205,163.8473,0,0,0,100,0),
(@PATH,36,-9295.278,-2935.375,163.8471,0,0,0,100,0),
(@PATH,37,-9295.759,-2936.388,163.847,0,0,0,100,0),
(@PATH,38,-9295.738,-2938.026,163.8467,0,0,0,100,0),
(@PATH,39,-9295.685,-2939.59,163.8468,0,0,0,100,0),
(@PATH,40,-9295.391,-2940.761,163.8475,0,0,0,100,0),
(@PATH,41,-9294.498,-2942.447,163.8475,0,0,0,100,0),
(@PATH,42,-9293.198,-2943.878,163.8473,0,0,0,100,0),
(@PATH,43,-9291.648,-2944.502,163.8473,0,0,0,100,0),
(@PATH,44,-9289.801,-2945.168,163.8473,0,0,0,100,0),
(@PATH,45,-9288.234,-2945.503,163.8473,0,0,0,100,0),
(@PATH,46,-9286.938,-2945.095,163.8473,0,0,0,100,0),
(@PATH,47,-9285.65,-2944.349,163.8473,0,0,0,100,0),
(@PATH,48,-9284.43,-2943.57,163.8473,0,0,0,100,0),
(@PATH,49,-9283.33,-2942.828,163.8473,0,0,0,100,0),
(@PATH,50,-9282.16,-2941.825,163.8473,0,0,0,100,0),
(@PATH,51,-9283.208,-2942.748,163.8473,0,0,0,100,0),
(@PATH,52,-9284.43,-2943.57,163.8473,0,0,0,100,0),
(@PATH,53,-9285.65,-2944.349,163.8473,0,0,0,100,0),
(@PATH,54,-9286.938,-2945.095,163.8473,0,0,0,100,0),
(@PATH,55,-9288.209,-2945.509,163.8473,0,0,0,100,0),
(@PATH,56,-9289.801,-2945.168,163.8473,0,0,0,100,0),
(@PATH,57,-9291.648,-2944.502,163.8473,0,0,0,100,0),
(@PATH,58,-9293.198,-2943.878,163.8473,0,0,0,100,0);

-- Pathing for Blackrock Tracker Entry: 615
SET @NPC := 17316;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8726,`position_y`=-2374.531,`position_z`=157.9322 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8720.093,-2371.032,156.9322,0,0,0,100,0),
(@PATH,2,-8714.607,-2362.74,156.7913,0,0,0,100,0),
(@PATH,3,-8706.662,-2347.766,156.1663,0,0,0,100,0),
(@PATH,4,-8694.753,-2337.18,156.0414,0,0,0,100,0),
(@PATH,5,-8681.48,-2329.154,156.0413,0,0,0,100,0),
(@PATH,6,-8676.822,-2318.932,156.0413,0,0,0,100,0),
(@PATH,7,-8682.414,-2311.587,156.0413,0,0,0,100,0),
(@PATH,8,-8691.346,-2314.592,156.6663,0,0,0,100,0),
(@PATH,9,-8697.195,-2324.672,157.0413,0,0,0,100,0),
(@PATH,10,-8704.646,-2338.616,156.0413,0,0,0,100,0),
(@PATH,11,-8712.913,-2350.304,156.1663,0,0,0,100,0),
(@PATH,12,-8751.018,-2372.175,157.9172,0,0,0,100,0),
(@PATH,13,-8759.117,-2380.215,156.7922,0,0,0,100,0),
(@PATH,14,-8773.799,-2405.039,156.4857,0,0,0,100,0),
(@PATH,15,-8767.317,-2393.249,156.0413,0,0,0,100,0),
(@PATH,16,-8757.157,-2380.358,157.0422,0,0,0,100,0),
(@PATH,17,-8744.273,-2377.308,158.5422,0,0,0,100,0),
(@PATH,18,-8735.471,-2378.812,159.4172,0,0,0,100,0),
(@PATH,19,-8726,-2374.531,157.9322,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 16227;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=423,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=-9621.853,`position_y`=-2534.608,`position_z`=59.30342 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9611.43,-2537.291,59.55342,0,0,0,100,0),
(@PATH,2,-9596.484,-2523.148,62.104,0,0,0,100,0),
(@PATH,3,-9595.624,-2513.513,59.729,0,0,0,100,0),
(@PATH,4,-9578.707,-2505.862,59.229,0,0,0,100,0),
(@PATH,5,-9595.624,-2513.513,59.729,0,0,0,100,0),
(@PATH,6,-9596.484,-2523.148,62.104,0,0,0,100,0),
(@PATH,7,-9611.43,-2537.291,59.55342,0,0,0,100,0),
(@PATH,8,-9621.853,-2534.608,59.30342,0,0,0,100,0),
(@PATH,9,-9631.005,-2520.389,59.22416,0,0,0,100,0),
(@PATH,10,-9626.435,-2493.965,61.77357,0,0,0,100,0),
(@PATH,11,-9615.699,-2482.903,60.27357,0,0,0,100,0),
(@PATH,12,-9600.611,-2478.035,59.14857,0,0,0,100,0),
(@PATH,13,-9615.699,-2482.903,60.27357,0,0,0,100,0),
(@PATH,14,-9626.435,-2493.965,61.77357,0,0,0,100,0),
(@PATH,15,-9631.005,-2520.389,59.22416,0,0,0,100,0),
(@PATH,16,-9621.853,-2534.608,59.30342,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 16349;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9539.159,`position_y`=-1908.932,`position_z`=73.13508 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9515.88,-1927.064,76.08606,0,0,0,100,0),
(@PATH,2,-9539.159,-1908.932,73.13508,0,0,0,100,0),
(@PATH,3,-9535.29,-1892.516,74.76267,0,0,0,100,0),
(@PATH,4,-9488.921,-1881.527,82.08475,0,0,0,100,0),
(@PATH,5,-9479.733,-1869.828,84.58475,0,0,0,100,0),
(@PATH,6,-9488.921,-1881.527,82.08475,0,0,0,100,0),
(@PATH,7,-9535.29,-1892.516,74.76267,0,0,0,100,0),
(@PATH,8,-9539.159,-1908.932,73.13508,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 15218;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9632.086,`position_y`=-2441.966,`position_z`=63.98378 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9606.604,-2486.99,60.02357,0,0,0,100,0),
(@PATH,2,-9602.279,-2502.665,59.72416,0,0,0,100,0),
(@PATH,3,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,4,-9625.794,-2448.716,63.23378,0,0,0,100,0),
(@PATH,5,-9632.086,-2441.966,63.98378,0,0,0,100,0);

-- Pathing for Redridge Poacher Entry: 424
SET @NPC := 15219;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9622.567,`position_y`=-2470.478,`position_z`=60.27357 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,2,-9606.604,-2486.99,60.02357,0,0,0,100,0),
(@PATH,3,-9602.279,-2502.665,59.72416,0,0,0,100,0),
(@PATH,4,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,5,-9622.567,-2470.478,60.27357,0,0,0,100,0),
(@PATH,6,-9625.794,-2448.716,63.23378,0,0,0,100,0),
(@PATH,7,-9622.567,-2470.478,60.27357,0,0,0,100,0);

-- Pathing for Redridge Poacher Entry: 424
SET @NPC := 16224;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9605.831,`position_y`=-2504.101,`position_z`=59.84916 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9617.936,-2505.087,60.59916,0,0,0,100,0),
(@PATH,2,-9624.509,-2515.335,59.47416,0,0,0,100,0),
(@PATH,3,-9638.779,-2525.417,59.05296,0,0,0,100,0),
(@PATH,4,-9628.489,-2516.524,59.34916,0,0,0,100,0),
(@PATH,5,-9615.57,-2504.555,60.34916,0,0,0,100,0),
(@PATH,6,-9605.831,-2504.101,59.84916,0,0,0,100,0),
(@PATH,7,-9602.604,-2510.273,59.34916,8000,0,0,100,0),
(@PATH,8,-9605.831,-2504.101,59.84916,0,0,0,100,0);

-- Pathing for Redridge Brute Entry: 426
SET @NPC := 10109;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9129.793,`position_y`=-2061.262,`position_z`=128.7022 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9129.67,-2045.571,128.7022,0,0,0,100,0),
(@PATH,2,-9136.09,-2034.611,128.5107,0,0,0,100,0),
(@PATH,3,-9129.67,-2045.571,128.7022,0,0,0,100,0),
(@PATH,4,-9129.793,-2061.262,128.7022,0,0,0,100,0),
(@PATH,5,-9102.493,-2073.968,128.7588,0,0,0,100,0),
(@PATH,6,-9081.025,-2073.283,128.7137,0,0,0,100,0),
(@PATH,7,-9061.23,-2083.464,129.3531,0,0,0,100,0),
(@PATH,8,-9081.025,-2073.283,128.7137,0,0,0,100,0),
(@PATH,9,-9102.493,-2073.968,128.7588,0,0,0,100,0),
(@PATH,10,-9129.793,-2061.262,128.7022,0,0,0,100,0);

-- Pathing for Redridge Brute Entry: 426
SET @NPC := 26003;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9081.852,`position_y`=-2446.575,`position_z`=123.6152 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9068.523,-2439.98,127.2402,0,0,0,100,0),
(@PATH,2,-9055.93,-2434.33,127.9016,0,0,0,100,0),
(@PATH,3,-9043.435,-2417.14,128.5205,0,0,0,100,0),
(@PATH,4,-9055.781,-2434.121,127.9016,0,0,0,100,0),
(@PATH,5,-9068.496,-2439.973,127.2402,0,0,0,100,0),
(@PATH,6,-9080.561,-2445.323,124.1152,0,0,0,100,0),
(@PATH,7,-9095.229,-2447.28,120.7402,0,0,0,100,0),
(@PATH,8,-9081.852,-2446.575,123.6152,0,0,0,100,0);

-- Pathing for Redridge Mystic Entry: 430
SET @NPC := 10108;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9085.817,`position_y`=-2041.056,`position_z`=129.4007 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9093.47,-2023.117,128.7757,0,0,0,100,0),
(@PATH,2,-9085.817,-2041.056,129.4007,0,0,0,100,0),
(@PATH,3,-9098.341,-2060.571,128.7757,0,0,0,100,0),
(@PATH,4,-9121.283,-2054.603,128.7022,0,0,0,100,0),
(@PATH,5,-9098.341,-2060.571,128.7757,0,0,0,100,0),
(@PATH,6,-9085.817,-2041.056,129.4007,0,0,0,100,0);

-- Pathing for Blackrock Champion Entry: 435
SET @NPC := 10171;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8719.215,`position_y`=-2162.265,`position_z`=157.9493 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8732.552,-2168.392,159.3678,0,0,0,100,0),
(@PATH,2,-8746.09,-2167.292,158.6607,0,0,0,100,0),
(@PATH,3,-8732.552,-2168.392,159.3678,0,0,0,100,0),
(@PATH,4,-8719.215,-2162.265,157.9493,0,0,0,100,0),
(@PATH,5,-8696.335,-2161.937,157.3559,0,0,0,100,0),
(@PATH,6,-8692.609,-2182.1,156.5922,0,0,0,100,0),
(@PATH,7,-8701.185,-2195.719,154.9269,0,0,0,100,0),
(@PATH,8,-8702.752,-2227.732,154.6221,0,0,0,100,0),
(@PATH,9,-8713.253,-2240.955,154.7007,0,0,0,100,0),
(@PATH,10,-8732.683,-2250.81,154.3486,0,0,0,100,0),
(@PATH,11,-8713.253,-2240.955,154.7007,0,0,0,100,0),
(@PATH,12,-8702.752,-2227.732,154.6221,0,0,0,100,0),
(@PATH,13,-8701.185,-2195.719,154.9269,0,0,0,100,0),
(@PATH,14,-8692.609,-2182.1,156.5922,0,0,0,100,0),
(@PATH,15,-8696.276,-2161.936,157.3557,0,0,0,100,0),
(@PATH,16,-8719.215,-2162.265,157.9493,0,0,0,100,0);

-- Pathing for Redridge Basher Entry: 446
SET @NPC := 10126;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8856.583,`position_y`=-1959.49,`position_z`=122.6195 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8869.44,-1973.048,123.1989,0,0,0,100,0),
(@PATH,2,-8872.306,-1987.248,125.6125,0,0,0,100,0),
(@PATH,3,-8871.035,-1998.969,123.9351,0,0,0,100,0),
(@PATH,4,-8874.864,-2010.225,123.8613,0,0,0,100,0),
(@PATH,5,-8881.981,-2014.834,124.7159,0,0,0,100,0),
(@PATH,6,-8890.29,-2014.196,125.0285,0,0,0,100,0),
(@PATH,7,-8882.051,-2014.828,124.7096,0,0,0,100,0),
(@PATH,8,-8874.864,-2010.225,123.8613,0,0,0,100,0),
(@PATH,9,-8871.035,-1998.969,123.9351,0,0,0,100,0),
(@PATH,10,-8872.306,-1987.248,125.6125,0,0,0,100,0),
(@PATH,11,-8869.474,-1973.084,123.2088,0,0,0,100,0),
(@PATH,12,-8856.583,-1959.49,122.6195,0,0,0,100,0),
(@PATH,13,-8854.203,-1933.718,124.2242,0,0,0,100,0),
(@PATH,14,-8849.34,-1913.927,126.1551,0,0,0,100,0),
(@PATH,15,-8874.792,-1914.902,132.0751,0,0,0,100,0),
(@PATH,16,-8889.941,-1926.165,135.8921,0,0,0,100,0),
(@PATH,17,-8903.536,-1951.488,137.975,0,0,0,100,0),
(@PATH,18,-8889.941,-1926.165,135.8921,0,0,0,100,0),
(@PATH,19,-8874.792,-1914.902,132.0751,0,0,0,100,0),
(@PATH,20,-8849.34,-1913.927,126.1551,0,0,0,100,0),
(@PATH,21,-8854.203,-1933.718,124.2242,0,0,0,100,0),
(@PATH,22,-8856.583,-1959.49,122.6195,0,0,0,100,0);

-- Pathing for Redridge Basher Entry: 446
SET @NPC := 16422;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8996.826,`position_y`=-2085.873,`position_z`=132.5694 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8962.664,-2081.184,132.5694,0,0,0,100,0),
(@PATH,2,-8996.826,-2085.873,132.5694,0,0,0,100,0),
(@PATH,3,-9022.803,-2096.318,132.0085,0,0,0,100,0),
(@PATH,4,-8996.826,-2085.873,132.5694,0,0,0,100,0);

-- Pathing for Redridge Drudger Entry: 580
SET @NPC := 11897;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8795.307,`position_y`=-1973.387,`position_z`=126.7356 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8801.047,-1955.703,126.1625,0,0,0,100,0),
(@PATH,2,-8795.307,-1973.387,126.7356,0,0,0,100,0),
(@PATH,3,-8782.728,-1980.681,128.0934,0,0,0,100,0),
(@PATH,4,-8772.052,-1993.34,129.6344,0,0,0,100,0),
(@PATH,5,-8768.62,-2016.962,130.0639,0,0,0,100,0),
(@PATH,6,-8786.789,-2040.241,127.6738,0,0,0,100,0),
(@PATH,7,-8804.953,-2054.536,129.402,0,0,0,100,0),
(@PATH,8,-8786.789,-2040.241,127.6738,0,0,0,100,0),
(@PATH,9,-8768.62,-2016.962,130.0639,0,0,0,100,0),
(@PATH,10,-8772.052,-1993.34,129.6344,0,0,0,100,0),
(@PATH,11,-8782.728,-1980.681,128.0934,0,0,0,100,0),
(@PATH,12,-8795.307,-1973.387,126.7356,0,0,0,100,0);

-- Pathing for Redridge Basher Entry: 446
SET @NPC := 11679;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9008.022,`position_y`=-2015.315,`position_z`=135.5978 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9013.389,-2001.146,135.8478,0,0,0,100,0),
(@PATH,2,-9020.631,-1992.944,136.1136,0,0,0,100,0),
(@PATH,3,-9032.95,-1992.436,138.1136,0,0,0,100,0),
(@PATH,4,-9020.631,-1992.944,136.1136,0,0,0,100,0),
(@PATH,5,-9013.389,-2001.146,135.8478,0,0,0,100,0),
(@PATH,6,-9008.022,-2015.315,135.5978,0,0,0,100,0),
(@PATH,7,-9000.12,-2022.714,135.7228,0,0,0,100,0),
(@PATH,8,-8983.734,-2024.047,135.9675,0,0,0,100,0),
(@PATH,9,-8976.881,-2007.302,135.8149,0,0,0,100,0),
(@PATH,10,-8945.093,-1989.848,138.4766,0,0,0,100,0),
(@PATH,11,-8928.801,-1979.029,139.8955,0,0,0,100,0),
(@PATH,12,-8918.683,-1984.234,140.0949,0,0,0,100,0),
(@PATH,13,-8893.354,-1992.97,136.0317,0,0,0,100,0),
(@PATH,14,-8918.683,-1984.234,140.0949,0,0,0,100,0),
(@PATH,15,-8928.801,-1979.029,139.8955,0,0,0,100,0),
(@PATH,16,-8944.557,-1989.485,138.5895,0,0,0,100,0),
(@PATH,17,-8976.881,-2007.302,135.8149,0,0,0,100,0),
(@PATH,18,-8983.734,-2024.047,135.9675,0,0,0,100,0),
(@PATH,19,-9000.12,-2022.714,135.7228,0,0,0,100,0),
(@PATH,20,-9008.022,-2015.315,135.5978,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 10095;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9475.37,`position_y`=-1934.13,`position_z`=80.3683 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9471.528,-1924.836,81.67286,0,0,0,100,0),
(@PATH,2,-9466.015,-1923.353,82.18614,0,0,0,100,0),
(@PATH,3,-9460.636,-1918.143,82.68614,0,0,0,100,0),
(@PATH,4,-9458.96,-1909.725,82.56114,0,0,0,100,0),
(@PATH,5,-9460.59,-1901.123,82.43614,0,0,0,100,0),
(@PATH,6,-9492.081,-1893.237,80.33475,0,0,0,100,0),
(@PATH,7,-9510.62,-1931.774,76.58606,0,0,0,100,0),
(@PATH,8,-9524.609,-1944.812,74.45707,0,0,0,100,0),
(@PATH,9,-9523.66,-1956.9,74.2286,0,0,0,100,0),
(@PATH,10,-9508.4,-1957.79,77.6211,0,0,0,100,0),
(@PATH,11,-9492.42,-1952.17,79.3943,0,0,0,100,0),
(@PATH,12,-9480.27,-1944.86,79.5265,0,0,0,100,0),
(@PATH,13,-9475.37,-1934.13,80.3683,0,0,0,100,0);

-- Pathing for Rabid Shadowhide Gnoll Entry: 434
SET @NPC := 10053;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9265.055,`position_y`=-3209.41,`position_z`=102.3781 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9292.012,-3240.249,100.6492,0,0,0,100,0),
(@PATH,2,-9310.653,-3233.226,100.8562,0,0,0,100,0),
(@PATH,3,-9343.33,-3233.92,95.33384,0,0,0,100,0),
(@PATH,4,-9376.466,-3260.896,88.62462,4000,0,0,100,0),
(@PATH,5,-9343.33,-3233.92,95.33384,0,0,0,100,0),
(@PATH,6,-9310.653,-3233.226,100.8562,0,0,0,100,0),
(@PATH,7,-9292.012,-3240.249,100.6492,0,0,0,100,0),
(@PATH,8,-9265.055,-3209.41,102.3781,0,0,0,100,0);

-- Pathing for Bone Chewer Entry: 210
SET @NPC := 5973;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10222.43,`position_y`=143.7129,`position_z`=2.255024 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10243.54,161.2734,0.0465889,0,0,0,100,0),
(@PATH,2,-10274.24,166.031,1.11338,0,0,0,100,0),
(@PATH,3,-10275.96,150.4307,1.513012,0,0,0,100,0),
(@PATH,4,-10261.48,138.3093,2.175644,0,0,0,100,0),
(@PATH,5,-10222.57,178.1452,0.4510765,0,0,0,100,0),
(@PATH,6,-10209.76,180.1912,1.390846,0,0,0,100,0),
(@PATH,7,-10204.68,164.0327,1.472527,0,0,0,100,0),
(@PATH,8,-10206.47,150.2491,1.775291,0,0,0,100,0),
(@PATH,9,-10222.43,143.7129,2.255024,0,0,0,100,0);

-- Pathing for Bone Chewer Entry: 210
SET @NPC := 4394;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=210,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=-10224.68,`position_y`=214.6403,`position_z`=2.800045 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10221.75,199.632,2.804298,0,0,0,100,0),
(@PATH,2,-10224.68,214.6403,2.800045,0,0,0,100,0),
(@PATH,3,-10222.65,233.476,2.799393,0,0,0,100,0),
(@PATH,4,-10224.83,251.8642,2.799393,0,0,0,100,0),
(@PATH,5,-10236.47,256.503,2.799393,0,0,0,100,0),
(@PATH,6,-10240.21,269.6581,2.799393,0,0,0,100,0),
(@PATH,7,-10238.13,284.0669,2.799393,0,0,0,100,0),
(@PATH,8,-10229.13,286.6407,2.799393,0,0,0,100,0),
(@PATH,9,-10209.48,282.851,2.16798,0,0,0,100,0),
(@PATH,10,-10205.71,282.0735,2.416508,0,0,0,100,0),
(@PATH,11,-10201.7,282.9867,2.54327,0,0,0,100,0),
(@PATH,12,-10196.69,286.0379,2.193909,0,0,0,100,0),
(@PATH,13,-10195.89,292.459,2.453735,0,0,0,100,0),
(@PATH,14,-10200.42,308.0852,4.772118,0,0,0,100,0),
(@PATH,15,-10195.89,292.459,2.453735,0,0,0,100,0),
(@PATH,16,-10196.69,286.0379,2.193909,0,0,0,100,0),
(@PATH,17,-10201.7,282.9867,2.54327,0,0,0,100,0),
(@PATH,18,-10205.71,282.0735,2.416508,0,0,0,100,0),
(@PATH,19,-10209.48,282.851,2.16798,0,0,0,100,0),
(@PATH,20,-10229.13,286.6407,2.799393,0,0,0,100,0),
(@PATH,21,-10238.13,284.0669,2.799393,0,0,0,100,0),
(@PATH,22,-10240.21,269.6581,2.799393,0,0,0,100,0),
(@PATH,23,-10236.47,256.503,2.799393,0,0,0,100,0),
(@PATH,24,-10224.83,251.8642,2.799393,0,0,0,100,0),
(@PATH,25,-10222.65,233.476,2.799393,0,0,0,100,0),
(@PATH,26,-10224.68,214.6403,2.800045,0,0,0,100,0);

-- Pathing for Blackrock Outrunner Entry: 485
SET @NPC := 31809;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9164.028,`position_y`=-2442.941,`position_z`=110.9322 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9162.086,-2442.718,109.9972,10000,1,0,100,0),
(@PATH,2,-9140.406,-2451.874,110.0572,0,1,0,100,0),
(@PATH,3,-9112.781,-2462.785,119.0318,0,1,0,100,0),
(@PATH,4,-9107.47,-2472.122,120.0782,0,1,0,100,0),
(@PATH,5,-9110.72,-2477.348,119.7032,10000,1,0,100,0),
(@PATH,6,-9110.416,-2471.354,119.5782,0,1,0,100,0),
(@PATH,7,-9119.938,-2462.73,117.2818,0,1,0,100,0),
(@PATH,8,-9135.719,-2453.595,111.1822,0,1,0,100,0),
(@PATH,9,-9154.232,-2450.505,110.5572,0,1,0,100,0),
(@PATH,10,-9164.028,-2442.941,110.9322,0,1,0,100,0);
DELETE FROM `creature` WHERE `guid` IN (31833,31807);
DELETE FROM `creature_addon` WHERE `guid` IN (31833,31807);

-- Pathing for Watcher Ladimore Entry: 576
SET @NPC := 4211;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10577.47,`position_y`=-1165.161,`position_z`=28.14966 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10581.63,-1172.892,28.49362,0,0,0,100,0),
(@PATH,2,-10584.04,-1180.587,27.99362,0,0,0,100,0),
(@PATH,3,-10573.58,-1185.804,27.99362,0,0,0,100,0),
(@PATH,4,-10570.05,-1191.732,27.86862,0,0,0,100,0),
(@PATH,5,-10569.19,-1199.181,27.74362,0,0,0,100,0),
(@PATH,6,-10551.35,-1205.735,27.56617,0,0,0,100,0),
(@PATH,7,-10549.26,-1192.892,27.66226,0,0,0,100,0),
(@PATH,8,-10535.19,-1192.908,27.66226,0,0,0,100,0),
(@PATH,9,-10546.21,-1179.316,28.16226,0,0,0,100,0),
(@PATH,10,-10547.91,-1167.96,27.78726,0,0,0,100,0),
(@PATH,11,-10554.19,-1153.211,28.07649,0,0,0,100,0),
(@PATH,12,-10565.88,-1154.214,27.57649,0,0,0,100,0),
(@PATH,13,-10577.47,-1165.161,28.14966,0,0,0,100,0);

-- Pathing for Calor Entry: 663
SET @NPC := 4176;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10572.92,`position_y`=-1211.979,`position_z`=26.21894 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10581.87,-1200.016,27.71894,0,0,0,100,0),
(@PATH,2,-10581.5,-1199.797,27.74362,56000,0,0,100,0),
(@PATH,3,-10572.92,-1211.979,26.21894,8000,0,0,100,0);

-- Pathing for Morg Gnarltree Entry: 226
SET @NPC := 4082;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10596.64,`position_y`=-1163.852,`position_z`=30.05967 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10596.3,-1164.096,30.05967,0,0,0,100,0), 
(@PATH,2,-10590.63,-1156.783,30.05967,0,0,0,100,0),
(@PATH,3,-10590.52,-1155.93,30.05967,55000,0,0,100,0),
(@PATH,4,-10590.21,-1156.136,30.05967,0,0,0,100,0),
(@PATH,5,-10596.64,-1163.852,30.05967,14000,0,0,100,0);

-- Pathing for Chef Grual Entry: 272
SET @NPC := 4192;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10499.35,`position_y`=-1157.982,`position_z`=28.08655 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10494.12,-1160.191,28.37647,45000,0,0,100,0), 
(@PATH,2,-10498.6,-1160.361,28.08655,0,0,0,100,0),
(@PATH,3,-10498.77,-1161.604,28.08655,9000,0,0,100,0),
(@PATH,4,-10498.77,-1161.249,28.08655,0,0,0,100,0),
(@PATH,5,-10507.73,-1161.963,28.09953,0,0,0,100,0),
(@PATH,6,-10509.7,-1160.204,28.09953,6000,0,0,100,0),
(@PATH,7,-10509.61,-1160.543,28.09953,0,0,0,100,0),
(@PATH,8,-10507.16,-1161.83,28.09953,0,0,0,100,0),
(@PATH,9,-10499.27,-1159.314,28.08655,0,0,0,100,0),
(@PATH,10,-10499.35,-1157.982,28.08655,18000,0,0,100,0);
--
-- Table structure for table `achievement_dbc`
--

DROP TABLE IF EXISTS `achievement_dbc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement_dbc` (
  `ID` int(10) unsigned NOT NULL,
  `requiredFaction` int(11) NOT NULL DEFAULT '-1',
  `mapID` int(11) NOT NULL DEFAULT '-1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `refAchievement` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement_dbc`
--

LOCK TABLES `achievement_dbc` WRITE;
/*!40000 ALTER TABLE `achievement_dbc` DISABLE KEYS */;
INSERT INTO `achievement_dbc` VALUES
(3696,-1,-1,0,2,1,0), -- Earned the right to represent a city in the Argent Tournament
(4788,-1,-1,0,2,1,0), -- Is exalted with The Aldor or has any of exalted rewards
(4789,-1,-1,0,2,1,0); -- Is exalted with The Scryers or has any of exalted rewards
/*!40000 ALTER TABLE `achievement_dbc` ENABLE KEYS */;
UNLOCK TABLES;
UPDATE `creature_template` SET `speed_run`=1,`spell2`=30708 WHERE `entry`=17539; -- Totem of Wrath I
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`speed_run`=1,`spell2`=30708 WHERE `entry`=30652; -- Totem of Wrath II
UPDATE `creature_template` SET `spell2`=30708 WHERE `entry`=30653; -- Totem of Wrath III
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`spell2`=30708 WHERE `entry`=30654; -- Totem of Wrath IV

UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=2 WHERE `modelid`=4589;

DELETE FROM `creature_template_addon` WHERE `entry` IN (17539,30652,30653,30654);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(17539,0,0,257,0,NULL), -- Totem of Wrath I
(30652,0,0,257,0,NULL), -- Totem of Wrath II
(30653,0,0,257,0,NULL), -- Totem of Wrath III
(30654,0,0,1,0,NULL); -- Totem of Wrath IV

DELETE FROM `spell_group` WHERE `spell_id`=30708; -- Unneeded stack rules
DELETE FROM `smart_scripts` WHERE (`entryorguid`=25171 OR `entryorguid` BETWEEN -209026 AND -209019) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-209019,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209020,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209022,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209023,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209021,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209024,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209025,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209026,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13593,13703,13704,13705,13706,13707,13708,13709,13710,13711);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(19,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(19,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(19,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(19,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(19,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(19,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(19,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(19,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(19,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker'),
(20,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(20,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(20,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(20,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(20,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(20,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(20,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(20,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(20,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(20,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker');

-- Cast Armistice inside pavillions as well
DELETE FROM `spell_area` WHERE `spell`=64373 AND `area` IN (4666,4667,4674);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(64373,4666,0,0,0,0,0,2,1), -- Sunreaver Pavillion
(64373,4667,0,0,0,0,0,2,1), -- Silver Covenant Pavillion
(64373,4674,0,0,0,0,0,2,1); -- Argent Pavillion

UPDATE `npc_spellclick_spells` SET `quest_end`=13687 WHERE `npc_entry`=33842; -- Sunreaver Hawkstrider - !Horde Tournament Eligibility Marker
UPDATE `npc_spellclick_spells` SET `quest_end`=13686 WHERE `npc_entry`=33843; -- Quel'dorei Steed - !Alliance Tournament Eligibility Marker

-- Valiant of * quests, by Kaelima
-- Alliance
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~1 WHERE `entry`=13593; -- !Human - Valiant Of Stormwind
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~4 WHERE `entry`=13703; -- !Dwarf - Valiant Of Ironforge
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~64 WHERE `entry`=13704; -- !Gnome - Valiant Of Gnomeregan
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~1024 WHERE `entry`=13705; -- !Draenei - Valiant Of The Exodar
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~8 WHERE `entry`=13706; -- !Night Elf - Valiant Of Darnassus
-- Horde
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~2 WHERE `entry`=13707; -- !Orc - Valiant of Orgrimmar
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~128 WHERE `entry`=13708; -- !Troll - Valiant Of Sen'jin
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~32 WHERE `entry`=13709; -- !Tauren - Valiant Of Thunder Bluff
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~16 WHERE `entry`=13710; -- !Undead - Valiant Of Undercity
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~512 WHERE `entry`=13711; -- !Blood Elf - Valiant Of Silvermoon
