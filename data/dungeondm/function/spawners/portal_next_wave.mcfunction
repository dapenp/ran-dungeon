scoreboard players add @s portal_progress 1

#execute if score @s portal_wave matches 3 run scoreboard players set @s wave_triggered 1
execute if score @s portal_wave matches ..11 unless score @s wave_triggered matches 1 run function dungeondm:spawners/portal_start_wave
execute if score @s portal_wave matches 12.. run function dungeondm:spawners/portal_end_trial
execute as @e[tag=spawner] unless entity @e[tag=portal_mob,distance=..10] run scoreboard players set @s wave_triggered 0
