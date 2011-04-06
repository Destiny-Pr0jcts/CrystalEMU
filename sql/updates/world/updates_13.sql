DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_valanar_kinetic_bomb_absorb';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72054, 'spell_valanar_kinetic_bomb_absorb');
DELETE FROM `command` WHERE name = 'learn all';
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=70530;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-70447,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72836,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72837,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72838,70530,0, 'Putricide: Volatile Ooze Adhesive Protection');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_ooze_channel';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70447, 'spell_putricide_ooze_channel'),
(72836, 'spell_putricide_ooze_channel'),
(72837, 'spell_putricide_ooze_channel'),
(72838, 'spell_putricide_ooze_channel'),
(70672, 'spell_putricide_ooze_channel'),
(72455, 'spell_putricide_ooze_channel'),
(72832, 'spell_putricide_ooze_channel'),
(72833, 'spell_putricide_ooze_channel');
UPDATE `command` SET `name`='rezz' WHERE(`name`='revive');
UPDATE `command` SET `name`='cheat' WHERE(`name`='modify');
UPDATE `command` SET `name`='cheat life' WHERE(`name`='modify hp');
UPDATE `command` SET `name`='cheat mana' WHERE(`name`='modify mana');
UPDATE `command` SET `name`='cheat rage' WHERE(`name`='modify rage');
UPDATE `command` SET `name`='cheat runicpower' WHERE(`name`='modify runicpower');
UPDATE `command` SET `name`='cheat energy' WHERE(`name`='modify energy');
UPDATE `command` SET `name`='cheat gold' WHERE(`name`='modify money');
UPDATE `command` SET `name`='cheat speed' WHERE(`name`='modify speed');
UPDATE `command` SET `name`='cheat swim' WHERE(`name`='modify swim');
UPDATE `command` SET `name`='cheat scale' WHERE(`name`='modify scale');
UPDATE `command` SET `name`='cheat bit' WHERE(`name`='modify bit');
UPDATE `command` SET `name`='cheat bwalk' WHERE(`name`='modify bwalk');
UPDATE `command` SET `name`='cheat fly' WHERE(`name`='modify fly');
UPDATE `command` SET `name`='cheat aspeed' WHERE(`name`='modify aspeed');
UPDATE `command` SET `name`='cheat faction' WHERE(`name`='modify faction');
UPDATE `command` SET `name`='cheat spell' WHERE(`name`='modify spell');
UPDATE `command` SET `name`='cheat talents' WHERE(`name`='modify tp');
UPDATE `command` SET `name`='cheat mount' WHERE(`name`='modify mount');
UPDATE `command` SET `name`='cheat honor' WHERE(`name`='modify honor');
UPDATE `command` SET `name`='cheat reputation' WHERE(`name`='modify rep');
UPDATE `command` SET `name`='cheat arena' WHERE(`name`='modify arena');
UPDATE `command` SET `name`='cheat drunken' WHERE(`name`='modify drunk');
UPDATE `command` SET `name`='cheat standstate' WHERE(`name`='modify standstate');
UPDATE `command` SET `name`='cheat morph' WHERE(`name`='modify morph');
UPDATE `command` SET `name`='cheat phase' WHERE(`name`='modify phase');
UPDATE `command` SET `name`='cheat gender' WHERE(`name`='modify gender');