powercfg /batteryreport /xml /output batteryreport.xml
$battery = [xml](Get-Content batteryreport.xml)
$health = [pscustomobject]@{
	time = $battery.BatteryReport.ReportInformation.ScanTime;
    maxpower = $battery.BatteryReport.Batteries.Battery.FullChargeCapacity;
    design = $battery.BatteryReport.Batteries.Battery.DesignCapacity
}
$health | Format-Table
Write-Host "Max battery capacity is only $($health.maxpower / $health.design * 100)% of designed capacity"