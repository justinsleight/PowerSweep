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

"`n"
"`n"  # > Line Break(s) to leave room for Progress bar. 
"`n"

write-host "" #Generate Line Break
#write ip info, segmentation, and octet split to screen
write-host "Current IP Address:" $ipaddress
write-host "Segmented IP Address:" $ipcutup
write-host "First 3 Octets:" $ipcut

$ipaddresscut= "$oc0 $oc1 $oc2"

$sNet = 1..254 #set count for scanning loop
$all = $sNet.Count

$i = 0
$space = "   "
$ilabel = "Count:"

$sNet | ForEach-Object {
   Write-Progress -PercentComplete (
       $i*100/$all) -Activity "Scanning Address: $ipcut.$_ $space $ilabel $i/$all"  -Status 'Working'
   Test-Connection -ErrorAction SilentlyContinue -count 1 -TimeToLive 16 "$ipcut.$_"
   $i++
}


write-host ""