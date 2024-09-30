#execute unless entity @e[type=marker,tag=nospawn4way] run function dungeondm:dungeongen/4way
execute in dungeondm:dungeon_dimension if entity @e[type=marker,tag=nospawn4way,x=0,y=2,z=0,distance=..1] run function dungeondm:dungeongen/4way
place template dungeondm:testspawn -3 0 -3
tag @s add indungeon




