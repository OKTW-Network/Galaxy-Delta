replaceitem block ~ ~ ~ container.16 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"item.unknow","italic":false}'},CustomModelData:1,gun:1,sbldGResult:1}
function cu:mini_uuid/generate
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.miniUUIDMost int 1 run data get storage cu:resources miniUUID.Most
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.miniUUIDLeast int 1 run data get storage cu:resources miniUUID.Least
