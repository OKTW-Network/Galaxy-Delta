data modify storage galaxy:temp +component.build_lore.result.suitable append value '{"translate":"item.galaxy.katana"}'
execute if data storage galaxy:temp +component.build_lore{target:"galaxy.katana"} run function galaxy:component/katana/build_lore/alteration
