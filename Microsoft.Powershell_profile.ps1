Import-Module $home\Documents\WindowsPowerShell\X

Start-Job -FilePath $home\Documents\WindowsPowerShell\threads.ps1

Function Prompt {"`n:)~ "}
Function lf {Get-Command -Module X}
Function cc {Set-Location $home}
Function me {Set-Location "$home\Documents\WindowsPowerShell"}
Function work {Set-Location "$home\OneDrive\Work"}
