cls

#Remove-Variable matrix,kraje_matrix,hl_1,hl_2,kraje_matrix,rnd,radku_pod_sebou -ErrorAction SilentlyContinue
#Remove-Variable pole,x,item,qq,suma,xx,proc,table_file_vysledky -ErrorAction SilentlyContinue

$delka_args = $args.length
#echo "celkem args $delka_args"
 
if ($delka_args -ne 2) {
echo "powershell -file m23.ps1 641 2"
echo 'args[0] = pocet pouziti klice, args[1] = cislo testu'
sleep 10
Exit
}

for ($aa = 0; $aa -le ($delka_args - 1); $aa ++) {
$k = "args[$aa] -  "
$k += $args[$aa]
echo $k
}

[int32] $radku_pod_sebou = $args[0]
#$radku_pod_sebou-- # protoze ze zacina od nuly, tak o jedn mene
[string] $sulfix_cislo_testu = $args[1]
if ( $sulfix_cislo_testu.Length -eq 1 ){ $sulfix_cislo_testu = "0" + $sulfix_cislo_testu }


#echo $radku_pod_sebou.GetType()
#echo $sulfix_cislo_testu.GetType()
#exit 

$matrix=[System.Collections.ArrayList]::new()

#$max_rnd = 3844 # 0-3844 hodnota klice pro verzi 1.3 max a verzi 1.4

############################################################################################

#$radku_pod_sebou = 641  # 1/6 souboru klice, vytezeni obsahu klice by bylo  16,5 %
#$radku_pod_sebou = 1281 # 1/3 souboru klice, vytezeni obsahu klice by bylo  33%
#$radku_pod_sebou = 1922 # 1/2 souboru klice, vytezeni obsahu klice by bylo  50%

#$radku_pod_sebou = 732 # po cely rok maximalne 2 emaily denne je jednoho souboru klice
#$radku_pod_sebou = 1098 # po cely rok 3 emaily denne je jednoho souboru klice
#$radku_pod_sebou = 1464 # po cely rok 4 emaily denne je jednoho souboru klice
#$radku_pod_sebou = 1840 # po cely rok 5 emailu denne je jednoho souboru klice


#$radku_pod_sebou = 100 # toto slouzi pouze jako test

###########################################################################################

$delka_hesla = 125 # toto je testovaci, 125 ma bejt

echo "definuju prazdnou matici pro klic"
for ( $aa = 0; $aa -le $radku_pod_sebou; $aa++ ) { # radku pod sebou
$vv=@()
for ( $aa2 = 0; $aa2 -le $delka_hesla; $aa2++ ) { #
$vv+=""
}
$matrix.Add($vv) > $null
}

echo "vytvarim RND obsah klice"
$poc = 1

for ( $aa = 0; $aa -le $radku_pod_sebou; $aa++){
#for ( $bb = 0; $bb -le 5; $bb++){ # slouzi pro test 
for ( $bb = 0; $bb -le $delka_hesla; $bb++){
$rnd = Get-Random -Minimum 0 -Maximum 3844 # 0 - 3843 je v desifruj.exe, zasifruj.exe (zluta hdonota rozsah)
$matrix[$aa][$bb]=$rnd
$poc++
}
}

# levy horni roh, pravi horni roh, levy dolni roh a pravy dolni roh
echo ""
$hl_1=[string]$matrix[0][0]+" . . . . . . . . . . . . "+[string]$matrix[0][$delka_hesla]
echo $hl_1
for ($i1 = 1; $i1 -le 2; $i1++){ 
echo ". . . . . . . . . . . . . . . . "
}
$hl_2=[string]$matrix[$radku_pod_sebou][0]+" . . . . . . . . . . . . "+[string]$matrix[$radku_pod_sebou][$delka_hesla]
echo $hl_2
echo ""
#
sleep 5

# Set-Content "matrix.txt" -Encoding ASCII -Value $matrix
# normanle zapsal celeou maitici jenom jako cisla pod sebou rozmer 1 x N ( takze nic )
# sleep 3

# funkce procenta
function procent ([int] $pocet_z_celku, [int] $celek) {
$procent = ($pocet_z_celku/$celek).ToString("P")
return $procent
}

#$table_file_vysledky = @()

# projizdi vsechny sloupce matice 0-125
$table_file_vysledky = @()

for ( $ee = 0; $ee -le $delka_hesla; $ee++){ # 0-125 delka hesla, znaky
#echo "sloupec - $ee"
$pole = @()
#$x=@()
$suma=0
for ($cc = 0; $cc -le $radku_pod_sebou; $cc++){
#echo $cc
$pole += $matrix[$cc][$ee] # 0-125 zde bude
#$x=@()
}

# tisk vysledku odsud
#$x=@()
$x = $pole | Group | Where{$_.Count -gt 1} | Select-Object Count
#echo $pole | Group # toto vypisuje detaily     2 638                       {638, 638}
$xx = $pole | Group  # toto vypisuje detaily     2 638                       {638, 638}
echo $xx # tisne radky - {}
#echo $x.Length

#$suma=0
if ( $x.Length -ne 0 ) {
foreach ( $item in $x ) {
[string] $qq = $item
#echo $qq"<<" # @{Count=2}<


$qqq = [int32] $qq.Substring(8,$qq.Length -9)
if ( $qqq -gt 2 ){ 
#echo $qq
$qqq = 2
$suma += $qqq
}else{
$suma += [int32] $qq.Substring(8,$qq.Length -9)
}

}
}

$proc = procent $suma $radku_pod_sebou

# vysledky tisk
$suma = (($suma/2))
if ( $proc.Length -ne 7 ){ $proc = "0" + $proc } # pokud by bylo napr. 8,12 % tak prida nulu na zacatek kvuli sortu pak (blblo to)
echo $suma" - stejnych dvojic(e) ve $radku_pod_sebou radcich, $ee sloupce matice, to je $proc"
#echo "maximalni rnd je - $max_rnd"

$table_file_vysledky += $proc

sleep 5

} # for $ee

echo "-------------"

# nazev souboru vysledku
$file_vysledky_name = "vysledky_pro_"
$file_vysledky_name += $radku_pod_sebou # nove args[0]
$file_vysledky_name += "_pouziti_jednoho_souboru_klice"
# args[1]
$file_vysledky_name +="_test_"
$file_vysledky_name += $sulfix_cislo_testu # args[1] aby se neprepisovalo to co uz je hotove
#
$file_vysledky_name += ".txt"

# sort *.txt
$table_file_vysledky = $table_file_vysledky | Sort-Object

$min = $table_file_vysledky[0]
#echo $min
#echo $min.GetType()
$int_min = $min.Substring(0,2)
$int_min += "."
$int_min += $min.Substring(3,2)
#echo $int_min

$max = $table_file_vysledky[$table_file_vysledky.Length-1]
#echo $max
#echo $max.GetType()
$int_max = $max.Substring(0,2)
$int_max += "."
$int_max += $max.Substring(3,2)
#echo $int_max

[string] $rozdil_procent = (( $int_max - $int_min ))
#echo $rozdil_procent

$d_table_file_vysledky = $table_file_vysledky.Length # bude zde 

$table_file_vysledky += "-------------"

#[string] $vloz_1 = "delka hesla je "
$vloz_1 = [string] $d_table_file_vysledky
$vloz_1 += " znaku heslo,"
$vloz_1 += "pouziti klice je "
$vloz_1 += $radku_pod_sebou
$vloz_1 += " x,"
$vloz_1 += "rozmezi stejnych znaku ve sloupcich je "
$vloz_1 += $min
$vloz_1 += " - "
$vloz_1 += $max
$vloz_1 += " rozsah - "
$vloz_1 += $rozdil_procent
$vloz_1 += " %"
$table_file_vysledky += $vloz_1
echo $vloz_1

<#
[string] $vloz_2 = "tzn. rozsah - "
$vloz_2 += $rozdil_procent
$vloz_2 += " %"
$table_file_vysledky += $vloz_2
echo $vloz_2
#>

<#
[string] $vloz_3 = $d_table_file_vysledky
$vloz_3 += " - polozek celkem"
$table_file_vysledky += $vloz_3
echo $vloz_3
#>

# zapise soubor vysledku
Set-Content -Path $file_vysledky_name -Encoding ASCII -Value $table_file_vysledky
sleep 2

# zaverecna hlaska
echo "vsechny tyto vysledky jsou v souboru $file_vysledky_name"

sleep 3

# pause
#Read-Host -Prompt "Press ENTER to continue"

