# Variables
$GOOGLE = "https://www.google.com/search?q="
$MUSIC = "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps\YouTube Music"
$TEXT = "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps\Messages"
$REASON = "C:\Program Files\Propellerhead\Reason 9\Reason"
$ONENOTE = "C:\Program Files\Microsoft Office\root\Office16\ONENOTE"
$OUTLOOK = "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK"
$EXCEL = "C:\Program Files\Microsoft Office\root\Office16\EXCEL"
$FINANCE = "C:\Users\cisne\OneDrive\Documents\Finances.xlsx"
$CHROME = "C:\Program Files\Google\Chrome\Application\chrome"

# Repeated functions
Function open($this) {Start-Process $this}
Function wait([int]$time) {Start-Sleep -Seconds $time}
Function print($this) {Write-Host $this}
# Print file to terminal 
Function test {Get-Content ""}

# Google search
Function google {$this = $args; open("$GOOGLE$this"); clear}

# Open www website
Function www($this) {open("www.$this")}
# Open fav websites
Function reddit {clear; open("www.reddit.com")}
Function dev {clear; open("www.dev.to")}
Function github {clear; open("www.github.com")}

# Open fav apps
Function text {clear; open($TEXT)}
Function music {clear; open($MUSIC)}
Function reason {clear; open($REASON)}
Function chrome {clear; open($CHROME)}

# Open office apps 
Function note {clear; open($ONENOTE)}
Function outlook {clear; open($OUTLOOK)}
Function excel {clear; open($EXCEL)}
# Open all office apps
Function office {clear; outlook; wait(1); note; wait(1); finance}

# Open files
Function finance {open($FINANCE); clear}

# Basic loop
Function loop { 
    for ($i = 1; $i -lt 11; $i++) { 
        clear
        print($i)
        wait(1)
    }
}
