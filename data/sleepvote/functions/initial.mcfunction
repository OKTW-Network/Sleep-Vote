function sleepvote:meta/scoreboard/register
function sleepvote:config
function sleepvote:check-version

function sleepvote:meta/scoreboard/set_score

function sleepvote:meta/bossbar/register
execute as @a[tag=!InitializedSleepvoteBossBar] run function sleepvote:meta/bossbar/set_player_visible

# summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"Sleep Vote","color":"yellow","bold":true}',Tags:["init_messenger-sleep_vote"]}
# execute as @e[tag=init_messenger-sleep_vote] run say Initialize complete!
# kill @e[tag=init_messenger-sleep_vote]
# tellraw @a [{"text":"[","color":"white"},{"text":"Sleep Vote","color":"yellow","bold":true},{"text":"] ","color":"white"},{"text":"Set voting percentage","underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #vote_percentage SleepVote "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"/scoreboard players set #vote_percentage SleepVote ","color":"white"},{"text":"<persentage>","color":"green"}]}}}]
execute as @a[tag=!InitializedSleepvoteBossbar] run function sleepvote:meta/bossbar/set_player_visible

execute if score #sleepvote_print_init Config matches 1 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
execute if score #sleepvote_print_set_percent Config matches 1 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"> Set voting percentage <","underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #vote_percentage SleepVote "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"/scoreboard players set #vote_percentage SleepVote ","color":"white"},{"text":"<persentage>","color":"green"}]}}}]
