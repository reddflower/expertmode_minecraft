tag @e[ type= minecraft:enderman, tag= !zdp.enderman ] add zdp.enderman
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s store result score zdp.enderman.speed zdp.monster run random value 1..100
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s store result score zdp.enderman.invis zdp.monster run random value 1..100



# execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.speed zdp.monster matches 1..40 run say 1
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.speed zdp.monster matches 1..40 run tag @s add zdp.enderman.speed
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.speed zdp.monster matches 1..40 run attribute @s minecraft:movement_speed modifier add zdp.enderman.speed 0.06 add_value
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.speed zdp.monster matches 1..40 run attribute @s minecraft:scale base set 0.65

# execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.invis zdp.monster matches 1..20 run say 2
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.invis zdp.monster matches 1..20 run tag @s add zdp.enderman.invis
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.invis zdp.monster matches 1..20 run effect give @s minecraft:invisibility infinite 0 true



execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.speed zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.enderman, tag= !zdp.random] at @s if score zdp.enderman.invis zdp.monster matches 1..100 run tag @s add zdp.random

execute as @e[ type= #boat ] at @s if data entity @s { Passengers: [ { id: "minecraft:enderman" } ] } run damage @s 2
