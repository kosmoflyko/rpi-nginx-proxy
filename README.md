## Nginx reverse proxy for Docker on Raspberry Pi

Set URLs your sites in file sites.conf:

```bash
# Array of site URLs (space separated)
SITES_URL='site1.example.com site2.example.org'
# Array of downstream for sites
HTTP_DOWNSTREAMS=([0]='server1.com:8080' [1]='server2.org:8080')
# Enable HTTP to HTTPS redirect "yes" or "no"
IS_HTTPS_ONLY='yes'
```

And buld and run container image use command:

```bash
$docker-compose up -d
```
This command up two container: Nginx with reverse proxy  configuration and crond whit ACME client for get and periodic update SSL certificates from Letsecrypt.
