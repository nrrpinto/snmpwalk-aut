This is a Shell Script to automate the use of snmpwalk to iterate through IPs, MIB Trees and COMMUNITY words.

INPUT:
$1 - List of IPs
$2 - List of MIB Trees
$3 - List of Community Names

Sintax:
./snmpwalk-aut.sh <IP list> <MIB list> <Community List>

Example 1:
./snmpwalk-aut.sh snmp-ips-htb.txt snmp-mib.txt snmp-community.txt

You should generate your own lists to adapt the search for your needs.