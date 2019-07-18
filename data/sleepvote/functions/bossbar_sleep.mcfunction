bossbar set minecraft:sleep players @a
execute if score #sleepingpercent dummy matches 1.. run bossbar set minecraft:sleep visible true
execute if score #sleepingpercent dummy matches 0 run bossbar set minecraft:sleep visible false
execute store result bossbar minecraft:sleep max run scoreboard players get #sleepovernight dummy
execute store result bossbar minecraft:sleep value run scoreboard players get #sleepingpercent dummy
