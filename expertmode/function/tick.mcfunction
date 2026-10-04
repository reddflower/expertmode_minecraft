execute as @e[ type= minecraft:wither_skull ] at @s run effect give @e[ type= minecraft:player, distance= 0..3 ] minecraft:blindness 5 0 true



execute as @a[ tag= hardmode.damocle] at @s if score damocle.toggle zdp.damocle matches 1 run function expertmode:gamerule/damocle/tick

execute if score sleep.toggle zdp.hardmode matches -1 run function expertmode:gamerule/sleep/tick

execute if score silent.toggle zdp.hardmode matches 1 run function expertmode:gamerule/silent_cart/tick

