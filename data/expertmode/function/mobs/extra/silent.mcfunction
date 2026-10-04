tag @e[ type= minecraft:enderman, tag= !zdp.silent ] add zdp.silent
tag @e[ tag= zdp.creeper, tag= !zdp.silent ] add zdp.silent
tag @e[ tag= zdp.zombie, tag= !zdp.silent ] add zdp.silent
tag @e[ tag= zdp.skeleton, tag= !zdp.silent ] add zdp.silent
tag @e[ tag= zdp.spider, tag= !zdp.silent ] add zdp.silent
tag @e[ tag= zdp.piglin, tag= !zdp.silent ] add zdp.silent



execute as @e[ tag= zdp.silent, tag= !zdp.random.silent] at @s store result score zdp.silent zdp.monster run random value 1..100


# execute as @e[ tag= zdp.silent, tag= !zdp.random.silent] at @s if score zdp.silent zdp.monster matches 1..20 run say 10
execute as @e[ tag= zdp.silent, tag= !zdp.random.silent] at @s if score zdp.silent zdp.monster matches 1..20 run data merge entity @s {Silent:true}

execute as @e[ tag= zdp.silent, tag= !zdp.random.silent] at @s if score zdp.silent zdp.monster matches 1..100 run tag @s add zdp.random.silent
