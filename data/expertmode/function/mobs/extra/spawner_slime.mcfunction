tag @e[ type= minecraft:witch, tag= !zdp.slime_spawner ] add zdp.slime_spawner


execute as @e[ tag= zdp.slime_spawner, tag= !zdp.random.slime_spawner] at @s store result score zdp.slime_spawner zdp.monster run random value 1..100


# execute as @e[ tag= zdp.slime_spawner, tag= !zdp.random.slime_spawner] at @s if score zdp.slime_spawner zdp.monster matches 1..20 run say 10
execute as @e[ tag= zdp.slime_spawner, tag= !zdp.random.slime_spawner] at @s if score zdp.slime_spawner zdp.monster matches 1..20 run tag @s add zdp.slime_spawner.on

execute as @e[ tag= zdp.slime_spawner.on, tag= !zdp.random.slime_spawner] at @s run item replace entity @s armor.head with slime_block[enchantment_glint_override=true] 1
execute as @e[ tag= zdp.slime_spawner.on] at @s as @p[ distance= 0..10 ] run particle dust{color:[0.38,0.76,0.41],scale:1} ~ ~2.5 ~ 0 0 0 0 1

execute as @e[ tag= zdp.slime_spawner.on] at @s at @p[ distance= 0..10 ] run scoreboard players add @s zdp.spawner 1
execute as @e[ tag= zdp.slime_spawner.on] at @s if score @s zdp.spawner matches 30.. run summon slime ~ ~1 ~ { Size: 1 , attributes: [ { id: "minecraft:scale", base: .5 } ] }
execute as @e[ tag= zdp.slime_spawner.on] at @s if score @s zdp.spawner matches 30.. run scoreboard players set @s zdp.spawner 1


execute as @e[ tag= zdp.slime_spawner, tag= !zdp.random.slime_spawner] at @s if score zdp.slime_spawner zdp.monster matches 1..100 run tag @s add zdp.random.slime_spawner
