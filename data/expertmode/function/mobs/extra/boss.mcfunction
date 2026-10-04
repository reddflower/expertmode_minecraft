tag @e[ type= minecraft:wither, tag= !zdp.wither ] add zdp.wither
tag @e[ type= minecraft:ender_dragon, tag= !zdp.wither ] add zdp.dragon



execute as @e[ tag= zdp.wither, tag= !zdp.random] at @s run attribute @s minecraft:max_health base set 500
execute as @e[ tag= zdp.wither, tag= !zdp.random] at @s run data merge entity @s { Health: 500 }


execute as @e[ tag= zdp.dragon, tag= !zdp.random] at @s run attribute @s minecraft:max_health base set 500
execute as @e[ tag= zdp.dragon, tag= !zdp.random] at @s run data merge entity @s { Health: 500 }
execute as @e[ tag= zdp.dragon, tag= !zdp.random] at @s run function expertmode:mobs/extra/dragon_crystal with entity @s


execute as @e[ tag= zdp.wither, tag= !zdp.random] at @s run tag @s add zdp.random
execute as @e[ tag= zdp.dragon, tag= !zdp.random] at @s run tag @s add zdp.random
