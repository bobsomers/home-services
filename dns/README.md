# DNS

The PowerDNS Recursor is the entry point DNS server which has port 53 exposed.
For local network domains, it recurses to the PowerDNS Authoritative server,
which is configured to use sqlite as its backend. For other domains, it forwards
to the cloudfared container which proxies to Cloudflare's DNS over HTTPs
resolvers. The final container runs PowerDNS-Admin, providing a web UI for
adminstration of local domains on port 80.
