tag @e[ type= minecraft:enderman, tag= !zdp.big ] add zdp.big
tag @e[ tag= zdp.zombie, tag= !zdp.big ] add zdp.big
tag @e[ tag= zdp.skeleton, tag= !zdp.big ] add zdp.big
tag @e[ tag= zdp.wither_skeleton, tag= !zdp.big ] add zdp.big
tag @e[ tag= zdp.spider, tag= !zdp.big ] add zdp.big
tag @e[ tag= zdp.piglin, tag= !zdp.big ] add zdp.big
tag @e[ tag= zdp.pillager, tag= !zdp.big ] add zdp.big
tag @e[ type= minecraft:blaze, tag= !zdp.big ] add zdp.big
tag @e[ type= minecraft:evoker, tag= !zdp.big ] add zdp.big
tag @e[ type= minecraft:hoglin, tag= !zdp.big ] add zdp.big
tag @e[ type= minecraft:zoglin, tag= !zdp.big ] add zdp.big


##### ÍÅ ÍÅÆÈÒÜ #####
tag @e[ type= minecraft:enderman, tag= !zdp.big.dead ] add zdp.big.dead
tag @e[ tag= zdp.piglin, tag= !zdp.big.dead ] add zdp.big.dead
tag @e[ tag= zdp.spider, tag= !zdp.big.dead ] add zdp.big.dead
tag @e[ type= minecraft:blaze, tag= !zdp.big.dead ] add zdp.big.dead
tag @e[ tag= zdp.pillager, tag= !zdp.big.dead ] add zdp.big.dead
tag @e[ type= minecraft:evoker, tag= !zdp.big.dead ] add zdp.big.dead
tag @e[ type= minecraft:hoglin, tag= !zdp.big.dead ] add zdp.big.dead

##### ÒÎËÜÊÎ ÍÅÆÈÒÜ #####
tag @e[ tag= zdp.zombie, tag= !zdp.big.undead ] add zdp.big.undead
tag @e[ tag= zdp.skeleton, tag= !zdp.big.undead ] add zdp.big.undead
tag @e[ tag= zdp.wither_skeleton, tag= !zdp.big.undead ] add zdp.big.undead
tag @e[ type= minecraft:zoglin, tag= !zdp.big.undead ] add zdp.big.undead



execute as @e[ tag= zdp.big, tag= !zdp.random.big] at @s store result score zdp.big zdp.monster run random value 1..100


# execute as @e[ tag= zdp.big, tag= !zdp.random.big] at @s if score zdp.big zdp.monster matches 1..20 run say 10
execute as @e[ tag= zdp.big, tag= !zdp.random.big] at @s if score zdp.big zdp.monster matches 1..20 run attribute @s minecraft:scale base set 1.35
execute as @e[ tag= zdp.big, tag= !zdp.random.big] at @s if score zdp.big zdp.monster matches 1..20 run attribute @s minecraft:max_health modifier add zdp.big 1 add_multiplied_base
execute as @e[ tag= zdp.big.undead, tag= !zdp.random.big] at @s if score zdp.big zdp.monster matches 1..20 run effect give @s minecraft:instant_damage 5 4 true
execute as @e[ tag= zdp.big.dead, tag= !zdp.random.big] at @s if score zdp.big zdp.monster matches 1..20 run effect give @s minecraft:instant_health 5 4 true


execute as @e[ tag= zdp.big, tag= !zdp.random.big] at @s if score zdp.big zdp.monster matches 1..100 run tag @s add zdp.random.big
