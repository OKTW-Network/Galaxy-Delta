function galaxy:weapon/remove_uuid_data

data modify storage galaxy:temp +weapon.gun.UUID.reset.input set from storage galaxy:temp +weapon.remove_uuid_data.UUID
function galaxy:weapon/gun/uuid/reset
