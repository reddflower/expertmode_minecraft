tag @e[ type= minecraft:wither_skeleton, tag= !zdp.magma_spawner ] add zdp.magma_spawner
tag @e[ type= minecraft:zombified_piglin, tag= !zdp.magma_spawner ] add zdp.magma_spawner


execute as @e[ tag= zdp.magma_spawner, tag= !zdp.random.magma_spawner] at @s store result score zdp.magma_spawner zdp.monster run random value 1..100


# execute as @e[ tag= zdp.magma_spawner, tag= !zdp.random.magma_spawner] at @s if score zdp.magma_spawner zdp.monster matches 1..20 run say 10
execute as @e[ tag= zdp.magma_spawner, tag= !zdp.random.magma_spawner] at @s if score zdp.magma_spawner zdp.monster matches 1..20 run tag @s add zdp.magma_spawner.on

execute as @e[ tag= zdp.magma_spawner.on, tag= !zdp.random.magma_spawner] at @s run item replace entity @s armor.head with magma_block[enchantment_glint_override=true] 1
execute as @e[ tag= zdp.magma_spawner.on] at @s as @p[ distance= 0..10 ] run particle flame ~ ~2.5 ~ 0.3 0.3 0.3 0 1

execute as @e[ tag= zdp.magma_spawner.on] at @s at @p[ distance= 0..10 ] run scoreboard players add @s zdp.spawner 1
execute as @e[ tag= zdp.magma_spawner.on] at @s if score @s zdp.spawner matches 30.. run summon magma_cube ~ ~1 ~ { Size: 0 }
execute as @e[ tag= zdp.magma_spawner.on] at @s if score @s zdp.spawner matches 30.. run scoreboard players set @s zdp.spawner 1


execute as @e[ tag= zdp.magma_spawner, tag= !zdp.random.magma_spawner] at @s if score zdp.magma_spawner zdp.monster matches 1..100 run tag @s add zdp.random.magma_spawner

