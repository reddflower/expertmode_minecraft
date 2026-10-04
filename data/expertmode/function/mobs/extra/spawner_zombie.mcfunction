tag @e[ type= minecraft:zombie, tag= !zdp.zombie_spawner ] add zdp.zombie_spawner


execute as @e[ tag= zdp.zombie_spawner, tag= !zdp.random.zombie_spawner] at @s store result score zdp.zombie_spawner zdp.monster run random value 1..100


# execute as @e[ tag= zdp.zombie_spawner, tag= !zdp.random.zombie_spawner] at @s if score zdp.zombie_spawner zdp.monster matches 1..20 run say 10
execute as @e[ tag= zdp.zombie_spawner, tag= !zdp.random.zombie_spawner] at @s if score zdp.zombie_spawner zdp.monster matches 1..20 run tag @s add zdp.zombie_spawner.on

execute as @e[ tag= zdp.zombie_spawner.on, tag= !zdp.random.zombie_spawner] at @s run item replace entity @s armor.head with spawner[enchantment_glint_override=true] 1
execute as @e[ tag= zdp.zombie_spawner.on] at @s as @p[ distance= 0..10 ] run particle flame ~ ~2.5 ~ 0.3 0.3 0.3 0 1

execute as @e[ tag= zdp.zombie_spawner.on] at @s at @p[ distance= 0..10 ] run scoreboard players add @s zdp.spawner 1
execute as @e[ tag= zdp.zombie_spawner.on] at @s if score @s zdp.spawner matches 30.. run summon zombie ~ ~1 ~ { Tags: [ "zdp.random.zombie_spawner", "zdp.random"] }
execute as @e[ tag= zdp.zombie_spawner.on] at @s if score @s zdp.spawner matches 30.. run scoreboard players set @s zdp.spawner 1


execute as @e[ tag= zdp.zombie_spawner, tag= !zdp.random.zombie_spawner] at @s if score zdp.zombie_spawner zdp.monster matches 1..100 run tag @s add zdp.random.zombie_spawner
