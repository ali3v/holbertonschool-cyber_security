# Content Discovery

Finding hidden resources on web applications - directories, files, endpoints that aren't linked but exist. Critical for thorough security assessments.

## Captured Flags

**0-flag.txt, 1-flag.txt** - Successfully discovered hidden content through various enumeration techniques.

## Discovery Techniques

**Directory Brute Forcing:**
- Using wordlists to find hidden directories
- Tools: Gobuster, Dirbuster, ffuf
- Common paths and patterns

**File Enumeration:**
- Discovering backup files, configs, logs
- Extensions: .bak, .old, .txt, .conf, .env
- Sensitive file exposure

**Endpoint Discovery:**
- API endpoint enumeration
- Hidden admin panels
- Development/staging environments

**Robots.txt & Sitemap Analysis:**
- Finding disallowed paths
- Analyzing site structure

## Tools Used

- **Gobuster** - Fast directory/file brute forcing
- **ffuf** - Web fuzzer for content discovery
- **Burp Suite** - Spider and content discovery tools
- **Wordlists** - SecLists, custom dictionaries
- Manual inspection and pattern analysis

## Methodology

1. Start with robots.txt, sitemap.xml
2. Run directory brute force with common wordlist
3. Fuzz for common file extensions
4. Analyze responses (200, 301, 403, etc.)
5. Recursively scan discovered directories
6. Document all findings

## Why This Matters

Forgotten or hidden content often contains:
- Backup files with source code
- Configuration files with credentials
- Admin panels with weak auth
- Development endpoints with less security
- Sensitive data that should be protected

In bug bounties and pentests, content discovery frequently leads to critical findings.

## Skills Applied

- Effective use of fuzzing tools
- Understanding HTTP status codes
- Wordlist selection and customization
- Pattern recognition
- Recursive enumeration techniques

Good content discovery often makes the difference between finding surface issues and discovering serious vulnerabilities.
