data modify storage galaxy:temp +weapon.remove_uuid_data.UUID set from entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.UUID
function galaxy:weapon/gun/remove_uuid_data

item replace block ~ ~ ~ container.13 with minecraft:air
