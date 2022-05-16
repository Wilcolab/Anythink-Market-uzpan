for($i=1; $i -le 100; $i++)
{

$content = "{`"user`" : {`"username`": `"Playstation${i}`",`"email`":`"Playstation${i}@gmail.com`",`"password`":`"12345678`"}}";
Write $content
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36"
Invoke-WebRequest -UseBasicParsing -Uri "http://localhost:3000/api/users" `
-Method "POST" `
-WebSession $session `
-Headers @{
"Accept"="*/*"
  "Accept-Encoding"="gzip, deflate, br"
  "Accept-Language"="en-US,en;q=0.9,he-IL;q=0.8,he;q=0.7"
  "Origin"="http://localhost:3001"
  "Referer"="http://localhost:3001/"
  "Sec-Fetch-Dest"="empty"
  "Sec-Fetch-Mode"="cors"
  "Sec-Fetch-Site"="same-site"

  "sec-ch-ua"="`" Not A;Brand`";v=`"99`", `"Chromium`";v=`"101`", `"Google Chrome`";v=`"101`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
} `
-ContentType "application/json" `
-Body $content
}
