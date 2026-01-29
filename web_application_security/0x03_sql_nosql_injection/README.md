# SQL & NoSQL Injection

Database exploitation through injection vulnerabilities. Learned both manual techniques and automated tools for extracting data, bypassing authentication, and exploiting weak input validation.

## Completed Challenges

This directory contains flags captured from various SQL and NoSQL injection exercises:

- **0-vuln.txt** - Initial vulnerability identification
- **1-7 flag files** - Successfully exploited injection points

Each flag represents a different injection scenario - some SQL-based, others targeting NoSQL databases like MongoDB.

## Techniques Used

**SQL Injection:**
- Union-based injection for data extraction
- Boolean-based blind injection
- Time-based blind techniques
- Authentication bypass via SQL logic manipulation

**NoSQL Injection:**
- MongoDB operator injection ($ne, $gt, etc.)
- Authentication bypass in NoSQL systems
- JSON payload manipulation
- Query logic exploitation

## Tools & Methods

- Manual injection testing (Burp Suite, browser dev tools)
- SQLmap for automated SQL exploitation
- NoSQLmap for MongoDB attacks
- Custom Python scripts for specific payloads
- Payload encoding and obfuscation techniques

## Key Learnings

Database injections remain prevalent despite being well-known. The key is understanding:
- How queries are constructed on the backend
- Where user input gets incorporated
- Different database syntaxes and operators
- Bypassing basic filters and WAF rules

Both manual and automated approaches have their place - tools are fast but manual testing helps understand the actual vulnerability.

## Real-World Application

These skills apply directly to:
- Web application penetration testing
- Bug bounty hunting
- Security code review
- Understanding defensive measures (prepared statements, input validation)

The defensive side is equally important - knowing how to exploit these flaws helps build better applications.
