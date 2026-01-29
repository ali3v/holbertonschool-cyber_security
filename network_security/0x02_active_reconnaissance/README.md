# Active Reconnaissance

Direct interaction with targets to discover services, vulnerabilities, and attack vectors. Moving from passive gathering to active probing.

## Completed Challenges

**0-ports.txt** - Open port discovery  
Identifying accessible network services through port scanning.

**1-webserver.txt** - Web server enumeration  
Detecting web server type and version through banner grabbing and fingerprinting.

**2-injectable.txt** - Injection point identification  
Finding parameters vulnerable to injection attacks (SQL, command, etc.)

**3-database.txt** - Database fingerprinting  
Determining database type through error messages and behavior analysis.

**4-tables.txt** - Database structure enumeration  
Extracting database table names through injection or exploitation.

**5-hidden_dir.txt** - Hidden directory discovery  
Content discovery through fuzzing and brute forcing directory names.

Successfully captured flags from advanced active recon scenarios (100-102-flag.txt).

## Active Recon Techniques

Unlike passive recon, this involves direct target interaction:
- Port scanning (Nmap, Masscan)
- Service version detection
- Web application probing
- Vulnerability scanning
- Banner grabbing
- Directory/file fuzzing

## Tools Used

- **Nmap** - Port scanning and service enumeration
- **SQLmap** - Database exploitation and fingerprinting
- **Gobuster/Dirbuster** - Directory brute forcing
- **Burp Suite** - Web application probing
- **Netcat** - Banner grabbing and manual service interaction
- Custom scripts for specific enumeration tasks

## Methodology

Standard active recon workflow:
1. **Host Discovery** - Identify live systems
2. **Port Scanning** - Find open ports and services
3. **Service Enumeration** - Determine versions and configurations
4. **Vulnerability Identification** - Test for known weaknesses
5. **Documentation** - Map findings for exploitation phase

## Key Skills

- Effective use of Nmap for various scan types
- Service fingerprinting and banner analysis
- Web content discovery techniques
- Understanding service behavior
- Balancing speed vs stealth
- Interpreting scan results accurately

## Active vs Passive

Active reconnaissance trades stealth for information:
- **Pros:** More detailed, direct verification, finds hidden resources
- **Cons:** Detectable, may trigger alerts, requires authorization
- **Use:** Only in authorized testing environments

## Real-World Application

These techniques are core to:
- Penetration testing engagements
- Vulnerability assessments
- Network security audits
- CTF competitions (HackTheBox, TryHackMe)

Always ensure proper authorization before active scanning. Unauthorized port scanning can be illegal depending on jurisdiction.

## Results

The gathered intelligence (open ports, services, injection points, database details, hidden directories) forms the foundation for the exploitation phase. Good enumeration is the difference between successful compromise and wasting time on dead ends.
