param ($dominios, $resultado)
$ErrorActionPreference="SilentlyContinue"
$CSV = Import-Csv "$dominios"
ConvertTo-Html -Head $head -Title "Contatos Whois" -Body "<h1> Contatos Whois </h1>" > $resultado
foreach($LINE in $CSV)
{
if ($($LINE.DOMAIN) -like "*.br")
{
$ErrorActionPreference="SilentlyContinue"
write-host " "
write-host "Informacões de contato do Dominio $($LINE.DOMAIN)"
.\whois.exe -nobanner $($LINE.DOMAIN) | select-string "@" | Select-String -Pattern "cert.br|whoisrequest@markmonitor.com" -notmatch | ConvertTo-html -Property Line -Body "<H2> Informacões de contato do Domínio $($LINE.DOMAIN) </H2>" >> $resultado
write-host " "
#write-host "#############"
}
elseif ($($LINE.DOMAIN) -like '*.*.*.*')
{
$ErrorActionPreference="SilentlyContinue"
write-host " "
write-host "Informacões de contato do IP $($LINE.DOMAIN)"
.\whois.exe -nobanner $($LINE.DOMAIN) | select-string "@" | Select-String -Pattern "cert.br|whoisrequest@markmonitor.com" -notmatch | ConvertTo-html -Property Line -Body "<H2> Informacões de contato do IP $($LINE.DOMAIN) </H2>" >> $resultado
write-host " "
#write-host "#############"
}
elseif ($($LINE.DOMAIN) -notlike '*.br')
{
$ErrorActionPreference="SilentlyContinue"
write-host " "
write-host "Informacões de contato do Dominio $($LINE.DOMAIN)"
.\whois.exe -nobanner $($LINE.DOMAIN) | select-string "@" |  Select-String -Pattern "cert.br|whoisrequest@markmonitor.com" -notmatch | ConvertTo-html -Property Line -Body "<H2> Informacões de contato do Domínio $($LINE.DOMAIN) </H2>" >> $resultado
write-host " "
#write-host "#############"
}
}
