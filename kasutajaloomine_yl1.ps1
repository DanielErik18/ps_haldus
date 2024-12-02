$eesnimi = Read-Host "Sisesta oma eesnimi"
$perenimi = Read-Host "Sisesta oma perenimi"

$kasutajanimi = "$($eesnimi.ToLower()).$($perenimi.ToLower())"
$Kontokirjeldus = "Lokaalne konto"
$parool = "Parool1!" | ConvertTo-SecureString -AsPlainText -Force

try{
    New-LocalUser $kasutajanimi -Password $parool -Description $Kontokirjeldus -ea Stop | Out-Null
    Write-Host "Loodav kasutaja on $kasutajanimi"
}
catch{
    Write-Host "Kasutaja loomisega tekkis probleem" -ForegroundColor Red 
    Write-Host "Probleemi detailid: $_" -ForegroundColor Red
}