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
Function printFile {Get-Content ""}
# Git save
Function save() {
    $this = $args;
    git add -A;
    wait(1);
    git commit -m "$this";
    wait(1);
    git push -u origin main;
}

# Google search
Function google {$this = $args; open("$GOOGLE$this")}

# Open www website
Function www($this) {open("www.$this")}
# Open fav websites
Function chase {open("www.chase.com")}
Function tbt {open("https://tbtmyway.texasbankandtrust.com/login")}
# Open FI
Function money {chase; wait(1); tbt; wait(1)}
Function reddit {open("www.reddit.com")}
Function dev {open("www.dev.to")}
Function github {open("www.github.com")}
Function dev {open("www.dev.to")}
Function linked {open("www.linkedin.com")}
Function insta {open("www.instagram.com")}
Function facebook {open("www.facebook.com")}
Function twitter {open("www.twitter.com")}
# Open all social websites
Function social {
    facebook; wait(1);
    insta; wait(1);
    linked; wait(1);
    dev; wait(1);
    reddit; wait(1);
    twitter: wait(1);
}

# Open fav apps
Function text {open($TEXT)}
Function music {open($MUSIC)}
Function reason {open($REASON)}
Function chrome {open($CHROME)}

# Open office apps 
Function note {open($ONENOTE)}
Function outlook {open($OUTLOOK)}
Function excel {open($EXCEL)}
# Open all office apps
Function office {outlook; wait(1); note; wait(1); finance}

# Open files
Function finance {open($FINANCE)}

# Basic loop
Function loop { 
    for ($i = 1; $i -lt 11; $i++) { 
        print($i)
        wait(1)
    }
}
