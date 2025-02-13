@echo off
verify on

REM #$radku_pod_sebou = 641  # 1/6 souboru klice, vytezeni obsahu klice by bylo  16,5 %
REM #$radku_pod_sebou = 1281 # 1/3 souboru klice, vytezeni obsahu klice by bylo  33%
REM #$radku_pod_sebou = 1922 # 1/2 souboru klice, vytezeni obsahu klice by bylo  50%
REM #$radku_pod_sebou = 732 # po cely rok maximalne 2 emaily denne je jednoho souboru klice
REM #$radku_pod_sebou = 1098 # po cely rok 3 emaily denne je jednoho souboru klice
REM #$radku_pod_sebou = 1464 # po cely rok 4 emaily denne je jednoho souboru klice
REM #$radku_pod_sebou = 1840 # po cely rok 5 emailu denne je jednoho souboru klice

for /L %%G IN (1,1,30) DO ( 
REM           od,step,do
REM echo %%G
powershell -file ./m30.ps1 641 %%G
powershell -file ./m30.ps1 732 %%G
powershell -file ./m30.ps1 1098 %%G
powershell -file ./m30.ps1 1281 %%G
powershell -file ./m30.ps1 1464 %%G
powershell -file ./m30.ps1 1840 %%G
powershell -file ./m30.ps1 1992 %%G
)

echo "vse hotovo"
pause
@echo on
