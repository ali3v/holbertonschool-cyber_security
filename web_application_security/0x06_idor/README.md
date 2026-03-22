CyberBank Security Assessment Report
Author: Elnur Aliyev
Date: 03.23.2026
Target: CyberBank Web Application (web0x06.hbtn)

1. Introduction
The purpose of this security assessment was to evaluate the CyberBank web application for potential security vulnerabilities, with a specific focus on access control mechanisms and business logic implementation. The assessment successfully identified critical Insecure Direct Object Reference (IDOR) vulnerabilities and a severe 3D Secure bypass flaw that could allow an attacker to compromise sensitive user financial data and perform unauthorized transactions.

2. Methodology
The security assessment was conducted using manual testing techniques combined with web proxy tools.

Tools Used: Burp Suite Professional/Community, Browser Developer Tools (Network/Console).

Approach: The methodology involved mapping the application's core functionalities (upgrades, profile viewing), intercepting HTTP requests, and manipulating client-side parameters (such as customer_id and account_id) to test for authorization flaws and business logic validation on the server side.

3. Vulnerability Details
Vulnerability 1: IDOR on Customer Information API
Description: The application uses an insecure direct object reference in the /api/customer/info/ endpoint. The server fails to validate if the currently authenticated user has the rights to access the requested customer_id.

Impact: High. An attacker can enumerate customer IDs to view sensitive personal and banking information (e.g., balance, account numbers) of other users.

Reproduction Steps:

Log in to the application as a standard user.

Intercept the GET request to /api/customer/info/[YOUR_ID].

Change the [YOUR_ID] parameter in the URL to the target user's ID (e.g., 20e13cbf1071438ba214b2e96f84704d).

Forward the request. The server responds with the target's private information.

Evidence:

Request/Response Snippet: [Bura birinci tapşırıqdakı JSON cavabını əlavə et]

Screenshot: [Bura ekran görüntüsü əlavə et]

Vulnerability 2: IDOR on Card Information API
Description: Similar to the customer info endpoint, the POST /api/cards/info endpoint relies solely on the cards_id provided in the JSON body without checking ownership.

Impact: Critical. Exposure of full credit card numbers, expiration dates, and CVV codes belonging to other customers.

Reproduction Steps:

Capture a valid request to /api/cards/info.

Modify the JSON payload replacing your cards_id with the victim's cards_id (e.g., "9de7fd8c155c447cb8de176a6a667700").

The server returns the full, unmasked credit card details of the victim.

Evidence:

Request/Response Snippet: [Bura CVV və kart nömrəsi olan JSON-u əlavə et]

Vulnerability 3: 3D Secure (OTP) Authentication Bypass / Business Logic Flaw
Description: The 3D Secure payment confirmation process is vulnerable to parameter manipulation. The OTP validation endpoint trusts the sender_id or account_id provided in the client's POST request rather than relying on a secure, server-side session tied to the pending transaction.

Impact: Critical. An attacker can initiate a payment using a victim's stolen card details (obtained via Vuln 2) and bypass the OTP verification by supplying their own user ID during the confirmation step. The funds are deducted from the victim, but the OTP is verified against the attacker's account.

Reproduction Steps:

Initiate a payment on the /upgrade page using the victim's card details.

When redirected to the OTP page, enter any dummy OTP code.

Intercept the POST request sent upon clicking "Confirm".

In the JSON payload, replace the victim's ID parameters with your own attacker ID.

Forward the request. The transaction completes successfully.

Evidence:

Request Snippet: [Bura dəyişdirdiyin o sonuncu POST payload-unu əlavə et]

4. Recommendations
To remediate these critical vulnerabilities, the CyberBank development team should implement the following:

Implement Robust Access Controls: Stop relying on client-provided IDs for data retrieval. The server must always verify if the authenticated session token matches the owner of the requested resource (Customer ID or Card ID).

Server-Side State Management for Transactions: For the 3D Secure process, do not accept account identifiers from the client during the OTP confirmation step. The pending transaction, the card being charged, and the required OTP must be securely linked on the backend.

Indirect Object References: Replace predictable or guessable IDs with complex, random identifiers (UUIDs), and map them internally to the user's session.

5. Conclusion
The current implementation of the CyberBank application contains severe access control and business logic flaws. By chaining these IDOR vulnerabilities, an attacker can completely compromise user accounts and commit financial fraud. Addressing the recommendations above should be an immediate priority to secure user data and restore the integrity of the payment system.
