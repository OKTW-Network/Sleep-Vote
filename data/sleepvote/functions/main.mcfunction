execute if score #calculation_temp1 numeric matches 1 run tag @a remove vote_sleep
tag @a[predicate=!minecraft:sleeping] remove vote_sleep

execute store result score #calculation_temp1 numeric if entity @a
execute store result score #calculation_temp2 numeric if entity @a[tag=vote_sleep]
scoreboard players operation #calculation_temp3 numeric = #calculation_temp2 numeric
scoreboard players operation #calculation_temp3 numeric *= #static_100 numeric
scoreboard players operation #calculation_temp3 numeric /= #calculation_temp1 numeric

execute if score #delay_timer SleepVote matches 0 run function sleepvote:broadcast-player

execute if score #calculation_temp3 numeric matches 1.. run bossbar set sleepvote:sleep visible true
execute if score #calculation_temp3 numeric matches 0 run bossbar set sleepvote:sleep visible false
execute if score #calculation_temp3 numeric matches 1.. run function sleepvote:bossbar/sleep

execute if score #delay_timer SleepVote matches 0 if score #calculation_temp3 numeric >= #vote_percentage SleepVote run tag @a remove broadcast_sleep_vote

execute if score #delay_timer SleepVote matches 0 if score #calculation_temp3 numeric >= #vote_percentage SleepVote run function sleepvote:broadcast-global

execute if score #delay_timer SleepVote matches 0 if score #calculation_temp3 numeric >= #vote_percentage SleepVote store result score #day SleepVote run time query day
execute if score #delay_timer SleepVote matches 0 if score #calculation_temp3 numeric >= #vote_percentage SleepVote run time set 1d

execute if score #delay_timer SleepVote matches 1.. run scoreboard players remove #delay_timer SleepVote 1
execute if score #calculation_temp3 numeric >= #vote_percentage SleepVote run scoreboard players set #delay_timer SleepVote 1

execute if score #delay_timer SleepVote matches 0 run function sleepvote:day_correction

execute if score #calculation_temp1 numeric matches 2.. run tag @a[predicate=minecraft:sleeping] add vote_sleep
