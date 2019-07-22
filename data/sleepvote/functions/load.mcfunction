scoreboard objectives add isSleeping dummy
scoreboard objectives add sleepbc dummy
scoreboard objectives add sleep_vote dummy
scoreboard players set #100 sleep_vote 100
scoreboard players set #sleepovernight sleep_vote 50
bossbar add sleep "睡覺囉"
bossbar set minecraft:sleep color yellow
say SleepVote has initialized...
say change sleep_vote score of #sleepovernight to change the percentage to skip night.
