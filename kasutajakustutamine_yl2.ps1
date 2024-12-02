$eesnimi = Read-Host "Sisesta oma eesnimi"
$perenimi = Read-Host "Sisesta oma perenimi"

$kasutajanimi = "$($eesnimi.ToLower()).$($perenimi.ToLower())"

try{
    Remove-LocalUser $kasutajanimi -ea Stop | Out-Null
    Write-Host "Kustutatav kasutaja on $kasutajanimi"
    Write-Host "Kasutaja $kasutajanimi on kustutatud"
}
catch{
    Write-Host "Kasutaja kustutamisega tekkis probleem" -ForegroundColor Red 
    Write-Host "Probleemi detailid: $_" -ForegroundColor Red
}