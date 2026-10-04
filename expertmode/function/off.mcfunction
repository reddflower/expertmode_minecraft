scoreboard players set toggle zdp.hardmode -1
schedule clear expertmode:timer

execute as @e[ tag= hardmode.modifers ] at @s run attribute @s minecraft:armor modifier remove minecraft:hardmode.armor
execute as @e[ tag= hardmode.modifers ] at @s run attribute @s minecraft:max_health modifier remove minecraft:hardmode.health
tag @e[ tag=hardmode.modifers] remove hardmode.modifers