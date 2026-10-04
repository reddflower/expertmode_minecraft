tag @e[ type= minecraft:shulker, tag= !zdp.shulker ] add zdp.shulker
execute as @e[ tag= zdp.shulker, tag= !zdp.random] at @s store result score zdp.shulker.bat zdp.monster run random value 1..100



# execute as @e[ tag= zdp.shulker, tag= !zdp.random] at @s if score zdp.shulker.bat zdp.monster matches 1..55 run say 2
execute as @e[ tag= zdp.shulker, tag= !zdp.random] at @s if score zdp.shulker.bat zdp.monster matches 1..55 run tag @s add zdp.shulker.bat
execute as @e[ tag= zdp.shulker, tag= !zdp.random] at @s if score zdp.shulker.bat zdp.monster matches 1..55 run summon minecraft:bat ~ ~ ~ { Passengers: [ { id: "minecraft:shulker", Tags: [ "zdp.random" ] } ] }



execute as @e[ tag= zdp.shulker, tag= !zdp.random] at @s if score zdp.shulker.bat zdp.monster matches 1..100 run tag @s add zdp.random
