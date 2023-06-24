data modify storage galaxy:temp +component.build_lore.result.suitable append value '{"translate":"item.galaxy.gun"}'
execute if data storage galaxy:temp +component.build_lore{target:"galaxy.gun"} run function galaxy:component/gun/build_lore/alteration
