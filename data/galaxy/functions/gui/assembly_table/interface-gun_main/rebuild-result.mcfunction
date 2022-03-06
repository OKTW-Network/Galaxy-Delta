data modify storage cu:data_storage input set from entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.UUID
function cu:data_storage/delete-uuid_container

data modify storage galaxy:weapon gun.resetUUID.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.UUID
function galaxy:weapon/gun/reset_uuid

function galaxy:gui/assembly_table/interface-gun_main/build-result
