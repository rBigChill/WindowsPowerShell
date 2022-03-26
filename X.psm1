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
$YOUTUBE = "https://www.youtube.com/results?search_query="

# Repeated functions
Function open($this) {Start-Process $this}
Function wait([int]$time) {Start-Sleep -Seconds $time}
Function print($this) {Write-Host $this}
Function printFile {Get-Content ""}

# Git functions
# Initialize git
Function init() {
    $this = $args
    git init; wait(1);
    git add -A; wait(1);
    git commit -m "first commit"; wait(1);
    git branch -M main; wait(1);
    git remote add origin https://github.com/rBigChill/$this.git; wait(1);
    git push -u origin main; wait(1);
}
# Get status
Function status() {git status}
# Git push
Function push() {
    $this = $args;
    git add -A;
    wait(1);
    git commit -m "$this";
    wait(1);
    git push -u origin main;
}
# Git pull
Function pull {git pull}
Function clone {
    $this=$args
    git clone https://github.com/$this.git
}

# Google search
Function google {$this = $args; open("$GOOGLE$this")}
Function youtube {
    $this = $args;
    if ($this=" ") {
        open("www.youtube.com")
    }else{
        open("$YOUTUBE$this")
    }
}

# Open www website
Function www($this) {open("www.$this")}

# Open fav websites
Function dev {open("www.dev.to")}
Function github {open("www.github.com")}

# Open social sites
Function reddit {open("www.reddit.com")}
Function insta {open("www.instagram.com")}
Function facebook {open("www.facebook.com")}
Function twitter {open("www.twitter.com")}
Function linked {open("www.linkedin.com")}
Function dev {open("www.dev.to")}
# Open all social websites
Function social {
    facebook; wait(1);
    insta; wait(1);
    linked; wait(1);
    dev; wait(1);
    reddit; wait(1);
    twitter; wait(1);
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
