# Passive Reconnaissance

Information gathering without directly interacting with the target. Using public sources and DNS records to build a profile before active testing.

## Techniques Practiced

**0-whois.sh** - WHOIS lookups  
Domain registration details, ownership info, contact data. First step in understanding target infrastructure.

**1-a_record.sh** - DNS A record enumeration  
Resolving domain names to IP addresses. Identifying where services are hosted.

**2-mx_record.sh** - Mail server discovery  
Finding email infrastructure through MX records. Useful for social engineering recon.

**3-txt_record.sh** - TXT record analysis  
Extracting metadata from DNS TXT records (SPF, verification tokens, etc.)

**4-dig_all.sh** - Complete DNS enumeration  
Pulling all available DNS records for comprehensive mapping.

**5-subfinder.sh** - Subdomain discovery  
Finding subdomains without active scanning. Expanding attack surface knowledge.

## Captured Flags

Successfully completed advanced recon challenges (100-102-flag.txt) involving real-world reconnaissance scenarios.

## Passive Recon Methodology

The approach here is staying under the radar:
1. Start with public records (WHOIS, DNS)
2. Use search engines and public databases
3. Identify subdomains through certificate transparency
4. Map infrastructure without touching target systems
5. Build comprehensive target profile

## Tools & Resources

- `whois` - Domain registration lookup
- `dig` / `nslookup` - DNS querying
- `subfinder` - Subdomain enumeration via passive sources
- Certificate transparency logs
- Public DNS databases

## Skills Developed

- OSINT (Open Source Intelligence) gathering
- DNS analysis and interpretation
- Infrastructure mapping
- Understanding domain architecture
- Recon automation with bash scripts

## Why Passive Matters

Passive recon is crucial because:
- Doesn't trigger IDS/IPS alerts
- Legal in most contexts (public information)
- Provides foundation for active testing
- Often reveals forgotten/unmonitored assets
- Essential for bug bounty and red team ops

Good reconnaissance is 50% of successful penetration testing. The more you know before touching the target, the better.

## Real-World Application

These techniques apply directly to:
- Pre-engagement reconnaissance
- Bug bounty target research
- Red team operations planning
- Threat intelligence gathering

The holbertonschool_report.md file contains detailed analysis from applying these techniques to an actual target.
