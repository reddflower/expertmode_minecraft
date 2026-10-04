scoreboard players set toggle zdp.hardmode 1
scoreboard players set timer zdp.hardmode 10
function expertmode:mob_upload

tellraw @a {"text":"<\u2620> good luck"}
playsound minecraft:entity.wither.spawn

tag @e[ type= player ] add hardmode.modifers
execute as @e[ tag= hardmode.modifers ] at @s run attribute @s minecraft:max_health modifier add hardmode.health -0.20 add_multiplied_total
execute as @e[ tag= hardmode.modifers ] at @s run attribute @s minecraft:armor modifier add hardmode.armor -0.40 add_multiplied_total