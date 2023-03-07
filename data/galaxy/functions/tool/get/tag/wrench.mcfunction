function galaxy:tool/get/tag/wrench-uuid_less
function cu:uuid/generate
data modify storage galaxy:get itemTag[0].CustomData.galaxy.UUID set from storage cu:uuid generate.result
data modify storage galaxy:get itemTag[0].EntityTag.Item.tag.customUUID set from storage cu:uuid generate.result
