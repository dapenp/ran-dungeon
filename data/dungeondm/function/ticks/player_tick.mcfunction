execute if entity @s[tag=!indungeon] if dimension dungeondm:dungeon_dimension run function dungeondm:spawn
execute if entity @s[tag=indungeon] if dimension minecraft:overworld run tag @s remove indungeon
#execute if dimension minecraft:overworld run gamemode survival @s