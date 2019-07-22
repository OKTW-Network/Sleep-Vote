execute as @a[nbt={SleepTimer:100s}] run scoreboard players set @s isSleeping 1
execute as @a[nbt={SleepTimer:0s}] run scoreboard players set @s isSleeping 0
scoreboard players set #sleepingcount sleep_vote 0
execute as @a[scores={isSleeping=1..}] run scoreboard players add #sleepingcount sleep_vote 1
scoreboard players operation #sleepingpercent sleep_vote = #sleepingcount sleep_vote
scoreboard players operation #sleepingpercent sleep_vote *= #100 sleep_vote
scoreboard players operation #sleepingpercent sleep_vote /= #playercount sleep_vote
execute as @a[scores={isSleeping=1,sleepbc=0}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" is sleeping. [","color":"gold"},{"score":{"name":"#sleepingpercent","objective":"sleep_vote"},"color":"gold"},{"text":"%]","color":"gold"}]
execute as @a[scores={isSleeping=1,sleepbc=0}] run scoreboard players set @s sleepbc 1
execute as @a[nbt={SleepTimer:0s},scores={sleepbc=1}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" has left the bed. [","color":"gold"},{"score":{"name":"#sleepingpercent","objective":"sleep_vote"},"color":"gold"},{"text":"%]","color":"gold"}]
execute as @a[nbt={SleepTimer:0s},scores={sleepbc=1}] run scoreboard players set @s sleepbc 0
execute if score #morning sleepbc matches 2 if score #sleepingpercent sleep_vote >= #sleepovernight sleep_vote run scoreboard players set #morning sleepbc 0
execute if score #morning sleepbc matches 0 run tellraw @a [{"text":"Wakey, wakey, rise and shine... Good Morning everyone!","color":"gold"}]
execute if score #morning sleepbc matches 0 store result score #day sleep_vote run time query day
execute if score #morning sleepbc matches 0 run scoreboard players set #delaytimer sleep_vote 20
execute if score #morning sleepbc matches 0 run scoreboard players set @a sleepbc 2
execute if score #morning sleepbc matches 0 run scoreboard players set #morning sleepbc 1
execute if score #sleepingpercent sleep_vote >= #sleepovernight sleep_vote run scoreboard players set #setday sleep_vote 1
execute if score #setday sleep_vote matches 0 run scoreboard players set #setday sleep_vote 1
execute if score #setday sleep_vote matches 1 run time set 1d
execute if score #setday sleep_vote matches 1 run scoreboard players set #setday sleep_vote 2
execute if score #setday sleep_vote matches 2 if score #delaytimer sleep_vote matches 1.. run scoreboard players remove #delaytimer sleep_vote 1
execute if score #setday sleep_vote matches 2 if score #delaytimer sleep_vote matches 0 run scoreboard players set #setday sleep_vote 3
execute if score #setday sleep_vote matches 3 if score #day sleep_vote matches 1.. run time add 1d
execute if score #setday sleep_vote matches 3 if score #day sleep_vote matches 1.. run scoreboard players remove #day sleep_vote 1
execute if score #setday sleep_vote matches 3 if score #day sleep_vote matches 0 run scoreboard players set #setday sleep_vote -1
execute if score #sleepingpercent sleep_vote matches 0 run scoreboard players set #morning sleepbc 2
execute if score #sleepingpercent sleep_vote matches 0 run scoreboard players set @a sleepbc 0
