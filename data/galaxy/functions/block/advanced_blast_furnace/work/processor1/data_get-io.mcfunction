data modify storage galaxy:get item set value [{input:1b},{input:2b},{output:1b}]

data modify storage galaxy:get item[{input:1b}] merge from block ~ ~ ~ Items[{Slot:2b}]
data modify storage galaxy:get item[{input:2b}] merge from block ~ ~ ~ Items[{Slot:20b}]
data modify storage galaxy:get item[{output:1b}] merge from block ~ ~ ~ Items[{Slot:15b}]
