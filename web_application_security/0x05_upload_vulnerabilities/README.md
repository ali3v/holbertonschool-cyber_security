# Upload Vulnerabilities

Exploiting file upload functionality - one of the most dangerous web vulnerabilities when improperly secured. From remote code execution to complete server compromise.

## Challenges

**0-target.txt** - Initial target identification  
Locating and analyzing file upload functionality.

**1-flag.txt** - Successful exploitation  
Achieved code execution or bypassed upload restrictions.

## Attack Vectors

**Unrestricted File Upload:**
- Uploading web shells (PHP, ASP, JSP)
- Achieving remote code execution
- Server-side script execution

**Filter Bypass Techniques:**
- MIME type manipulation
- Extension tricks (.php.jpg, .phtml, etc.)
- Null byte injection
- Content-Type header spoofing
- Magic byte modification

**Path Traversal:**
- Controlling upload destination
- Overwriting critical files
- Directory traversal in filenames

## Common Upload Vulnerabilities

1. **RCE via Web Shell** - Uploading executable scripts
2. **Client-Side Validation Only** - Bypassing JavaScript checks
3. **Insufficient Content Validation** - Trusting file extensions
4. **Unrestricted File Types** - No whitelist/blacklist
5. **Predictable Upload Locations** - Easy to access uploaded files

## Exploitation Process

1. Identify upload functionality
2. Test with legitimate file first
3. Attempt direct shell upload
4. If blocked, enumerate restrictions
5. Craft payload to bypass filters
6. Access uploaded file
7. Execute code and achieve objective

## Tools & Techniques

- **Burp Suite** - Intercepting and modifying upload requests
- **Web shells** - PHP, ASP, JSP reverse shells
- **File type manipulation** - Hex editors for magic bytes
- **Payload encoding** - Bypassing content filters

## Real-World Impact

File upload vulnerabilities frequently lead to:
- Complete server compromise
- Data theft and manipulation
- Pivot point for lateral movement
- Denial of service
- Defacement

Rated as high/critical severity in most security assessments.

## Defense Mechanisms Encountered

- File extension whitelisting
- Content type validation
- Magic byte verification
- File size limits
- Antivirus scanning
- Randomized filenames and paths

Understanding both attack and defense is crucial for secure file upload implementation.

## Skills Developed

- Filter bypass techniques
- Web shell creation and usage
- Understanding server-side execution
- File upload security best practices
- Creative problem-solving when encountering restrictions

File upload exploitation is a fundamental pentesting skill - properly securing uploads is equally important for developers.
