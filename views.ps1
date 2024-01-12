$link = "https://github.com/DylanJRoberts"
$loop = 0

while ($loop -eq 0) {
    for ($i=1; $i -le 10; $i++) {
        & "C:\Program Files\Mozilla Firefox\firefox.exe" $link
    }
    Start-Sleep -Seconds 30
    Get-Process | Where-Object { $_.Name -like "firefox" } | Stop-Process
}
