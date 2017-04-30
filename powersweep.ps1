# PowerSweep
# A Basic PowerShell Ping Sweep for Local Networks
# Justin Sleight 2017
# //Still in the works//

clear
Write-Host "PS PowerPing - 2017 Justin Sleight" -foregroundcolor blue -backgroundcolor white

$ipaddress = $(ipconfig | where {$_ -match 'IPv4.+\s(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' } | out-null; $Matches[1])

#split octets into segments for processing
$oct0=([ipaddress] $ipaddress).GetAddressBytes()[0]
$oct1=([ipaddress] $ipaddress).GetAddressBytes()[1]
$oct2=([ipaddress] $ipaddress).GetAddressBytes()[2]
$oct3=([ipaddress] $ipaddress).GetAddressBytes()[3]

$ipcutup="$oct0 $oct1 $oct2 $oct3"
$ipcut="$oct0.$oct1.$oct2"

write-host ""
#write ip info, segmentation, and octet split to screen
write-host "Current IP Address:" $ipaddress
write-host "Segmented IP Address:" $ipcutup
write-host "First 3 Octets:" $ipcut

$ipaddresscut= "$oc0 $oc1 $oc2"

$i=1
1..254 | ForEach-Object {Test-Connection -ErrorAction SilentlyContinue -count 1 -TimeToLive 32 "$ipcut.$_"}
#need to get a progress bar here^

write-host ""