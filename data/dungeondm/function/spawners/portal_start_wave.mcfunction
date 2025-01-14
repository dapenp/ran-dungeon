execute if score @s portal_active matches 1 at @s run scoreboard players add @s portal_wave 1
execute if score @s wave_triggered matches 0 at @s run scoreboard players set @s wave_triggered 1

execute if score @s portal_wave matches 1 at @s run summon zombie ~ ~ ~ {Tags:["portal_mob"]}
execute if score @s portal_wave matches 2 at @s run summon skeleton ~ ~ ~ {Tags:["portal_mob"]}
execute if score @s portal_wave matches 3 at @s run summon creeper ~ ~ ~ {Tags:["portal_mob"]}

execute if score @s portal_wave matches 4 at @s run summon zombie ~ ~ ~ {Tags:["portal_mob"]}
execute if score @s portal_wave matches 5 at @s run summon skeleton ~ ~ ~ {Tags:["portal_mob"]}
execute if score @s portal_wave matches 6 at @s run summon creeper ~ ~ ~ {Tags:["portal_mob"]}

