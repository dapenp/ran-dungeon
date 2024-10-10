#execute unless entity @e[type=marker,tag=nospawn4way,distance=..8] run function dungeondm:dungeongen/4way
execute in dungeondm:dungeon_dimension run forceload add 5 2
place template dungeondm:testspawn 0 0 0
tag @s add indungeon




