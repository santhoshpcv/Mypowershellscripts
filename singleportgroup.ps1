
$cluster=Get-Content C:\Users\pscv\Desktop\script\path.txt
$vlan=Read-host "please enter the vlan"
foreach($switch in $cluster){
Get-vdswitch -Name "$switch"|New-VDPortgroup -name $switch-0$vlan -VlanId ([int]$vlan) -NumPorts 8 |Get-VDUplinkTeamingPolicy | Set-VDUplinkTeamingPolicy -LoadBalancingPolicy LoadBalanceLoadBased -enablefailback $false


}