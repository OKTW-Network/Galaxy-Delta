tag @s[tag=galaxy._task.entity.destruct] add galaxy._STOP
execute if entity @s[tag=galaxy._task.entity.destruct] run function galaxy:entity/katana_display_stand/destruct
tag @s[tag=galaxy._task.entity.destruct] remove galaxy._task.entity.destruct

execute if entity @s[tag=galaxy._STOP] run function galaxy:entity/katana_display_stand/kill

execute if entity @s[tag=!galaxy._STOP,tag=galaxy._tag.trigger.interacted_with_entity_interaction.target] run function galaxy:entity/katana_display_stand/interactive/interaction/main
execute if entity @s[tag=!galaxy._STOP,tag=galaxy._tag.trigger.hurt_entity_interaction.target] run function galaxy:entity/katana_display_stand/interactive/attack/main
