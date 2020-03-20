function sleepvote:meta/scoreboard/register
function sleepvote:config
function sleepvote:check-version

function sleepvote:meta/scoreboard/set_score

function sleepvote:meta/bossbar/register
execute as @a[tag=!InitializedSleepvoteBossbar] run function sleepvote:meta/bossbar/set_player_visible

execute if score #sleepvote_print_init Config matches 1 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
execute if score #sleepvote_print_set_percent Config matches 1 run tellraw @a ["",{"text":"[Sleep Vote]: ","color":"yellow","bold":true},{"text":"> Set voting percentage <","underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #vote_percentage SleepVote "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"/scoreboard players set #vote_percentage SleepVote ","color":"white"},{"text":"<persentage>","color":"green"}]}}}]
