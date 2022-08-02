# Hardware
execute unless predicate galaxy:block/assembly_table/blueprint/gun/have-sight unless predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run item replace block ~ ~ ~ container.0 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10400,CustomData:{galaxy:{Type:"gui"}}}
execute unless predicate galaxy:block/assembly_table/blueprint/gun/have-sight if predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run item replace block ~ ~ ~ container.0 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10401,CustomData:{galaxy:{Type:"gui"}}}
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-sight unless predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run item replace block ~ ~ ~ container.0 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10402,CustomData:{galaxy:{Type:"gui"}}}
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-sight if predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run item replace block ~ ~ ~ container.0 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10403,CustomData:{galaxy:{Type:"gui"}}}

# Misc
execute unless predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade unless predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run item replace block ~ ~ ~ container.6 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10500,CustomData:{galaxy:{Type:"gui"}}}
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade unless predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run item replace block ~ ~ ~ container.6 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10501,CustomData:{galaxy:{Type:"gui"}}}
execute unless predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade if predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run item replace block ~ ~ ~ container.6 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10502,CustomData:{galaxy:{Type:"gui"}}}
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade if predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run item replace block ~ ~ ~ container.6 with minecraft:white_stained_glass_pane{display:{Name:'{"text":""}'},CustomModelData:10503,CustomData:{galaxy:{Type:"gui"}}}

tag @s remove galaxy._task.assembly_table.buildBackground
