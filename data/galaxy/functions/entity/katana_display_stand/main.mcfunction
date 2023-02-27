tag @s[tag=galaxy._task.katana_display_stand.destruct] add galaxy._STOP
execute if entity @s[tag=galaxy._task.katana_display_stand.destruct] run function galaxy:entity/katana_display_stand/destruct
tag @s[tag=galaxy._task.katana_display_stand.destruct] remove galaxy._task.katana_display_stand.destruct

execute unless entity @s[tag=galaxy._STOP] if entity @s[tag=galaxy._task.katana_display_stand.states.style] run function galaxy:entity/katana_display_stand/states/style

execute unless entity @s[tag=galaxy._STOP] run function galaxy:entity/katana_display_stand/interactive/main
