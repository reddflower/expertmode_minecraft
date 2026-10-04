scoreboard objectives add zdp.hardmode dummy
scoreboard objectives add zdp.monster dummy
scoreboard objectives add zdp.spawner dummy

execute if score toggle zdp.hardmode matches 0 run scoreboard players set toggle zdp.hardmode -1
execute if score timer zdp.hardmode matches 0 run scoreboard players set timer zdp.hardmode 10



