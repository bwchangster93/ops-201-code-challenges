# Enable File and Printer Sharing

set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

# Allow ICMP traffic

netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 enabled=yes

# Enable Remote Management

enable-PSRemoting -force

# Remove bloatware

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable Hyper-V

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
Set-SmbClientConfiguration -EnableSMB1Protocol $false -Force
