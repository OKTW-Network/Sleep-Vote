execute as @a[nbt={SleepTimer:100s}] run scoreboard players set @s isSleeping 1
execute as @a[nbt={SleepTimer:0s}] run scoreboard players set @s isSleeping 0
scoreboard players set #sleepingcount dummy 0
execute as @a[scores={isSleeping=1..}] run scoreboard players add #sleepingcount dummy 1
scoreboard players operation #sleepingpercent dummy = #sleepingcount dummy
scoreboard players operation #sleepingpercent dummy *= #100 dummy
scoreboard players operation #sleepingpercent dummy /= #playercount dummy
execute as @a[scores={isSleeping=1,sleepbc=0}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" is sleeping. [","color":"gold"},{"score":{"name":"#sleepingpercent","objective":"dummy"},"color":"gold"},{"text":"%]","color":"gold"}]
execute as @a[scores={isSleeping=1,sleepbc=0}] run scoreboard players set @s sleepbc 1
execute as @a[nbt={SleepTimer:0s},scores={sleepbc=1}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" has left the bed. [","color":"gold"},{"score":{"name":"#sleepingpercent","objective":"dummy"},"color":"gold"},{"text":"%]","color":"gold"}]
execute as @a[nbt={SleepTimer:0s},scores={sleepbc=1}] run scoreboard players set @s sleepbc 0
execute if score #morning sleepbc matches 2 if score #sleepingpercent dummy >= #sleepovernight dummy run scoreboard players set #morning sleepbc 0
execute if score #morning sleepbc matches 0 run tellraw @a [{"text":"Wakey, wakey, rise and shine... Good Morning everyone!","color":"gold"}]
execute if score #morning sleepbc matches 0 run scoreboard players set @a sleepbc 2
execute if score #morning sleepbc matches 0 run scoreboard players set #morning sleepbc 1
execute if score #sleepingpercent dummy >= #sleepovernight dummy run time set day
execute if score #sleepingpercent dummy matches 0 run scoreboard players set #morning sleepbc 2
execute if score #sleepingpercent dummy matches 0 run scoreboard players set @a sleepbc 0
