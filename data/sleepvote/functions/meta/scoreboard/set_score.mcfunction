scoreboard players remove #delay_timer SleepVote 0

execute unless score #vote_percentage SleepVote matches -2147483648..2147483647 run scoreboard players set #vote_percentage SleepVote 50
