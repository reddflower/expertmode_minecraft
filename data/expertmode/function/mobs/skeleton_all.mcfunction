tag @e[ type= minecraft:skeleton, tag= !zdp.skeleton ] add zdp.skeleton
tag @e[ type= minecraft:stray, tag= !zdp.skeleton ] add zdp.skeleton
tag @e[ type= minecraft:bogged, tag= !zdp.skeleton ] add zdp.skeleton

execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s store result score zdp.skeleton.arrow zdp.monster run random value 1..100
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s store result score zdp.skeleton.helmet zdp.monster run random value 1..100
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s store result score zdp.skeleton.infested zdp.monster run random value 1..100
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s store result score zdp.skeleton.clone.bat zdp.monster run random value 1..100



# execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.arrow zdp.monster matches 1..30 run say 1
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.arrow zdp.monster matches 1..30 run tag @s add zdp.skeleton.arrow
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.arrow zdp.monster matches 1..30 run item replace entity @s weapon.offhand with minecraft:tipped_arrow[ potion_contents= { potion: "minecraft:harming" } ]

# execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.helmet zdp.monster matches 1..25 run say 2
# execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.helmet zdp.monster matches 1..25 run tag @s add zdp.skeleton.helmet
# execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.helmet zdp.monster matches 1..25 run item replace entity @s armor.head with minecraft:leather_helmet

# execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.infested zdp.monster matches 1..20 run say 3
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.infested zdp.monster matches 1..20 run tag @s add zdp.skeleton.infested
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.infested zdp.monster matches 1..20 run effect give @e[ tag= zdp.skeleton.infested ] minecraft:infested infinite 0 false

# execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.clone.bat zdp.monster matches 1..20 run say 4
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.clone.bat zdp.monster matches 1..20 run tag @s add zdp.skeleton.clone.bat
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.clone.bat zdp.monster matches 1..20 run summon minecraft:bat ~ ~ ~ { Passengers: [ { id: "minecraft:skeleton", HandItems: [{id: "minecraft:bow" }], Tags: [ "zdp.random" ] } ] }




execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.arrow zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.helmet zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.infested zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.skeleton, tag= !zdp.random] at @s if score zdp.skeleton.clone.bat zdp.monster matches 1..100 run tag @s add zdp.random
