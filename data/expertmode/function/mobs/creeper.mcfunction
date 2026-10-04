tag @e[ type= minecraft:creeper, tag= !zdp.creeper ] add zdp.creeper
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s store result score zdp.creeper.speed zdp.monster run random value 1..100
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s store result score zdp.creeper.boom zdp.monster run random value 1..100
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s store result score zdp.creeper.powered zdp.monster run random value 1..100
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s store result score zdp.creeper.clone zdp.monster run random value 1..100
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s store result score zdp.creeper.clone.bat zdp.monster run random value 1..100


# execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.speed zdp.monster matches 1..40 run say 1
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.speed zdp.monster matches 1..40 run tag @s add zdp.creeper.speed
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.speed zdp.monster matches 1..40 run attribute @s minecraft:movement_speed modifier add zdp.creeper.speed 0.06 add_value
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.speed zdp.monster matches 1..40 run attribute @s minecraft:scale base set 0.8

# execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.boom zdp.monster matches 1..40 run say 2
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.boom zdp.monster matches 1..40 run tag @s add zdp.creeper.boom
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.boom zdp.monster matches 1..40 run data merge entity @s { ExplosionRadius: 10 }
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.boom zdp.monster matches 1..40 run attribute @s minecraft:scale base set 1.2

# execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.powered zdp.monster matches 1..10 run say 3
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.powered zdp.monster matches 1..10 run tag @s add zdp.creeper.powered
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.powered zdp.monster matches 1..10 run data merge entity @s { powered: true }

# execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone zdp.monster matches 1..20 run say 4
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone zdp.monster matches 1..20 run tag @s add zdp.creeper.clone
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone zdp.monster matches 1..20 run summon minecraft:creeper ~ ~1 ~ { Tags: [ "zdp.random" ] }

# execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone.bat zdp.monster matches 1..20 run say 5
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone.bat zdp.monster matches 1..20 run tag @s add zdp.creeper.clone.bat
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone.bat zdp.monster matches 1..20 run summon minecraft:bat ~ ~ ~ { Passengers: [ { id: "minecraft:creeper", Tags: [ "zdp.random" ] } ] }



execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.speed zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.boom zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.powered zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.creeper, tag= !zdp.random] at @s if score zdp.creeper.clone.bat zdp.monster matches 1..100 run tag @s add zdp.random
