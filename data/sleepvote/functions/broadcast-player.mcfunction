execute as @a[tag=vote_sleep,tag=!broadcast_sleep_vote] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" is sleeping. [","color":"gold"},{"score":{"name":"#calculation_temp3","objective":"numeric"},"color":"gold"},{"text":"%]","color":"gold"}]
execute as @a[tag=vote_sleep,tag=!broadcast_sleep_vote] run tag @s add broadcast_sleep_vote
execute as @a[tag=!vote_sleep,tag=broadcast_sleep_vote] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" has left the bed. [","color":"gold"},{"score":{"name":"#calculation_temp3","objective":"numeric"},"color":"gold"},{"text":"%]","color":"gold"}]
execute as @a[tag=!vote_sleep,tag=broadcast_sleep_vote] run tag @s remove broadcast_sleep_vote
