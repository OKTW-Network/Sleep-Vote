bossbar set minecraft:sleep players @a
bossbar set minecraft:sleep name [{"text":"睡覺囉 "},{"score":{"name":"#sleepingpercent","objective":"dummy"},"color":"yellow"},{"text":"% / ","color":"yellow"},{"score":{"name":"#sleepovernight","objective":"dummy"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score #sleepingpercent dummy matches 1.. run bossbar set minecraft:sleep visible true
execute if score #sleepingpercent dummy matches 0 run bossbar set minecraft:sleep visible false
execute store result bossbar minecraft:sleep max run scoreboard players get #sleepovernight dummy
execute store result bossbar minecraft:sleep value run scoreboard players get #sleepingpercent dummy
