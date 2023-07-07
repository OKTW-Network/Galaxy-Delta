data modify storage galaxy:temp +component.build_lore._suitable set value []
data modify storage galaxy:temp +component.build_lore._suitable append value '{"text":""}'
data modify storage galaxy:temp +component.build_lore._suitable append value '{"translate":"component.suitable","color":"gray","italic":false}'
function galaxy:component/build_lore/suitable/_recursive
