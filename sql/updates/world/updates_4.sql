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
-- Delete uneed made up GO template
UPDATE `gameobject` SET `id`=202275 WHERE `id`=300149; -- TEMP Wrathscale Lair Fountain -> Wrathscale Fountain
DELETE FROM `gameobject_template` WHERE `entry`=300149;
-- Delete wrongly assigned Arena Seasons game events
DELETE FROM `game_event_arena_seasons` WHERE `eventEntry`=53 AND `season`=1; -- Call to Arms: Strand of the Ancients!
DELETE FROM `game_event_arena_seasons` WHERE `eventEntry`=54 AND `season`=2; -- Call to Arms: Isle of Conquest!
-- DB Startup errors
DELETE FROM `conditions` WHERE `SourceEntry`=43151 AND `SourceTypeOrReferenceId`=13; -- Delete uneed/wrong conditions. Assigned SAI will take care of targeting the right creature
UPDATE `pool_creature` SET `chance`=0 WHERE `pool_entry`=1079; -- 3 creatures, 33.3333..% (repeating, of course) chance; there is no need to hardcode the value
-- Delete wrong equip template and revert the one that shouldn't have been changed
UPDATE `creature_template` SET `equipment_id`=2431 WHERE `entry`=18697;
DELETE FROM `creature_equip_template` WHERE `entry` IN (1807,2431);
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(1807,50757,0,0),
(2431,31301,0,0);
-- Pathing for Chief Engineer Galpen Rolltie SAI
SET @ENTRY := 26600;
-- Remove old waypoint data and scripts
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4136.725,`position_y`=5316.553,`position_z`=28.726,`orientation`=0.3286853 WHERE `guid`=117890;
-- SAI for Chief Engineer Galpen Rolltie
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 1 - STATE_WORK_MINING'),
(@ENTRY,0,3,4,40,0,100,0,7,@ENTRY,0,0,54,9000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 7 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 7 - STATE_WORK_MINING'),
(@ENTRY,0,5,6,40,0,100,0,15,@ENTRY,0,0,54,14000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 15 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 15 - STATE_WORK_MINING');
-- Waypoints for Chief Engineer Galpen Rolltie from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4138.141,5318.302,28.81850, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,2,4140.475,5319.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,3,4141.725,5323.979,29.04604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,4,4139.975,5327.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,5,4136.975,5328.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,6,4134.975,5327.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,7,4135.308,5325.655,28.77358, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,8,4135.063,5327.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,9,4140.063,5327.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,10,4143.313,5325.319,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,11,4141.313,5317.819,29.77233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,12,4137.063,5314.819,29.02233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,13,4132.313,5316.569,29.02233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,14,4130.313,5319.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,15,4131.816,5320.484,28.77108, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,16,4130.521,5321.019,29.24854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,17,4131.021,5317.769,29.24854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,18,4133.771,5315.769,28.99854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,19,4136.725,5316.553,28.72600, 'Chief Engineer Galpen Rolltie');

-- Pathing for Willis Wobblewheel SAI
SET @ENTRY := 26599;
-- Remove old waypoint data and scripts
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4135.779,`position_y`=5282.234,`position_z`=25.11416,`orientation`=1.19467 WHERE `guid`=117866;
-- SAI for Willis Wobblewheel
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - STATE_WORK_MINING'),
(@ENTRY,0,3,4,40,0,100,0,3,@ENTRY,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 3 - pause path'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.288348, 'Willis Wobblewheel - Reach wp 3 - turn to'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - STATE_USESTANDING');
-- Waypoints for Willis Wobblewheel from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4137.04,5285.097,25.23916, 'Willis Wobblewheel'),
(@ENTRY,2,4135.779,5282.234,25.11416, 'Willis Wobblewheel'),
(@ENTRY,3,4135.004,5281.168,25.11416, 'Willis Wobblewheel'),
(@ENTRY,4,4135.779,5282.234,25.11416, 'Willis Wobblewheel');

-- Pathing for Fizzcrank Watcher Rupert Keeneye SAI
SET @ENTRY := 26634;
-- Remove old waypoint data and scripts
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4183.354,`position_y`=5318.837,`position_z`=58.1593 WHERE `guid`=97336;
-- SAI for Fizzcrank Watcher Rupert Keeneye
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,2,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 2 - pause path'),
(@ENTRY,0,2,3,40,0,100,0,6,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 6 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.8901179, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 6 - turn to');
-- Waypoints for Fizzcrank Watcher Rupert Keeneye from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4186.929,5321.105,58.13441, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,2,4185.132,5318.713,58.1639, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,3,4186.515,5316.936,58.15049, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,4,4186.929,5321.105,58.13441, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,5,4191.268,5319.607,58.12418, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,6,4189.929,5324.715,58.08976, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,7,4184.381,5325.549,58.05596, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,8,4183.354,5318.837,58.1593, 'Fizzcrank Watcher Rupert Keeneye');
-- Fizzcrank Watcher Rupert Keeneye dupe spawn
DELETE FROM `creature` WHERE `guid`=97346;
DELETE FROM `creature_addon` WHERE `guid`=97346;

-- Pathing for Fizzcrank Engineering Crew SAI
SET @ENTRY := 26645;
SET @PATH  := @ENTRY*100;
SET @PATH2 := @ENTRY*100+1;
-- Remove old waypoint data and scripts
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4153.918,`position_y`=5347.379,`position_z`=29.03030 WHERE `guid`=98042;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4145.670,`position_y`=5329.370,`position_z`=28.68240 WHERE `guid`=98043;
-- SAI for Fizzcrank Engineering Crew
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-98042,-98043);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-98042,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - On spawn - Start WP movement'),
(-98042,0,1,2,40,0,100,0,1,@PATH,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 1 - pause path'),
(-98042,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 1 - STATE_USESTANDING'),
(-98042,0,3,4,40,0,100,0,6,@PATH,0,0,54,19000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 6 - pause path'),
(-98042,0,4,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 6 - STATE_USESTANDING'),
(-98042,0,5,6,40,0,100,0,10,@PATH,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - pause path'),
(-98042,0,6,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - STATE_USESTANDING'),
(-98042,0,7,8,40,0,100,0,14,@PATH,0,0,54,24000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 14 - pause path'),
(-98042,0,8,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 14 - STATE_USESTANDING'),
(-98043,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH2,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - On spawn - Start WP movement'),
(-98043,0,1,2,40,0,100,0,5,@PATH2,0,0,54,20000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 5 - pause path'),
(-98043,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 5 - STATE_USESTANDING'),
(-98043,0,3,4,40,0,100,0,10,@PATH2,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - pause path'),
(-98043,0,4,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - STATE_WORK_MINING'),
(-98043,0,5,6,40,0,100,0,18,@PATH2,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 18 - pause path'),
(-98043,0,6,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 18 - STATE_WORK_MINING'),
(-98043,0,7,8,40,0,100,0,24,@PATH2,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 24 - pause path'),
(-98043,0,8,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 24 - STATE_USESTANDING');
-- Waypoints for Fizzcrank Engineering Crew from sniff
DELETE FROM `waypoints` WHERE `entry` IN (@PATH,@PATH2);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1,4153.728,5344.668,29.34072, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,2,4152.786,5345.597,29.62969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,3,4157.786,5346.597,29.62969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,4,4160.786,5343.097,30.37969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,5,4158.286,5341.347,29.62969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,6,4156.344,5341.525,29.41866, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,7,4158.535,5340.623,29.56693, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,8,4159.285,5338.123,29.06693, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,9,4157.035,5336.123,29.06693, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,10,4152.727,5336.721,28.71519, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,11,4152.224,5335.373,29.05804, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,12,4150.224,5335.873,29.05804, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,13,4148.974,5337.873,29.30804, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,14,4149.720,5343.525,28.90088, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,15,4148.819,5340.952,29.46559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,16,4149.319,5336.702,29.21559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,17,4154.319,5334.202,29.21559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,18,4158.569,5336.702,28.96559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,19,4160.819,5343.202,30.21559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,20,4158.069,5347.202,29.71559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,21,4153.918,5347.379,29.03030, 'Fizzcrank Engineering Crew wp 1'),
(@PATH2,1,4147.00,5327.734,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,2,4149.25,5326.734,29.07715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,3,4151.50,5329.484,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,4,4150.25,5330.734,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,5,4148.829,5329.599,28.9719, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,6,4150.054,5331.477,29.32324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,7,4152.054,5333.477,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,8,4150.804,5335.727,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,9,4147.554,5336.477,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,10,4143.779,5335.355,28.67457, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,11,4146.732,5336.823,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,12,4150.982,5335.573,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,13,4153.232,5331.323,28.95758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,14,4150.482,5326.823,28.70758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,15,4144.732,5324.573,29.45758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,16,4141.482,5326.823,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,17,4139.686,5329.791,28.74058, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,18,4141.878,5331.735,28.69350, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,19,4141.274,5330.552,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,20,4141.774,5328.302,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,21,4142.774,5326.052,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,22,4145.524,5326.052,29.43795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,23,4146.774,5328.052,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,24,4145.670,5329.370,28.68240, 'Fizzcrank Engineering Crew wp 2');
-- Fizzcrank Engineering Crew dupe spawn
DELETE FROM `creature` WHERE `guid`=98029;
DELETE FROM `creature_addon` WHERE `guid`=98029;

-- Pathing for Fizzcrank bomber Entry: 25765
SET @NPC := 111360;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4235.847,`position_y`=5353.55,`position_z`=81.03476 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4222.374,5370.328,72.03476,0,1,0,100,0),
(@PATH,2,4193.999,5364.787,66.81252,0,1,0,100,0),
(@PATH,3,4161.166,5319.937,66.81252,0,1,0,100,0),
(@PATH,4,4149.038,5289.545,66.81252,0,1,0,100,0),
(@PATH,5,4158.851,5255.303,66.81252,0,1,0,100,0),
(@PATH,6,4193.628,5230.504,79.17356,0,1,0,100,0),
(@PATH,7,4259.787,5211.473,79.20131,0,1,0,100,0),
(@PATH,8,4293.693,5221.593,80.20133,0,1,0,100,0),
(@PATH,9,4296.654,5282.716,82.20137,0,1,0,100,0),
(@PATH,10,4261.68,5314.814,89.8682,0,1,0,100,0),
(@PATH,11,4224.254,5366.333,98.86811,0,1,0,100,0),
(@PATH,12,4174.309,5345.78,98.86811,0,1,0,100,0),
(@PATH,13,4150.472,5287.501,98.86811,0,1,0,100,0),
(@PATH,14,4188.47,5251.628,102.757,0,1,0,100,0),
(@PATH,15,4241.055,5236.796,102.757,0,1,0,100,0),
(@PATH,16,4280.259,5260.132,105.6182,0,1,0,100,0),
(@PATH,17,4271.736,5301.975,105.6182,0,1,0,100,0),
(@PATH,18,4235.847,5353.55,81.03476,0,1,0,100,0);
-- Fizzcrank bomber dupe spawn
DELETE FROM `creature` WHERE `guid` IN (111361,111426);
DELETE FROM `creature_addon` WHERE `guid` IN (111361,111426);

-- Rig Hauler AC-9 SAI
SET @ENTRY := 25766;
UPDATE `creature` SET `position_x`=4170.335,`position_y`=5359.113,`position_z`=30.06447,`orientation`=2.740167 WHERE `guid`=111472;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,10000,210000,210000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - OOC 3.5 min - start script 1'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,45,0,1,0,0,0,0,11,25765,20,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 1 - dataset 0 1 nearest Fizzcrank Bomber'),
(@ENTRY,0,2,3,40,0,100,0,5,@ENTRY,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 5 - pause wp'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 5 - INTERRUPT_SPELL'),
(@ENTRY,0,4,0,40,0,100,0,6,@ENTRY,0,0,45,0,1,0,0,0,0,10,106069,15214,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 6 - dataset 0 1 Invisable Stalker'),
(@ENTRY,0,5,0,40,0,100,0,25,@ENTRY,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.740167, 'Rig Hauler AC-9 - Reach wp 25 - turn to'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,12,25765,3,360000,0,0,0,8,0,0,0,4165.76,5354.39,30.1116,2.35619, 'Rig Hauler AC-9 - script - summon 25765'),
(@ENTRY*100,9,1,0,0,0,100,0,6000,6000,0,0,11,45967,0,0,0,0,0,11,25765,10,0,0,0,0,0, 'Rig Hauler AC-9 - script - cast 45967'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - script - Start WP movement');
-- Waypoints for Rig Hauler AC-9 from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4149.316,5357.732,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,2,4136.816,5345.482,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,3,4125.566,5333.982,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,4,4115.297,5323.852,28.67458, 'Rig Hauler AC-9'),
(@ENTRY,5,4108.158,5316.849,28.75930, 'Rig Hauler AC-9'),
(@ENTRY,6,4111.660,5313.279,28.75930, 'Rig Hauler AC-9'),
(@ENTRY,7,4112.747,5314.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,8,4116.997,5314.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,9,4118.997,5316.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,10,4125.247,5323.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,11,4127.247,5325.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,12,4129.497,5326.696,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,13,4131.497,5328.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,14,4133.497,5328.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,15,4134.747,5329.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,16,4135.747,5333.696,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,17,4141.997,5337.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,18,4143.997,5341.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,19,4145.997,5344.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,20,4147.247,5346.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,21,4150.247,5348.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,22,4152.247,5350.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,23,4162.747,5356.196,29.66189, 'Rig Hauler AC-9'),
(@ENTRY,24,4166.997,5358.696,30.41189, 'Rig Hauler AC-9'),
(@ENTRY,25,4170.335,5359.113,30.06447, 'Rig Hauler AC-9');
-- Rig Hauler AC-9 dupe spawn
DELETE FROM `creature` WHERE `guid`=111501;
DELETE FROM `creature_addon` WHERE `guid`=111501;

-- Fizzcrank Bomber SAI
SET @ENTRY := 25765;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - on dataset 0 1 - dataset 0 0'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - on dataset 0 1 - Start WP movement'),
(@ENTRY,0,2,3,40,0,100,0,22,@ENTRY,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 22 - pause wp'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 22 - Set Speed run'),
(@ENTRY,0,4,5,40,0,100,0,74,@ENTRY,0,0,11,47460,3,0,0,0,0,11,26817,5,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 74 - cast 47460 on Fizzcrank fighter'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 74 - despawn');
-- Waypoints for Fizzcrank Bomber from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4164.758,5354.723,30.19215, 'Fizzcrank Bomber wp 1'),
(@ENTRY,2,4162.034,5355.368,30.09748, 'Fizzcrank Bomber wp 1'),
(@ENTRY,3,4159.190,5355.827,30.01153, 'Fizzcrank Bomber wp 1'),
(@ENTRY,4,4156.273,5356.132,29.94405, 'Fizzcrank Bomber wp 1'),
(@ENTRY,5,4154.659,5355.736,29.91132, 'Fizzcrank Bomber wp 1'),
(@ENTRY,6,4152.153,5354.786,29.86976, 'Fizzcrank Bomber wp 1'),
(@ENTRY,7,4149.633,5353.545,29.83581, 'Fizzcrank Bomber wp 1'),
(@ENTRY,8,4147.138,5352.081,29.80874, 'Fizzcrank Bomber wp 1'),
(@ENTRY,9,4144.689,5350.449,29.78749, 'Fizzcrank Bomber wp 1'),
(@ENTRY,10,4142.290,5348.694,29.77098, 'Fizzcrank Bomber wp 1'),
(@ENTRY,11,4139.963,5346.840,29.76581, 'Fizzcrank Bomber wp 1'),
(@ENTRY,12,4137.673,5344.909,29.76182, 'Fizzcrank Bomber wp 1'),
(@ENTRY,13,4135.418,5342.924,29.75874, 'Fizzcrank Bomber wp 1'),
(@ENTRY,14,4133.194,5340.901,29.75638, 'Fizzcrank Bomber wp 1'),
(@ENTRY,15,4130.993,5338.848,29.75706, 'Fizzcrank Bomber wp 1'),
(@ENTRY,16,4128.794,5336.785,29.75758, 'Fizzcrank Bomber wp 1'),
(@ENTRY,17,4126.612,5334.716,29.75798, 'Fizzcrank Bomber wp 1'),
(@ENTRY,18,4124.430,5332.629,29.75829, 'Fizzcrank Bomber wp 1'),
(@ENTRY,19,4121.542,5329.849,29.75858, 'Fizzcrank Bomber wp 1'),
(@ENTRY,20,4118.184,5326.597,29.75881, 'Fizzcrank Bomber wp 1'),
(@ENTRY,21,4116.024,5324.498,29.75892, 'Fizzcrank Bomber wp 1'),
(@ENTRY,22,4113.869,5322.398,29.75901, 'Fizzcrank Bomber wp 1'),
(@ENTRY,23,4090.109,5298.56,29.70082, 'Fizzcrank Bomber wp 1'),
(@ENTRY,24,4079.459,5287.617,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,25,4066.779,5274.603,31.53571, 'Fizzcrank Bomber wp 1'),
(@ENTRY,26,4041.215,5249.248,31.45236, 'Fizzcrank Bomber wp 1'),
(@ENTRY,27,4020.432,5218.824,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,28,4002.392,5190.421,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,29,4000.105,5146.331,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,30,3993.002,5119.754,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,31,3976.405,5093.208,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,32,3983.637,5055.651,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,33,3990.106,5011.049,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,34,3992.433,4984.051,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,35,3988.744,4946.948,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,36,3975.796,4912.274,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,37,3958.111,4895.366,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,38,3928.622,4858.76,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,39,3921.781,4825.03,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,40,3935.435,4790.436,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,41,3966.323,4756.983,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,42,3987.75,4763.042,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,43,4025.366,4755.083,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,44,4050.189,4787.045,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,45,4082.41,4825.174,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,46,4084.739,4845.887,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,47,4082.781,4879.066,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,48,4075.255,4897.705,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,49,4063.763,4936.532,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,50,4066.78,4968.409,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,51,4082.993,4997.696,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,52,4110.507,5030.572,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,53,4141.148,5060.043,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,54,4164.455,5087.176,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,55,4189.664,5124.69,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,56,4214.33,5154.247,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,57,4237.962,5194.166,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,58,4228.307,5238.578,42.11903, 'Fizzcrank Bomber wp 1'),
(@ENTRY,59,4200.375,5271.218,46.75792, 'Fizzcrank Bomber wp 1'),
(@ENTRY,60,4211.719,5318.444,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,61,4229.69,5356.218,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,62,4229.779,5396.165,53.08044, 'Fizzcrank Bomber wp 1'),
(@ENTRY,63,4231.299,5419.959,53.71933, 'Fizzcrank Bomber wp 1'),
(@ENTRY,64,4228.378,5466.135,57.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,65,4249.183,5490.759,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,66,4282.767,5500.858,48.85822, 'Fizzcrank Bomber wp 1'),
(@ENTRY,67,4300.521,5486.341,48.386, 'Fizzcrank Bomber wp 1'),
(@ENTRY,68,4291.369,5470.349,48.91378, 'Fizzcrank Bomber wp 1'),
(@ENTRY,69,4277.046,5454.25,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,70,4253.641,5434.851,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,71,4227.768,5423.928,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,72,4204.012,5411.217,37.52486, 'Fizzcrank Bomber wp 1'),
(@ENTRY,73,4194.847,5402.538,32.41374, 'Fizzcrank Bomber wp 1'),
(@ENTRY,74,4178.285,5386.063,30.94151, 'Fizzcrank Bomber wp 1');
-- Remove Fizzcrank Bomber spawn
DELETE FROM `creature` WHERE `guid`=111452;
DELETE FROM `creature_addon` WHERE `guid`=111452;

-- Invisable Stalker SAI
SET @ENTRY := 15214;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=-106069;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-106069,0,0,1,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisable Stalker - on dataset 0 1 - dataset 0 0'),
(-106069,0,1,0,61,0,100,0,0,0,0,0,11,47453,3,0,0,0,0,11,25766,200,0,0,0,0,0, 'Invisable Stalker - on dataset 0 1 - Cast 47453 on Rig Hauler AC-9');

-- Fizzcrank Fighter SAI
SET @ENTRY := 26817;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Fighter - on spawn - start wp'),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Fighter - on spawn - say text 0'),
(@ENTRY,0,2,0,40,0,100,0,15,@ENTRY,0,0,11,43671,3,0,0,0,0,11,25765,20,0,0,0,0,0, 'Fizzcrank Fighter - Reach wp 15 - cast 43671 on Fizzcrank Bomber');
-- NPC talk text for Fizzcrank Fighter
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I''ll blast those gnomish wannabes back to the scrap heap!',0,7,100,0,0,0, 'Fizzcrank Fighter'),
(@ENTRY,0,1, 'You''re sending me back there?!',0,7,100,0,0,0, 'Fizzcrank Fighter');
-- Waypoints for Fizzcrank Fighter from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4176.501,5280.566,27.17445, 'Fizzcrank Fighter'),
(@ENTRY,2,4167.001,5282.066,27.17445, 'Fizzcrank Fighter'),
(@ENTRY,3,4164.751,5282.566,26.92445, 'Fizzcrank Fighter'),
(@ENTRY,4,4162.655,5282.681,26.48916, 'Fizzcrank Fighter'),
(@ENTRY,5,4158.462,5280.628,26.26419, 'Fizzcrank Fighter'),
(@ENTRY,6,4155.712,5279.378,25.76419, 'Fizzcrank Fighter'),
(@ENTRY,7,4154.958,5278.939,24.86416, 'Fizzcrank Fighter'),
(@ENTRY,8,4147.710,5281.817,24.86416, 'Fizzcrank Fighter'),
(@ENTRY,9,4144.757,5295.502,25.61416, 'Fizzcrank Fighter'),
(@ENTRY,10,4142.652,5300.067,26.94346, 'Fizzcrank Fighter'),
(@ENTRY,11,4137.876,5308.749,27.94350, 'Fizzcrank Fighter'),
(@ENTRY,12,4135.610,5310.586,28.93834, 'Fizzcrank Fighter'),
(@ENTRY,13,4131.433,5312.564,28.75930, 'Fizzcrank Fighter'),
(@ENTRY,14,4123.820,5317.622,28.75930, 'Fizzcrank Fighter'),
(@ENTRY,15,4115.430,5321.649,28.75930, 'Fizzcrank Fighter');
-- Remove Fizzcrank Fighter spawns
DELETE FROM `creature` WHERE `guid` IN (114142,114143,114165);
DELETE FROM `creature_addon` WHERE `guid` IN (114142,114143,114165);

-- Pathing for Crafty Wobblesprocket SAI
SET @ENTRY := 25477;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4172.788,`position_y`=5254.925,`position_z`=26.12851 WHERE `guid`=108021;
-- SAI for Crafty Wobblesprocket
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 1 - STATE_USESTANDING'),
(@ENTRY,0,3,4,40,0,100,0,6,@ENTRY,0,0,54,35000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 6 - pause path'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.4712389, 'Crafty Wobblesprocket - Reach wp 6 - turn to'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 6 - STATE_WORK_MINING');
-- Waypoints for Crafty Wobblesprocket from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4179.099,5251.51,26.37851, 'Crafty Wobblesprocket'),
(@ENTRY,2,4177.94,5250.202,26.87851, 'Crafty Wobblesprocket'),
(@ENTRY,3,4181.048,5243.429,24.87851, 'Crafty Wobblesprocket'),
(@ENTRY,4,4182.067,5222.448,25.00868, 'Crafty Wobblesprocket'),
(@ENTRY,5,4193.037,5217.233,25.13368, 'Crafty Wobblesprocket'),
(@ENTRY,6,4193.037,5217.233,25.13368, 'Crafty Wobblesprocket'),
(@ENTRY,7,4190.718,5217.938,25.25868, 'Crafty Wobblesprocket'),
(@ENTRY,8,4176.049,5229.444,24.50868, 'Crafty Wobblesprocket'),
(@ENTRY,9,4166.732,5248.798,24.75351, 'Crafty Wobblesprocket'),
(@ENTRY,10,4172.788,5254.925,26.12851, 'Crafty Wobblesprocket');
-- Remove Crafty Wobblesprocket dupe spawn
DELETE FROM `creature` WHERE `guid`=108025;
DELETE FROM `creature_addon` WHERE `guid`=108025;
-- Fix addon for Crafty Wobblesprocket
DELETE FROM `creature_addon` WHERE `guid`=108021;
DELETE FROM `creature_template_addon` WHERE `entry`=25477;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`) VALUES (25477,257);

-- SAI for ELM General Purpose Bunny
SET @ENTRY := 23837;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-98575,-98576);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-98575,0,0,0,1,0,100,0,10000,20000,90000,105000,11,45931,3,0,0,0,0,10,98576,23837,0,0,0,0,0, 'ELM General Purpose Bunny - OOC timed - cast 45931 on target'),
(-98576,0,0,0,8,0,100,0,45931,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'ELM General Purpose Bunny - On spellhit - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,4000,4000,0,0,12,25783,3,60000,0,0,0,8,0,0,0,4181.491,5258.655,27.19127,3.857178, 'ELM General Purpose Bunny - script - summon 25783'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,5,5,0,0,0,0,0,11,25747,10,0,0,0,0,0, 'ELM General Purpose Bunny - script - send emote to 25747'),
(@ENTRY*100,9,2,0,0,0,100,0,4000,4000,0,0,45,0,1,0,0,0,0,11,25783,10,0,0,0,0,0, 'ELM General Purpose Bunny - script - set data 0 1 on 25783');

-- SAI for Fizzcrank Airstrip Survivor
SET @ENTRY := 25783;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,34427,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on spawn - cast 34427 on self'),
(@ENTRY,0,1,0,1,0,100,1,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on spawn - say text 0'),
(@ENTRY,0,2,3,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on dataset 0 1 - dataset 0 0'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on dataset 0 1 - Start WP movement'),
(@ENTRY,0,4,0,40,0,100,0,6,@ENTRY,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - Reach wp 6 - despawn');
-- Waypoints for Fizzcrank Airstrip Survivor from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4168.529,5251.933,24.87851, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,2,4156.656,5256.007,24.62325, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,3,4151.527,5268.997,25.36416, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,4,4159.549,5281.078,26.23916, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,5,4173.898,5280.844,26.69306, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,6,4179.473,5282.701,26.69306, 'Fizzcrank Airstrip Survivor');
-- Remove Fizzcrank Airstrip Survivor spawn
DELETE FROM `creature` WHERE `guid` IN (88109);
DELETE FROM `creature_addon` WHERE `guid` IN (88109);
-- NPC talk text for Fizzcrank Survivor
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I''m flesh and blood again. That''s all that matters!',0,7,100,5,0,0, 'Fizzcrank Survivor');

-- Model and creature addon info (Nay)
UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23967; -- Chief Engineer Galpen Rolltie
UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23220; -- Crafty Wobblesprocket
-- Addon data for creature 26600 (Chief Engineer Galpen Rolltie)
DELETE FROM `creature_template_addon` WHERE `entry` IN (26600,26599,26634,26645,25766,15214,26817,23837,25783);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26600,0,0,257,0, NULL), -- Chief Engineer Galpen Rolltie
(26599,0,0,257,0, NULL), -- Willis Wobblewheel
(26634,0,0,257,0, NULL), -- Fizzcrank Watcher Rupert Keeneye
(26645,0,0,257,0, NULL), -- Fizzcrank Engineering Crew
(25766,0,0,1,0, NULL), -- Rig Hauler AC-9
(15214,0,0,1,0, NULL), -- Invisible Stalker
(26817,0,0,257,0, NULL), -- Fizzcrank Fighter
(23837,0,0,1,0, NULL), -- ELM General Purpose Bunny
(25783,0,0,257,0, NULL); -- Fizzcrank Airstrip Survivor
DELETE FROM `conditions` WHERE `SourceEntry` IN (63317,62505,63524,63657,63658,63659);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(13,0,63317,0,18,1,33453,0,0,'','Flame Breath - Dark Rune Watcher'),
(13,0,63317,0,18,1,33846,0,0,'','Flame Breath - Dark Rune Sentinel'),
(13,0,63317,0,18,1,33388,0,0,'','Flame Breath - Dark Rune Guardian'),
(13,0,62505,0,18,1,33186,0,0,'','Harpoon Trigger - Razorscale'),
(13,0,63524,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63657,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63658,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63659,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale');
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale_controller' WHERE `entry` = 33233;
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale' WHERE `entry` = 33186;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_watcher' WHERE `entry` = 33453;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_sentinel' WHERE `entry` = 33846;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_guardian' WHERE `entry` = 33388;
UPDATE `creature_template` SET `ScriptName` = 'npc_devouring_flame' WHERE `entry` = 34188;
UPDATE `creature_template` SET `ScriptName` = 'npc_expedition_commander' WHERE `entry` = 33210;
UPDATE `creature_template` SET `ScriptName` = 'npc_mole_machine_trigger' WHERE `entry` IN (33282, 33245);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (33210,33287,33259,33233);
SET @GUID :=48304;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+6;
INSERT INTO `creature` (`guid`, `id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`)
VALUES
(@GUID,33233,603,1,1,0,0,560.1334,-143.035431,393.822632,0,120,0,0,1,0,0,0),
(@GUID+1,33233,603,1,1,0,0,572.410645,-138.656357,393.904419,0,120,0,0,1,0,0,0),
(@GUID+2,33233,603,1,1,0,0,585.9284,-146.587509,391.6004,0,120,0,0,1,0,0,0),
(@GUID+3,33233,603,1,1,0,0,589.7287,-137.1148,393.9011,0,120,0,0,1,0,0,0),
(@GUID+4,33233,603,1,1,0,0,605.9284,-140.108887,393.7972,0,120,0,0,1,0,0,0),
(@GUID+5,33233,603,1,1,0,0,630.2436,-276.259064,392.3122,0,120,0,0,1,0,0,0),
(@GUID+6,33233,603,1,1,0,0,638.241638,-272.1735,392.135132,0,120,0,0,1,0,0,0);
UPDATE `gameobject_template` SET `ScriptName`='go_razorscale_harpoon' WHERE `entry` IN (194519,194541,194542,194543);
DELETE FROM `spell_script_names` WHERE `spell_id`=63308;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(63308,'spell_razorscale_devouring_flame');
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
