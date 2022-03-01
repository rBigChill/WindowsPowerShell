# Repeated functions
Function open($this) {Start-Process $this}
Function wait([int]$time) {Start-Sleep -Seconds $time}
Function print($this) {Write-Host $this}
# Print file to terminal 
Function test {Get-Content ""}

# Google search
Function google {
    $this = $args
    open("https://www.google.com/search?q=$this")
    clear
}

# Open www website
Function www($this) {open("www.$this")}

# Open fav websites
Function reddit {clear; open("https://www.reddit.com")}
Function dev {clear; open("https://www.dev.to")}
Function github {clear; open("https://www.github.com")}

# Open fav apps
Function text {
    clear; open(
    "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps\Messages"
)}
Function music {
    clear; open(
    "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps\YouTube Music"
)}
Function produce {clear; open("C:\Program Files\Propellerhead\Reason 9\Reason")}

# Open office apps 
Function note {clear; open("C:\Program Files\Microsoft Office\root\Office16\ONENOTE")}
Function outlook {clear; open("C:\Program Files\Microsoft Office\root\Office16\OUTLOOK")}
Function excel {clear; open("C:\Program Files\Microsoft Office\root\Office16\EXCEL")}
# Open all office apps
Function office {clear; outlook; wait(1); note; wait(1); fi}

#Open files
Function finance {open("C:\Users\cisne\OneDrive\Documents\Finances.xlsx"); clear}

# Basic loop
Function loop { 
    for ($i = 1; $i -lt 11; $i++) { 
        clear
        print($i)
        wait(1)
    }
}
