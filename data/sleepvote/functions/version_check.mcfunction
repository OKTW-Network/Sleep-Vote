scoreboard players set #sleepvote_version Meta 2000

execute unless score #sleepvote_currently_version Meta matches -2147483648..2147483647 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#sleepvote_version","objective":"Meta"}}]

execute unless score #sleepvote_version Meta = #sleepvote_currently_version Meta if score #sleepvote_version Meta > #sleepvote_currently_version Meta if score #sleepvote_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#sleepvote_currently_version","objective":"Meta"}},{"text":" -> ","color":"green"},{"score":{"name":"#sleepvote_version","objective":"Meta"}}]
execute unless score #sleepvote_version Meta = #sleepvote_currently_version Meta if score #sleepvote_version Meta < #sleepvote_currently_version Meta if score #sleepvote_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#sleepvote_currently_version","objective":"Meta"}},{"text":" -> ","color":"red"},{"score":{"name":"#sleepvote_version","objective":"Meta"}}]
execute if score #sleepvote_version Meta = #sleepvote_currently_version Meta if score #sleepvote_print_version Config matches 2 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#sleepvote_version","objective":"Meta"}}]

execute unless score #sleepvote_version Meta = #sleepvote_currently_version Meta run function sleepvote:debug/clean_up-scoreboard

scoreboard players operation #sleepvote_currently_version Meta = #sleepvote_version Meta

scoreboard players remove @s versionSleepvote 0
execute as @a unless score @s versionSleepvote = #sleepvote_currently_version Meta run function sleepvote:debug/remove_init_tag
execute as @a unless score @s versionSleepvote = #sleepvote_currently_version Meta run scoreboard players operation @s versionSleepvote = #sleepvote_currently_version Meta
