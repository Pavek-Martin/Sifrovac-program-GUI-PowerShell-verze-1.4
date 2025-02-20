﻿cls

Remove-Variable delka_args,nazev_adresare_klice,nazev_adresare_klice_exist,nazev_klice, matrix, d_nazev_klice, nazev_adresare_klice -ErrorAction SilentlyContinue

$nazev_adresare_klice = "./keys"
# kontrola existuje li folder keys
$nazev_adresare_klice_exist = Test-Path $nazev_adresare_klice
if ($nazev_adresare_klice_exist -clike "False"){
Write-host -ForegroundColor yellow "byl vytvoren adresar $nazev_adresare_klice"
#Write-host -ForegroundColor yellow $pole_tipy[9]
$null = New-Item -Path $nazev_adresare_klice -ItemType Directory -Force
#echo "spust program znovu"
sleep 5
#exit
}

$delka_args = $args.length
#echo "celkem args $delka_args"
if ($delka_args -clike 0) {
Write-host -ForegroundColor red "zadej nazev klice jako args[0]"
Write-host -ForegroundColor red "konec programu"
sleep 5
Exit 1
}

$nazev_adresare_klice = "./keys" # adresar se soubory klicu

$nazev_adresare_klice_exist = Test-Path $nazev_adresare_klice
if ($nazev_adresare_klice_exist -clike "False"){
Write-host -ForegroundColor red "neni adresar $nazev_adresare_klice"
Write-host -ForegroundColor red "konec programu"
sleep 5
Exit 1
}

[string] $args_0 = $args[0]
#echo $args_0
$nazev_klice = $nazev_adresare_klice
$nazev_klice += "/"
$nazev_klice += $args_0
echo $nazev_klice
#echo $nazev_klice.GetTypeCode()
# ne delsi nazev klice nez 73 znaku
$d_args_0 = $args_0.Length
#echo $d_args_0.GetType()
#echo $d_args_0
if ( $d_args_0 -gt 73 ) {
Write-host -ForegroundColor red "delka nazvu klice presahuje 73 znaku, zkrate nazev klice a puste program znovu"
Write-host -ForegroundColor red "delka tohoto klice byla $d_args_0 znaku"
echo "konec programu"
sleep 10
Exit 1
}


if (-not (Test-Path $nazev_klice)) {
# soubor klice tohoto nazvu jeste nexistuje
}else{
Write-host -ForegroundColor red "soubor klice s timto nazvem jez existuje, zvolte jiny nazev a puste program znovu"
echo "konec programu"
sleep 5
Exit 1
}

$start_stamp_1 = [DateTimeOffset]::Now.ToUnixTimeseconds()
echo "definuju prazdnou matici pro klic"

# prazdny matrix 3844 vodorovne a 126 svisle
$matrix=[System.Collections.ArrayList]::new()

for ( $aa = 0; $aa -le 125; $aa++ ) { # radku pod sebou
$vv=@()
for ( $aa2 = 0; $aa2 -le 3843; $aa2++ ) { # 0-3843 = 126x3843 = 484344 policek
$vv+=""
}
$matrix.Add($vv) > $null # pozor musi bej odeslat do > null jinak pise radky cisla a zdrzuje to
# bez > $null vypise 0-125 radek
}

$stop_stamp_1 = [DateTimeOffset]::Now.ToUnixTimeseconds()
$rozdil_stamp_1 = $stop_stamp_1 - $start_stamp_1
echo "nadefinovana prazdna matice klice, cas $rozdil_stamp_1 vterin"
echo ""


# A=65, Z=90, a=97, z=122, 0=48, 1=49, 9=57
#$pole=@(48,57,65,90,97,122) # 0-9, A-Z, a-z 
#$pole=@(97,122,65,90,49,57) #stary
$pole=@(48,57,97,122,65,90)
$d_pole=$pole.Length
$table=@()
for ( $aa = 0; $aa -le $d_pole -2; $aa++ ) {
$od = $pole[$aa]
$do = $pole[$aa+1]
for ( $bb = $od; $bb -le $do; $bb++ ) {
$zn = [char] $bb
$table+=$zn
}
$aa++
}


# plni prazdej matrix hodnotama
$start_stamp_2 = [DateTimeOffset]::Now.ToUnixTimeseconds()
echo "vytvarim a zapisuji obsah klice"

$delka_table = $table.Length # 62 znaku ( ne na radku ale znaky pro funkci Get-Random ! )
$poc = 1
$stream_writer_1 = [System.IO.StreamWriter]::new($nazev_klice)

for ( $aa = 0; $aa -le 125; $aa++){
for ( $bb = 0; $bb -le 3843; $bb++){ # 0-3843 - 484344 policek

$rnd = Get-Random -Minimum 0 -Maximum $delka_table # vybere nahodne jeden klic z pole $table
$matrix[$aa][$bb]=$table[$rnd]
$out_2=$table[$rnd]
#echo $out_2
$stream_writer_1.WriteLine("$out_2")
$poc++
}
}

$stream_writer_1.close()

$stop_stamp_2 = [DateTimeOffset]::Now.ToUnixTimeseconds()
$rozdil_stamp_2 = $stop_stamp_2 - $start_stamp_2
echo "soubor klice zapsan, cas $rozdil_stamp_2 vterin"

sleep 5


