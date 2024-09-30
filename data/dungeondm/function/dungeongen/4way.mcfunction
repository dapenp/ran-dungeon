#execute as @e[tag=spawn4way,type=armor_stand] at @s run summon shulker ~ ~2 ~ {HasVisualFire:0b,NoGravity:1b,Silent:1b,NoAI:1b,AttachFace:0b,Color:4b}
#execute as @e[tag=spawn4way,type=armor_stand] positioned as @s run summon shulker ~ ~2 ~ {HasVisualFire:0b,NoGravity:1b,Silent:1b,NoAI:1b,AttachFace:0b,Color:4b}

summon marker 0 2 0 {Tags:["nospawn4way"]}
summon shulker 0 4 0 {NoGravity:true,Silent:true,NoAI:true,AttachFace:0b,Color:4b}
say spawn
