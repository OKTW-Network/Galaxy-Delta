execute if entity @s[predicate=galaxy:weapon/energy_saber/posture/action/switch,predicate=galaxy:weapon/energy_saber/main_hand-inactive,scores={galaxy.energy_saber.switchCooldown=0}] run tag @s add galaxy._task.energy_saber.turnOn
execute if entity @s[predicate=galaxy:weapon/energy_saber/posture/action/switch,predicate=galaxy:weapon/energy_saber/main_hand-active,scores={galaxy.energy_saber.switchCooldown=0}] run tag @s add galaxy._task.energy_saber.turnOff

execute if entity @s[tag=galaxy._task.energy_saber.turnOn] run function galaxy:weapon/energy_saber/action/turn_on
execute if entity @s[tag=galaxy._task.energy_saber.turnOff] run function galaxy:weapon/energy_saber/action/turn_off

tag @s[tag=galaxy._task.energy_saber.turnOn] remove galaxy._task.energy_saber.turnOn
tag @s[tag=galaxy._task.energy_saber.turnOff] remove galaxy._task.energy_saber.turnOff
