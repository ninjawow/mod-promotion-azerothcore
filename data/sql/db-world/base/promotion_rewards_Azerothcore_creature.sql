-- agregando npc que subira a nivel 80

SET @ENTRY:=900899;
SET @NAME:="Lwol";
SET @SUBNAME:="|cff00ccffPromocion del servidor|r";
SET @GOSSIP:=63000;
SET @MODELID1:=21665;

DELETE FROM `creature_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @MODELID1, 0, 0, 0, @NAME, @SUBNAME, NULL, @GOSSIP, 83, 83, 0, 35, 1, 1, 1, 0, 0, 20, 2, 0, 0, 0, 0, 0, 1, 1, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'npc_promotion', 12340);


-- spameando lwol en el servidor
insert  into `creature`(`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) values
(15130661,900899,0,0,1,0,0,1,1,0,-11861.2,-4771.04,13.2003,0.177156,300,0,0,5342,0,0,0,0,0,'',NULL);

-- Colocando npc que sube a 80 en las zonas de inicio
insert  into `creature`(`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) values
(15130623,900899,0,0,0,0,0,1,1,0,-8948.29,-128.906,83.3956,3.25316,300,0,0,5342,0,0,0,0,0,'',NULL),
(15130624,900899,0,0,1,0,0,1,1,0,10315.3,833.908,1326.38,5.81331,300,0,0,5342,0,0,0,0,0,'',NULL),
(15130625,900899,0,0,530,0,0,1,1,0,-3959.22,-13928.2,101.125,4.02579,300,0,0,5342,0,0,0,0,0,'',NULL),
(15130626,900899,0,0,0,0,0,1,1,0,-6237.04,327.959,382.624,6.15622,300,0,0,5342,0,0,0,0,0,'',NULL),
(15130627,900899,0,0,1,0,0,1,1,0,-608.882,-4256.37,38.9563,3.45132,300,0,0,5342,0,0,0,0,0,'',NULL),
(15130628,900899,0,0,1,0,0,1,1,0,-2912.76,-253.367,52.9407,3.31579,300,0,0,5342,0,0,0,0,0,'',NULL),
(15130630,900899,0,0,0,0,0,1,1,0,1656.82,1678.34,120.719,6.24651,300,0,0,5342,0,0,0,0,0,'',NULL),
(15130631,900899,0,0,530,0,0,1,1,0,10351.9,-6357.4,33.4921,3.0724,300,0,0,5342,0,0,0,0,0,'',NULL);


-- colocando objeto luz de escenario al npc que da nivel 80
insert  into `gameobject`(`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`ScriptName`,`VerifiedBuild`) values 
(2135479,177419,0,0,0,1,1,-8948.29,-128.906,83.3956,3.25316,-0,-0,-0.998444,0.0557546,300,0,1,'',NULL),
(2135481,177419,1,0,0,1,1,10312.9,832.2,1326.38,5.92169,-0,-0,-0.179764,0.98371,300,0,1,'',NULL),
(2135482,177419,530,0,0,1,1,-3960.42,-13927.9,100.989,4.02579,-0,-0,-0.903857,0.427836,300,0,1,'',NULL),
(2135483,177419,0,0,0,1,1,-6236.83,329.609,382.709,6.15622,-0,-0,-0.063441,0.997986,300,0,1,'',NULL),
(2135484,177419,1,0,0,1,1,-609.355,-4254.89,38.9563,3.45132,-0,-0,-0.988032,0.154246,300,0,1,'',NULL),
(2135485,177419,1,0,0,1,1,-2912.7,-255.198,52.9407,3.31579,-0,-0,-0.996209,0.0869906,300,0,1,'',NULL),
(2135486,177419,0,0,0,1,1,1656.82,1678.34,120.719,6.24651,-0,-0,-0.0183368,0.999832,300,0,1,'',NULL),
(2135487,177419,530,0,0,1,1,10352.3,-6358.7,33.7787,2.95177,-0,-0,-0.995499,-0.0947709,300,0,1,'',NULL);
