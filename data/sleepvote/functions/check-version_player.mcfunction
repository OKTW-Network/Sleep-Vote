scoreboard players operation #new_x.*.*-* Version = #sleepvote_currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #sleepvote_currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #sleepvote_currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #sleepvote_currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionSlpVoteX
scoreboard players operation #currently_*.x.*-* Version = @s VersionSlpVoteY
scoreboard players operation #currently_*.*.x-* Version = @s VersionSlpVoteZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionSlpVoteA
function cu:version/check

execute if score #change Version matches 1 run function math:debug/remove-init_tag

scoreboard players operation @s VersionSlpVoteX = #sleepvote_currently_version_x.*.*-* Meta
scoreboard players operation @s VersionSlpVoteY = #sleepvote_currently_version_*.x.*-* Meta
scoreboard players operation @s VersionSlpVoteZ = #sleepvote_currently_version_*.*.x-* Meta
scoreboard players operation @s VersionSlpVoteA = #sleepvote_currently_version_*.*.*-x Meta
