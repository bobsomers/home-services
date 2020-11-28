# DNS

The PowerDNS Recursor is the entry point DNS server which has port 53 exposed.
For local network domains, it recurses to the PowerDNS Authoritative server,
which is configured to use sqlite as its backend. The third container runs
PowerDNS-Admin, providing a web UI for adminstration on port 80.
