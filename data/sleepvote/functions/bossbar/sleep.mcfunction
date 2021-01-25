bossbar set sleepvote:sleep players @a
bossbar set sleepvote:sleep name [{"text":"Vote to sleep - "},{"score":{"name":"#2","objective":"calcu_temp"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"#1","objective":"calcu_temp"},"color":"yellow"},{"text":" (","color":"yellow"},{"score":{"name":"#3","objective":"calcu_temp"},"color":"yellow"},{"text":"%","color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"#vote_percentage","objective":"SleepVote"},"color":"yellow"},{"text":"%","color":"yellow"},{"text":")","color":"yellow"}]
execute store result bossbar sleepvote:sleep max run scoreboard players get #vote_percentage SleepVote
execute store result bossbar sleepvote:sleep value run scoreboard players get #3 calcu_temp
