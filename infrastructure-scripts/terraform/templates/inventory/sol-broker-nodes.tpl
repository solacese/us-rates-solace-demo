[ha_sol_primary_nodes]
%{ for ip in solace-primary-ips ~}
${ip}
%{ endfor ~}

[ha_sol_backup_nodes]
%{ for ip in solace-backup-ips ~}
${ip}
%{ endfor ~}

[ha_sol_monitor_nodes]
%{ for ip in solace-monitor-ips ~}
${ip}
%{ endfor ~}

[sol_brokers:children]
ha_sol_primary_nodes
ha_sol_backup_nodes
ha_sol_monitor_nodes

[ha_sol_primary_privateip]
%{ for ip in solace-primary-privateips ~}
${ip}
%{ endfor ~}

[ha_sol_backup_privateip]
%{ for ip in solace-backup-privateips ~}
${ip}
%{ endfor ~}

[ha_sol_monitor_privateip]
%{ for ip in solace-monitor-privateips ~}
${ip}
%{ endfor ~}

[sol_brokers_privateip:children]
ha_sol_primary_privateip
ha_sol_backup_privateip
ha_sol_monitor_privateip