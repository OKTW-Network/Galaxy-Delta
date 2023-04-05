function galaxy:tool/summon_item/empower_lens

data modify storage cu:entity kill_uuid.input set from entity @s data.galaxy.entity.subordinates
function cu:entity/kill_uuid
kill @s
