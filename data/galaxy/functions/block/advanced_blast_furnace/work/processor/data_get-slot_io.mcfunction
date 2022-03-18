data modify storage galaxy:get item set value [{input:1b},{output:1b},{fuel:1b}]

data modify storage galaxy:get item[{input:1b}] merge from block ~ ~ ~ Items[{Slot:2b}]
data modify storage galaxy:get item[{output:1b}] merge from block ~ ~ ~ Items[{Slot:15b}]
data modify storage galaxy:get item[{fuel:1b}] merge from block ~ ~ ~ Items[{Slot:20b}]
