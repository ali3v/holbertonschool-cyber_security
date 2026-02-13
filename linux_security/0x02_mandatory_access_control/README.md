# Linux Security: Mandatory Access Control (MAC)

This project delves into the concepts and implementations of Mandatory Access Control (MAC) in Linux systems. It contrasts MAC with Discretionary Access Control (DAC) and provides practical experience with the two primary MAC implementations: **SELinux** (Security-Enhanced Linux) and **AppArmor**.

## 📖 Learning Objectives
By the end of this project, the goal is to be able to explain and demonstrate:

* **MAC Fundamentals:**
    * The difference between MAC and DAC.
    * The concept of "Least Privilege."
    * The role of Security Policies.

* **SELinux:**
    * How SELinux enforces MAC policies.
    * Understanding **Labels** and **Contexts** (User, Role, Type, Level).
    * **Type Enforcement (TE)**, Role-Based Access Control (RBAC), and Multi-Level Security (MLS).
    * Management commands: `getenforce`, `setenforce`, `chcon`, `restorecon`, `semanage`.
    * Troubleshooting using Audit Logs (`/var/log/audit/audit.log`).

* **AppArmor:**
    * How AppArmor profiles work (Path-based vs. Label-based).
    * Enforcement modes (Enforce vs. Complain).
    * Reloading and managing profiles.

* **Linux Capabilities:**
    * Breaking down root privileges into specific capabilities.

## 🛠 Requirements
* **Operating System:** Scripts are tested on **Kali Linux** (and/or RedHat-based distributions for specific SELinux tasks).
* **Scripting:** All scripts must start with `#!/bin/bash`.
* **Style:** Code should follow the **Betty** style guidelines.
* **Permissions:** All scripts must be executable.
* **Constraints:** No use of backticks (`), `&&`, or `||` in specific tasks.

