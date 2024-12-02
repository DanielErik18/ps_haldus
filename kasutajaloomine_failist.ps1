$fail = "C:\Users\Daniel\ps_haldus\kasutajad.csv"

$kasutajad = Import-Csv $fail -Encoding Default -Delimiter ";"

foreach ($kasutaja in $kasutajad)
{
$kasutajanimi = $kasutaja.KasutajaNimi
$Taisinimi = $Kasutaja.TaisNimi
$Kontokirjeldus = $kasutaja.KontoKirjeldus
$parool = $kasutaja.Parool | ConvertTo-SecureString -AsPlainText -Force
New-LocalUser -Name $kasutajanimi `
    -Password $parool `
    -FullName "$Taisinimi" `
    -Description "$Kontokirjeldus" `
    -ErrorAction SilentlyContinue
}