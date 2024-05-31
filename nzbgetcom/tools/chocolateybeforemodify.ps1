$nzbgetExes=$((Get-WmiObject -Class win32_process -Filter "Name='nzbget.exe'" -Property ExecutablePath).ExecutablePath)
foreach ($nzbgetExe in $nzbgetExes) {
    & $nzbgetExe -Q
}
