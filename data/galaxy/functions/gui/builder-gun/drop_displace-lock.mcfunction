execute unless data block ~ ~ ~ Items[{Slot:1b,tag:{guiItem:1}}] run data modify storage galaxy:temporary GUI.container append from block ~ ~ ~ Items[{Slot:1b}]
execute unless data block ~ ~ ~ Items[{Slot:7b,tag:{guiItem:1}}] run data modify storage galaxy:temporary GUI.container append from block ~ ~ ~ Items[{Slot:7b}]
execute unless data block ~ ~ ~ Items[{Slot:24b,tag:{guiItem:1}}] run data modify storage galaxy:temporary GUI.container append from block ~ ~ ~ Items[{Slot:24b}]
execute unless data block ~ ~ ~ Items[{Slot:26b,tag:{guiItem:1}}] run data modify storage galaxy:temporary GUI.container append from block ~ ~ ~ Items[{Slot:26b}]

execute if data storage galaxy:temporary GUI.container[0] positioned ~ ~1 ~ run function galaxy:gui/drop_item
