tag @e[ tag= zdp.zombie, tag= !zdp.bigger ] add zdp.bigger
tag @e[ tag= zdp.spider, tag= !zdp.bigger ] add zdp.bigger
tag @e[ tag= zdp.piglin, tag= !zdp.bigger ] add zdp.bigger
tag @e[ type= minecraft:hoglin, tag= !zdp.bigger ] add zdp.bigger
tag @e[ type= minecraft:zoglin, tag= !zdp.bigger ] add zdp.bigger


##### ÍÅ ÍÅÆÈÒÜ #####
tag @e[ tag= zdp.piglin, tag= !zdp.bigger.dead ] add zdp.bigger.dead
tag @e[ tag= zdp.spider, tag= !zdp.bigger.dead ] add zdp.bigger.dead
tag @e[ type= minecraft:hoglin, tag= !zdp.bigger.dead ] add zdp.bigger.dead

##### ÒÎËÜÊÎ ÍÅÆÈÒÜ #####
tag @e[ tag= zdp.zombie, tag= !zdp.bigger.undead ] add zdp.bigger.undead
tag @e[ type= minecraft:zoglin, tag= !zdp.bigger.undead ] add zdp.bigger.undead



execute as @e[ tag= zdp.bigger, tag= !zdp.random.bigger] at @s store result score zdp.bigger zdp.monster run random value 1..100


# execute as @e[ tag= zdp.bigger, tag= !zdp.random.bigger] at @s if score zdp.bigger zdp.monster matches 1..10 run say 10
execute as @e[ tag= zdp.bigger, tag= !zdp.random.bigger] at @s if score zdp.bigger zdp.monster matches 1..10 run attribute @s minecraft:scale base set 1.7
execute as @e[ tag= zdp.bigger, tag= !zdp.random.bigger] at @s if score zdp.bigger zdp.monster matches 1..10 run attribute @s minecraft:max_health modifier add zdp.bigger 2 add_multiplied_base
execute as @e[ tag= zdp.bigger.undead, tag= !zdp.random.bigger] at @s if score zdp.bigger zdp.monster matches 1..10 run effect give @s minecraft:instant_damage 5 4 true
execute as @e[ tag= zdp.bigger.dead, tag= !zdp.random.bigger] at @s if score zdp.bigger zdp.monster matches 1..10 run effect give @s minecraft:instant_health 5 4 true


execute as @e[ tag= zdp.bigger, tag= !zdp.random.bigger] at @s if score zdp.bigger zdp.monster matches 1..100 run tag @s add zdp.random.bigger
