# Repeated functions
Function open($this) {
    Start-Process $this
}
Function wait([int]$time) {
    Start-Sleep -Seconds $time
}
Function clear {
    Clear-Host
}

# Google search
Function google {
    $this = $args
	open("https://www.google.com/search?q=$this")
    clear
}

# Open www website
Function www($this) {
    open("www.$this")
}

# Open fav websites
Function reddit {clear | open("https://www.reddit.com")}

# Open fav apps
Function text {
    clear | open(
    "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps\Messages"
)}

Function music {
    clear | open(
    "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps\YouTube Music"
)}

# Open office apps 
Function note {clear | open("C:\Program Files\Microsoft Office\root\Office16\ONENOTE")}
Function excel {clear | open("C:\Program Files\Microsoft Office\root\Office16\EXCEL")}
Function outlook {clear | open("C:\Program Files\Microsoft Office\root\Office16\OUTLOOK")}
# Open all office apps
Function office {clear | outlook | wait(1) | note | wait(1) | excel}

#Open files
Function invoke_item {Invoke-Item "" | Clear-Host}

# Print file to terminal 
Function get_content {Get-Content ""}

# Basic loop
Function loop { 
	for ($i = 1; $i -lt 10; $i++) { 
		Clear-Host
		Write-Host "Opening page $i"
		Start-Sleep -Seconds 1
	}
}
