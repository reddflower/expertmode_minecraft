tag @e[ type= minecraft:zombie, tag= !zdp.zombie ] add zdp.zombie
tag @e[ type= minecraft:husk, tag= !zdp.zombie ] add zdp.zombie
tag @e[ type= minecraft:drowned, tag= !zdp.zombie ] add zdp.zombie

execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s store result score zdp.zombie.axe zdp.monster run random value 1..100
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s store result score zdp.zombie.helmet zdp.monster run random value 1..100
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s store result score zdp.zombie.infested zdp.monster run random value 1..100
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s store result score zdp.zombie.clone zdp.monster run random value 1..100
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s store result score zdp.zombie.clone.bat zdp.monster run random value 1..100



# execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 1..50 run say 1
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 1..50 run tag @s add zdp.zombie.axe
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 1..30 run tag @s add zdp.zombie.axe.stone
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 31..50 run tag @s add zdp.zombie.axe.iron
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 1..30 run item replace entity @s weapon with minecraft:stone_axe
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 31..50 run item replace entity @s weapon with minecraft:iron_axe

# execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.helmet zdp.monster matches 1..40 run say 2
# execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.helmet zdp.monster matches 1..40 run tag @s add zdp.zombie.helmet
# execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.helmet zdp.monster matches 1..40 run item replace entity @s armor.head with minecraft:leather_helmet

execute as @e[ tag= zdp.zombie, tag= zdp.zombie.axe, tag= !zdp.random] at @s if score zdp.zombie.breach zdp.monster matches 1..35 run say 3
execute as @e[ tag= zdp.zombie, tag= zdp.zombie.axe.stone, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 1..20 run item replace entity @s weapon with minecraft:stone_axe[ enchantments= { levels: { breach: 1 } } ]
execute as @e[ tag= zdp.zombie, tag= zdp.zombie.axe.stone, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 21..30 run item replace entity @s weapon with minecraft:stone_axe[ enchantments= { levels: { breach: 2 } } ]
execute as @e[ tag= zdp.zombie, tag= zdp.zombie.axe.stone, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 31..35 run item replace entity @s weapon with minecraft:stone_axe[ enchantments= { levels: { breach: 3 } } ]
execute as @e[ tag= zdp.zombie, tag= zdp.zombie.axe.iron, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 1..20 run item replace entity @s weapon with minecraft:iron_axe[ enchantments= { levels: { breach: 1 } } ]
execute as @e[ tag= zdp.zombie, tag= zdp.zombie.axe.iron, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 21..30 run item replace entity @s weapon with minecraft:iron_axe[ enchantments= { levels: { breach: 2 } } ]
execute as @e[ tag= zdp.zombie, tag= zdp.zombie.axe.iron, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 31..35 run item replace entity @s weapon with minecraft:iron_axe[ enchantments= { levels: { breach: 3 } } ]

# execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.clone zdp.monster matches 1..20 run say 4
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.clone zdp.monster matches 1..20 run tag @s add zdp.zombie.clone
execute as @e[ tag= zdp.zombie, tag= !zdp.random, type= minecraft:zombie] at @s if score zdp.zombie.clone zdp.monster matches 1..20 run summon minecraft:zombie ~ ~1 ~
execute as @e[ tag= zdp.zombie, tag= !zdp.random, type= minecraft:husk] at @s if score zdp.zombie.clone zdp.monster matches 1..20 run summon minecraft:husk ~ ~1 ~
execute as @e[ tag= zdp.zombie, tag= !zdp.random, type= minecraft:drowned] at @s if score zdp.zombie.clone zdp.monster matches 1..20 run summon minecraft:drowned ~ ~1 ~

# execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.clone.bat zdp.monster matches 1..20 run say 5
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.clone.bat zdp.monster matches 1..20 run tag @s add zdp.zombie.skeleton
execute as @e[ tag= zdp.zombie, tag= !zdp.random, type= minecraft:zombie] at @s if score zdp.zombie.clone.bat zdp.monster matches 1..20 run summon minecraft:zombie ~ ~1 ~ { IsBaby: true , Passengers: [ { id: "minecraft:skeleton", HandItems: [ { id: "minecraft:bow" } ] , Tags: [ "zdp.random" ] } ] }
execute as @e[ tag= zdp.zombie, tag= !zdp.random, type= minecraft:husk] at @s if score zdp.zombie.clone.bat zdp.monster matches 1..20 run summon minecraft:husk ~ ~1 ~ { IsBaby: true , Passengers: [ { id: "minecraft:skeleton", HandItems: [ { id: "minecraft:bow" } ], Tags: [ "zdp.random" ] } ] }
execute as @e[ tag= zdp.zombie, tag= !zdp.random, type= minecraft:drowned] at @s if score zdp.zombie.clone.bat zdp.monster matches 1..20 run summon minecraft:drowned ~ ~1 ~ { IsBaby: true , Passengers: [ { id: "minecraft:skeleton", HandItems: [ { id: "minecraft:bow" } ], Tags: [ "zdp.random" ] } ] }



execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.axe zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.helmet zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.infested zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.clone zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.zombie, tag= !zdp.random] at @s if score zdp.zombie.clone.bat zdp.monster matches 1..100 run tag @s add zdp.random
