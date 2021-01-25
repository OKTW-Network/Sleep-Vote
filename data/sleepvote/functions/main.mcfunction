execute if score #1 calcu_temp matches 1 run tag @a remove vote_sleep
tag @a[predicate=!minecraft:sleeping] remove vote_sleep

execute store result score #1 calcu_temp if entity @a
execute store result score #2 calcu_temp if entity @a[tag=vote_sleep]
scoreboard players operation #3 calcu_temp = #2 calcu_temp
scoreboard players operation #3 calcu_temp *= #100 num
scoreboard players operation #3 calcu_temp /= #1 calcu_temp

execute if score #delay_timer SleepVote matches 0 run function sleepvote:broadcast-player

execute if score #3 calcu_temp matches 1.. run bossbar set sleepvote:sleep visible true
execute if score #3 calcu_temp matches 0 run bossbar set sleepvote:sleep visible false
execute if score #3 calcu_temp matches 1.. run function sleepvote:bossbar/sleep

execute if score #delay_timer SleepVote matches 0 if score #3 calcu_temp >= #vote_percentage SleepVote run tag @a remove broadcast_sleep_vote

execute if score #delay_timer SleepVote matches 0 if score #3 calcu_temp >= #vote_percentage SleepVote run function sleepvote:broadcast-global

execute if score #delay_timer SleepVote matches 0 if score #3 calcu_temp >= #vote_percentage SleepVote store result score #day SleepVote run time query day
execute if score #delay_timer SleepVote matches 0 if score #3 calcu_temp >= #vote_percentage SleepVote run time set 1d

execute if score #delay_timer SleepVote matches 1.. run scoreboard players remove #delay_timer SleepVote 1
execute if score #3 calcu_temp >= #vote_percentage SleepVote run scoreboard players set #delay_timer SleepVote 1

execute if score #delay_timer SleepVote matches 0 run function sleepvote:day_correction

execute if score #1 calcu_temp matches 2.. run tag @a[predicate=minecraft:sleeping] add vote_sleep
