
$vcenter = Read-Host "Enter the vCenter Name"
connect-viserver $vcenter
$capsvms = Get-Content C:\temp\vmlist.txt
foreach($v in $capsvms) {

$newname = $v.tolower()

get-vm -name $vm | set-vm -name $newname -confirm:$false}