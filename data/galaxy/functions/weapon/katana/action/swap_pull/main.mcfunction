function galaxy:weapon/katana/meta/detector/style-katana

execute as @s[scores={styleKatana=1}] run function galaxy:weapon/katana/replace-hand_main/katana_edge
execute as @s[scores={styleKatana=1}] run function galaxy:weapon/katana/replace-hand_off/katana_scabbard

execute as @s[scores={styleKatana=2}] run function galaxy:weapon/katana/replace-hand_main/nazo_edge
execute as @s[scores={styleKatana=2}] run function galaxy:weapon/katana/replace-hand_off/nazo_scabbard

function galaxy:weapon/katana/action/swap_pull/consequence
