Import-Module C:\Users\cisne\Documents\WindowsPowerShell\X

Start-Job -FilePath C:\Users\cisne\Documents\WindowsPowerShell\threads.ps1

Function Prompt {"`n:)~ "}
Function cc {Set-Location C:\Users\cisne}
Function work {Set-Location C:\Users\cisne\OneDrive\Work}
Function lf {Get-Command -Module X}
