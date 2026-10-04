### say hello

execute if score timer zdp.hardmode matches 1 run schedule function expertmode:mob_upload 1t
execute if score timer zdp.hardmode matches 5 run schedule function expertmode:mob_upload 5t
execute if score timer zdp.hardmode matches 10 run schedule function expertmode:mob_upload 10t
execute if score timer zdp.hardmode matches 20 run schedule function expertmode:mob_upload 20t

execute if score toggle zdp.hardmode matches 1 run function expertmode:world
