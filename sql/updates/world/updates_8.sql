UPDATE `creature` SET `spawnMask`=`spawnMask`|2|1 WHERE `guid` BETWEEN 48304 AND 48304+6 AND `id`=33233;
-- Change Nights game event start time to 9 PM
UPDATE `game_event` SET `start_time`= '2008-01-02 21:00:00' WHERE `eventEntry`=25;
UPDATE `version` SET `db_version`='DDB 2' LIMIT 1;
-- Change CMDs
UPDATE command SET name='kill' WHERE name='die';