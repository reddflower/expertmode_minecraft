tag @e[ type= minecraft:spider ] add zdp.spider
tag @e[ type= minecraft:cave_spider ] add zdp.spider
effect give @e[ tag= zdp.spider ] minecraft:weaving infinite 0 true



execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s store result score zdp.spider.rider zdp.monster run random value 1..100
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s store result score zdp.spider.clone zdp.monster run random value 1..100
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s store result score zdp.spider.small zdp.monster run random value 1..100
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s store result score zdp.spider.effect zdp.monster run random value 1..100



# execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.rider zdp.monster matches 1..30 run say 1
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.rider zdp.monster matches 1..30 run tag @s add zdp.spider.zombie
execute as @e[ tag= zdp.spider, tag= !zdp.random, type= minecraft:spider] at @s if score zdp.spider.rider zdp.monster matches 1..30 run summon spider ~ ~ ~ {Passengers:[{id:"zombie"}], Tags: [ "zdp.random" ] }
execute as @e[ tag= zdp.spider, tag= !zdp.random, type= minecraft:cave_spider] at @s if score zdp.spider.rider zdp.monster matches 1..30 run summon cave_spider ~ ~ ~ {Passengers:[{id:"zombie"}], Tags: [ "zdp.random" ] }

# execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.clone zdp.monster matches 1..40 run say 2
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.clone zdp.monster matches 1..40 run tag @s add zdp.spider.clone
execute as @e[ tag= zdp.spider, tag= !zdp.random, type= minecraft:spider] at @s if score zdp.spider.clone zdp.monster matches 1..40 run summon spider ~ ~1 ~ { Tags: [ "zdp.random" ] }
execute as @e[ tag= zdp.spider, tag= !zdp.random, type= minecraft:cave_spider] at @s if score zdp.spider.clone zdp.monster matches 1..40 run summon cave_spider ~ ~1 ~ { Tags: [ "zdp.random" ] }

# execute as @e[ tag= zdp.spider, tag= !zdp.random, tag= !zdp.big, tag= !zdp.bigger] at @s if score zdp.spider.small zdp.monster matches 1..40 run say 3
execute as @e[ tag= zdp.spider, tag= !zdp.random, tag= !zdp.big, tag= !zdp.bigger] at @s if score zdp.spider.small zdp.monster matches 1..40 run tag @s add zdp.spider.small
execute as @e[ tag= zdp.spider, tag= !zdp.random, tag= !zdp.big, tag= !zdp.bigger] at @s if score zdp.spider.small zdp.monster matches 1..40 run attribute @s minecraft:movement_speed modifier add zdp.spider.speed 0.06 add_value
execute as @e[ tag= zdp.spider, tag= !zdp.random, tag= !zdp.big, tag= !zdp.bigger] at @s if score zdp.spider.small zdp.monster matches 1..40 run attribute @s minecraft:scale base set 0.7

# execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.effect zdp.monster matches 1..30 run say 4
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.effect zdp.monster matches 1..10 run effect give @s minecraft:speed infinite 0
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.effect zdp.monster matches 11..20 run effect give @s minecraft:invisibility infinite 0
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.effect zdp.monster matches 21..30 run effect give @s minecraft:strength infinite 0


execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.rider zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.clone zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.small zdp.monster matches 1..100 run tag @s add zdp.random
execute as @e[ tag= zdp.spider, tag= !zdp.random] at @s if score zdp.spider.effect zdp.monster matches 1..100 run tag @s add zdp.random