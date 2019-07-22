scoreboard objectives add isSleeping dummy
scoreboard objectives add sleepbc dummy
scoreboard objectives add sleep_vote dummy
scoreboard players set #100 sleep_vote 100
scoreboard players set #sleepovernight sleep_vote 50
bossbar add sleep "睡覺囉"
bossbar set minecraft:sleep color yellow
summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"Sleep Vote\",\"color\":\"gold\"}]",Tags:["sleep_temp"]}
execute as @e[tag=sleep_temp] run say Sleep Vote Initialized!
kill @e[type=minecraft:armor_stand,tag=sleep_temp]
tellraw @a [{"text":"[","color":"white"},{"text":"Sleep Vote","color":"gold"},{"text":"] ","color":"white"},{"text":"Change the percentage to skip night","underlined":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #sleepovernight sleep_vote <persentage>"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"點一下即可立即設置","color":"gold"}]}}}]
