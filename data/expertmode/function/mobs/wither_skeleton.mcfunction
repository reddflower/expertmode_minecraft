tag @e[ type= minecraft:wither_skeleton, tag= !zdp.wither_skeleton ] add zdp.wither_skeleton
execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s store result score zdp.wither_skeleton.chest zdp.monster run random value 1..100
execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s store result score zdp.wither_skeleton.blaze zdp.monster run random value 1..100



# execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.chest zdp.monster matches 1..30 run say 1
execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.chest zdp.monster matches 1..30 run tag @s add zdp.wither_skeleton.chest
execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.chest zdp.monster matches 1..30 run item replace entity @s armor.chest with minecraft:chainmail_chestplate

# execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.blaze zdp.monster matches 1..25 run say 2
execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.blaze zdp.monster matches 1..25 run tag @s add zdp.wither_skeleton.blaze
execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.blaze zdp.monster matches 1..25 run summon minecraft:wither_skeleton ~ ~ ~ { Passengers: [ { id: "minecraft:blaze"} ], HandItems: [{id: "minecraft:stone_sword" }] }



execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.chest zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.wither_skeleton, tag= !zdp.random] at @s if score zdp.wither_skeleton.blaze zdp.monster matches 1..100 run tag @s add zdp.random
