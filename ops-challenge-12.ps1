#this will create the function to create the file
function Createfile {
  ipconfig /all > "C:\Users\Dwight Schrute\Documents\network_report.txt"
}

#create the file
Createfile

#set variable as the select-string output
$ipv4address = select-string -path "C:\Users\Dwight Schrute\Documents\network_report.txt" -pattern IPv4

#outputs the IPv4 addresses
write-output #ipv4address

#removes the file that was created
remove-item -path "C:\Users\Dwight Schrute\Documents\network_report.txt"
