bossbar set sleepvote:sleep players @a
bossbar set sleepvote:sleep name [{"text":"睡覺囉 "},{"score":{"name":"#sleepingpercent","objective":"sleep_vote"},"color":"yellow"},{"text":"% / ","color":"yellow"},{"score":{"name":"#sleepovernight","objective":"sleep_vote"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score #sleepingpercent sleep_vote matches 1.. run bossbar set sleepvote:sleep visible true
execute if score #sleepingpercent sleep_vote matches 0 run bossbar set sleepvote:sleep visible false
execute store result bossbar sleepvote:sleep max run scoreboard players get #sleepovernight sleep_vote
execute store result bossbar sleepvote:sleep value run scoreboard players get #sleepingpercent sleep_vote
