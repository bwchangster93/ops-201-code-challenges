get-process | sort-object CPU -descending
get-process | sort-object ID -descending
get-process | sort-object WS -descending | select-object -first 5
start-process "https://owasp.org/www-project-top-ten/"


#loop for opening notepad 10 times
#number of times to open
$numberoftimes = 10

#loop
for ($i - 1: $i -le $numberoftimes; $i++) {
  start-process -filepath "C:\ProgramData\Microsoft\Windows\Start Menu\Accessories\Notepad"
}

#Close all notepad instances

stop-process -name Notepad -force

#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge

stop-process -id 6004
