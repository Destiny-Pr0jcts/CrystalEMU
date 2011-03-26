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
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10062,10063,10054,10055,10046,10047,10048,10049,10050,10051,10044,10045) AND `type`!=11;
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
