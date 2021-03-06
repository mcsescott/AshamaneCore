-- Orgrimmar Fixup
-- Og Corrections
DELETE FROM `creature` WHERE `guid` IN (287235,287157,286793,310909,287258,287081,311029);
SET @NPC := 310837;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1599.04,`position_y`=-4372.515,`position_z`=21.2458 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1599.04,-4372.515,21.2458,0,0,0,0,100,0),
(@PATH,2,1607.54,-4387.015,20.7458,0,0,0,0,100,0),
(@PATH,3,1613.54,-4392.515,20.9958,0,0,0,0,100,0),
(@PATH,4,1621.79,-4392.765,20.7458,0,0,0,0,100,0),
(@PATH,5,1626.83,-4393.27,20.3058,1.466077,5000,0,0,100,0),
(@PATH,6,1631.165,-4393.745,20.9266,0,0,0,0,100,0),
(@PATH,7,1639.415,-4396.245,20.6766,0,0,0,0,100,0),
(@PATH,8,1647.415,-4398.245,20.6766,0,0,0,0,100,0),
(@PATH,9,1655.415,-4398.495,20.9266,0,0,0,0,100,0),
(@PATH,10,1657.415,-4405.245,19.6766,0,0,0,0,100,0),
(@PATH,11,1657.415,-4420.745,18.4266,0,0,0,0,100,0),
(@PATH,12,1665.165,-4426.995,18.4266,0,0,0,0,100,0),
(@PATH,13,1668.915,-4429.745,21.6766,0,0,0,0,100,0),
(@PATH,14,1671.665,-4431.745,21.6766,0,0,0,0,100,0),
(@PATH,15,1672.915,-4436.745,21.6766,0,0,0,0,100,0),
(@PATH,16,1675.415,-4438.495,21.6766,0,0,0,0,100,0),
(@PATH,17,1676.92,-4436.25,21.52993,0,0,0,0,100,0),
(@PATH,18,1677.585,-4438.005,21.60787,0,0,0,0,100,0),
(@PATH,19,1674.085,-4438.005,21.60787,0,0,0,0,100,0),
(@PATH,20,1671.585,-4432.005,21.60787,0,0,0,0,100,0),
(@PATH,21,1669.585,-4429.505,21.60787,0,0,0,0,100,0),
(@PATH,22,1665.585,-4427.255,18.35787,0,0,0,0,100,0),
(@PATH,23,1658.335,-4420.755,18.35787,0,0,0,0,100,0),
(@PATH,24,1641.835,-4411.005,16.35787,0,0,0,0,100,0),
(@PATH,25,1631.335,-4406.755,15.85787,0,0,0,0,100,0),
(@PATH,26,1617.835,-4405.505,15.60787,0,0,0,0,100,0),
(@PATH,27,1610.085,-4409.255,15.35787,0,0,0,0,100,0),
(@PATH,28,1586.335,-4406.005,15.85787,0,0,0,0,100,0),
(@PATH,29,1579.085,-4403.755,15.85787,0,0,0,0,100,0),
(@PATH,30,1577.835,-4400.505,16.10787,0,0,0,0,100,0),
(@PATH,31,1579.335,-4392.005,16.60787,0,0,0,0,100,0),
(@PATH,32,1589.335,-4385.755,18.60787,0,0,0,0,100,0),
(@PATH,33,1594.835,-4382.755,19.85787,0,0,0,0,100,0);
