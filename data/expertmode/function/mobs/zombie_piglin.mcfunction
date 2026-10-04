tag @e[ type= minecraft:zombified_piglin, tag= !zdp.zombie_piglin ] add zdp.zombie_piglin

execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s store result score zdp.zombie_piglin.axe zdp.monster run random value 1..100
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s store result score zdp.zombie_piglin.helmet zdp.monster run random value 1..100
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s store result score zdp.zombie_piglin.gold zdp.monster run random value 1..100



# execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.axe zdp.monster matches 1..30 run say 1
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.axe zdp.monster matches 1..30 run tag @s add zdp.zombie_piglin.axe
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.axe zdp.monster matches 1..30 run item replace entity @s weapon with minecraft:golden_axe

# execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.helmet zdp.monster matches 1..25 run say 2
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.helmet zdp.monster matches 1..25 run tag @s add zdp.zombie_piglin.helmet
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.helmet zdp.monster matches 1..25 run item replace entity @s armor.head with minecraft:golden_helmet

# execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.gold zdp.monster matches 1..20 run say 3
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.gold zdp.monster matches 1..20 run tag @s add zdp.zombie_piglin.gold
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.gold zdp.monster matches 1..20 run item replace entity @s weapon.offhand with minecraft:gold_ingot



execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.axe zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.helmet zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.zombie_piglin, tag= !zdp.random] at @s if score zdp.zombie_piglin.gold zdp.monster matches 1..100 run tag @s add zdp.random
