tag @e[ type= minecraft:wither_skeleton, tag= !zdp.fire] add zdp.fire
tag @e[ type= minecraft:zombified_piglin, tag= !zdp.fire] add zdp.fire


execute as @e[ tag= zdp.fire, tag= !zdp.random.fire] at @s store result score zdp.fire zdp.monster run random value 1..100


# execute as @e[ tag= zdp.fire, tag= !zdp.random.fire] at @s if score zdp.fire zdp.monster matches 1..20 run say 10
execute as @e[ tag= zdp.fire, tag= !zdp.random.fire] at @s if score zdp.fire zdp.monster matches 1..20 run effect give @s minecraft:fire_resistance infinite 0 true
execute as @e[ tag= zdp.fire, tag= !zdp.random.fire] at @s if score zdp.fire zdp.monster matches 1..20 run item replace entity @s armor.head with minecraft:blast_furnace[enchantment_glint_override=true] 1
execute as @e[ tag= zdp.fire, tag= !zdp.random.fire] at @s if score zdp.fire zdp.monster matches 1..20 run tag @s add zdp.fire.hold
execute as @e[ tag= zdp.fire.hold ] at @s unless block ~ ~-1 ~ air run setblock ~ ~ ~ fire replace

execute as @e[ tag= zdp.fire, tag= !zdp.random.fire] at @s if score zdp.fire zdp.monster matches 1..100 run tag @s add zdp.random.fire
