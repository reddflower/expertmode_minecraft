tag @e[ type= minecraft:zombie, tag= !zdp.armor ] add zdp.armor
tag @e[ type= minecraft:zombie_villager, tag= !zdp.armor ] add zdp.armor
tag @e[ type= minecraft:drowned, tag= !zdp.armor ] add zdp.armor
tag @e[ type= minecraft:husk, tag= !zdp.armor ] add zdp.armor
tag @e[ type= minecraft:skeleton, tag= !zdp.armor ] add zdp.armor
tag @e[ type= minecraft:stray, tag= !zdp.armor ] add zdp.armor
tag @e[ type= minecraft:bogged, tag= !zdp.armor ] add zdp.armor
tag @e[ type= minecraft:wither_skeleton, tag= !zdp.armor ] add zdp.armor




execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s store result score zdp.armor.head zdp.monster run random value 1..100
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s store result score zdp.armor.chest zdp.monster run random value 1..100
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s store result score zdp.armor.legs zdp.monster run random value 1..100
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s store result score zdp.armor.boots zdp.monster run random value 1..100


execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.head zdp.monster matches 1..25 run data merge entity @s { ArmorDropChances: [ 0, 0, 0, 0] }
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.head zdp.monster matches 1..4 run item replace entity @s armor.head with minecraft:leather_helmet
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.head zdp.monster matches 5..9 run item replace entity @s armor.head with minecraft:golden_helmet
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.head zdp.monster matches 10..14 run item replace entity @s armor.head with minecraft:chainmail_helmet
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.head zdp.monster matches 15..19 run item replace entity @s armor.head with minecraft:iron_helmet
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.head zdp.monster matches 20..25 run item replace entity @s armor.head with minecraft:diamond_helmet


execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.chest zdp.monster matches 1..25 run data merge entity @s { ArmorDropChances: [ 0, 0, 0, 0] }
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.chest zdp.monster matches 1..4 run item replace entity @s armor.chest with minecraft:leather_chestplate
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.chest zdp.monster matches 5..9 run item replace entity @s armor.chest with minecraft:golden_chestplate
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.chest zdp.monster matches 10..14 run item replace entity @s armor.chest with minecraft:chainmail_chestplate
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.chest zdp.monster matches 15..19 run item replace entity @s armor.chest with minecraft:iron_chestplate
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.chest zdp.monster matches 20..25 run item replace entity @s armor.chest with minecraft:diamond_chestplate


execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.legs zdp.monster matches 1..25 run data merge entity @s { ArmorDropChances: [ 0, 0, 0, 0] }
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.legs zdp.monster matches 1..4 run item replace entity @s armor.legs with minecraft:leather_leggings
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.legs zdp.monster matches 5..9 run item replace entity @s armor.legs with minecraft:golden_leggings
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.legs zdp.monster matches 10..14 run item replace entity @s armor.legs with minecraft:chainmail_leggings
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.legs zdp.monster matches 15..19 run item replace entity @s armor.legs with minecraft:iron_leggings
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.legs zdp.monster matches 20..25 run item replace entity @s armor.legs with minecraft:diamond_leggings


execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.boots zdp.monster matches 1..25 run data merge entity @s { ArmorDropChances: [ 0, 0, 0, 0] }
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.boots zdp.monster matches 1..4 run item replace entity @s armor.feet with minecraft:leather_boots
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.boots zdp.monster matches 5..9 run item replace entity @s armor.feet with minecraft:golden_boots
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.boots zdp.monster matches 10..14 run item replace entity @s armor.feet with minecraft:chainmail_boots
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.boots zdp.monster matches 15..19 run item replace entity @s armor.feet with minecraft:iron_boots
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.boots zdp.monster matches 20..25 run item replace entity @s armor.feet with minecraft:diamond_boots


execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.head zdp.monster matches 1..100 run tag @s add zdp.random.armor
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.chest zdp.monster matches 1..100 run tag @s add zdp.random.armor
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.legs zdp.monster matches 1..100 run tag @s add zdp.random.armor
execute as @e[ tag= zdp.armor, tag= !zdp.random.armor] at @s if score zdp.armor.boots zdp.monster matches 1..100 run tag @s add zdp.random.armor
