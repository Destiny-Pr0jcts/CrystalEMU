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
INSERT INTO `command` (`name`, `security`) VALUES ('tele player instanz', 0);