tag @e[ type= minecraft:piglin, tag= !zdp.piglin ] add zdp.piglin
tag @e[ type= minecraft:piglin_brute, tag= !zdp.piglin ] add zdp.piglin

### execute as @e[ type= minecraft:piglin] at @s run data merge entity @s {IsImmuneToZombification:true}
### execute as @e[ type= minecraft:piglin_brute] at @s run data merge entity @s {IsImmuneToZombification:true}


execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s store result score zdp.piglin.axe zdp.monster run random value 1..100
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s store result score zdp.piglin.gold.chest zdp.monster run random value 1..100
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s store result score zdp.piglin.neth.chest zdp.monster run random value 1..100
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s store result score zdp.piglin.hand.chest zdp.monster run random value 1..100
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s store result score zdp.piglin.clone zdp.monster run random value 1..100



# execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.axe zdp.monster matches 1..50 run say 1
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.axe zdp.monster matches 1..50 run tag @s add zdp.piglin.axe
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.axe zdp.monster matches 1..50 run item replace entity @s weapon with minecraft:golden_axe

# execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.gold.chest zdp.monster matches 1..35 run say 2
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.gold.chest zdp.monster matches 1..35 run tag @s add zdp.piglin.gold.chest
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.gold.chest zdp.monster matches 1..35 run item replace entity @s armor.chest with minecraft:netherite_chestplate[ trim= { pattern: "minecraft:snout" , material: "minecraft:gold" } ]

# execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.neth.chest zdp.monster matches 1..55 run say 3
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.neth.chest zdp.monster matches 1..55 run tag @s add zdp.piglin.neth.chest
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.neth.chest zdp.monster matches 1..55 run item replace entity @s armor.chest with minecraft:golden_chestplate[ trim= { pattern: "minecraft:snout" , material: "minecraft:netherite" } ]

# execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.hand.chest zdp.monster matches 1..15 run say 4
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.hand.chest zdp.monster matches 1..15 run tag @s add zdp.piglin.hand.chest
execute as @e[ type= minecraft:piglin, tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.hand.chest zdp.monster matches 1..15 run item replace entity @s weapon.offhand with minecraft:iron_chestplate

# execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.clone zdp.monster matches 1..20 run say 5
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.clone zdp.monster matches 1..20 run tag @s add zdp.piglin.clone
execute as @e[ type= minecraft:piglin, tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.clone zdp.monster matches 1..20 run summon minecraft:piglin ~ ~1 ~ { Tags: [ "zdp.random" ], HandItems: [ { id: "minecraft:golden_sword" } ] }
execute as @e[ type= minecraft:piglin, tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.clone zdp.monster matches 1..10 run summon minecraft:piglin_brute ~ ~1 ~ { Tags: [ "zdp.random" ], HandItems: [ { id: "minecraft:golden_axe" } ] }




execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.axe zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.gold.chest zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.neth.chest zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.hand.chest zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.piglin, tag= !zdp.random] at @s if score zdp.piglin.clone zdp.monster matches 1..100 run tag @s add zdp.random

