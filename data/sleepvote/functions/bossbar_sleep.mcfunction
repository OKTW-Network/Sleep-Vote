bossbar set minecraft:sleep players @a
bossbar set minecraft:sleep name [{"text":"睡覺囉 "},{"score":{"name":"#sleepingpercent","objective":"sleep_vote"},"color":"yellow"},{"text":"% / ","color":"yellow"},{"score":{"name":"#sleepovernight","objective":"sleep_vote"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score #sleepingpercent sleep_vote matches 1.. run bossbar set minecraft:sleep visible true
execute if score #sleepingpercent sleep_vote matches 0 run bossbar set minecraft:sleep visible false
execute store result bossbar minecraft:sleep max run scoreboard players get #sleepovernight sleep_vote
execute store result bossbar minecraft:sleep value run scoreboard players get #sleepingpercent sleep_vote
