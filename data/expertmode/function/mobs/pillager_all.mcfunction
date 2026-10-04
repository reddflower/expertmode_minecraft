tag @e[ type= minecraft:pillager, tag= !zdp.pillager ] add zdp.pillager
tag @e[ type= minecraft:vindicator, tag= !zdp.pillager ] add zdp.pillager
tag @e[ type= minecraft:evoker, tag= !zdp.pillager ] add zdp.pillager

execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s store result score zdp.pillager.arrow zdp.monster run random value 1..100
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s store result score zdp.pillager.power zdp.monster run random value 1..100
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s store result score zdp.pillager.speed zdp.monster run random value 1..100
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s store result score zdp.pillager.totem zdp.monster run random value 1..100
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s store result score zdp.illusioner.clone zdp.monster run random value 1..100

execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s store result score zdp.pillager.ravager zdp.monster run random value 1..100



# execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.arrow zdp.monster matches 1..30 run say 1
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.arrow zdp.monster matches 1..30 run tag @s add zdp.pillager.arrow
execute as @e[ type= minecraft:pillager, tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.arrow zdp.monster matches 1..30 run item replace entity @s weapon.offhand with minecraft:tipped_arrow[ potion_contents= { potion: "minecraft:harming" } ] 64
execute as @e[ type= minecraft:vindicator, tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.arrow zdp.monster matches 1..30 run effect give @s minecraft:strength infinite 3 false
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.arrow zdp.monster matches 1..30 run data merge entity @s { HandDropChances: [0 ] }

# execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.power zdp.monster matches 1..25 run say 2
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.power zdp.monster matches 1..25 run tag @s add zdp.pillager.power
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.power zdp.monster matches 1..25 run effect give @s minecraft:resistance infinite 2 false

# execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.speed zdp.monster matches 1..20 run say 3
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.speed zdp.monster matches 1..20 run tag @s add zdp.pillager.speed
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.speed zdp.monster matches 1..20 run effect give @s minecraft:speed infinite 0 false

# execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.totem zdp.monster matches 1..30 run say 4
execute as @e[ type= !minecraft:evoker, tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.totem zdp.monster matches 1..30 run item replace entity @s weapon.offhand with minecraft:totem_of_undying 1
execute as @e[ type= minecraft:evoker, tag= !zdp.random] at @s if score zdp.pillager.totem zdp.monster matches 1..100 run item replace entity @s weapon.offhand with minecraft:totem_of_undying 1

# execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.ravager zdp.monster matches 1..10 run say 5
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.ravager zdp.monster matches 1..10 run tag @s add zdp.pillager.ravager
execute as @e[ type= minecraft:pillager, tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.ravager zdp.monster matches 1..10 run summon minecraft:ravager ~ ~ ~ { Passengers: [ { id: "minecraft:pillager", HandItems: [ { id: "minecraft:crossbow" } ] } ] }
execute as @e[ type= minecraft:vindicator, tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.ravager zdp.monster matches 1..10 run summon minecraft:ravager ~ ~ ~ { Passengers: [ { id: "minecraft:vindicator", HandItems: [ { id: "minecraft:iron_axe" } ] } ] }
execute as @e[ type= minecraft:evoker, tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.ravager zdp.monster matches 1..10 run summon minecraft:ravager ~ ~ ~ { Passengers: [ { id: "minecraft:evoker" } ] }

# execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.illusioner.clone zdp.monster matches 1..20 run say 4
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.illusioner.clone zdp.monster matches 1..20 run tag @s add zdp.illusioner.clone
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.illusioner.clone zdp.monster matches 1..20 run summon minecraft:illusioner ~ ~1 ~



execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.arrow zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.power zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.speed zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.pillager.totem zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.pillager, tag= !zdp.random] at @s if score zdp.illusioner.clone zdp.monster matches 1..100 run tag @s add zdp.random

