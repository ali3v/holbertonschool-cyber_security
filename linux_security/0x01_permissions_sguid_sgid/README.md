# 1. Create README.md in English
cat << 'EOF' > README.md
# Linux Permissions

This project is dedicated to understanding file and directory permissions in Linux, managing user groups, and exploring special permission modes such as SUID and SGID.

## 📖 Learning Objectives
By the end of this project, the goal is to be able to explain:
* **Permission Groups:** The three user-based permission groups in Linux (Owner, Group, Others).
* **Commands:** The usage of `chmod`, `sudo`, `su`, `chown`, `chgrp`, `id`, and `groups`.
* **Special Permissions:** The purpose of `setuid` and `setgid` in Linux file permissions and how to use them.
* **Differences:** The distinction between the `chown` and `chgrp` commands.
* **Umask:** What Umask is and how to use it effectively.
* **Security:** Best practices for managing file permissions and how to audit changes.

## 🛠 Requirements
* All scripts are tested on **Kali Linux**.
* The first line of all files must be exactly `#!/bin/bash`.
* All files must end with a new line.
* **Forbidden:** You are not allowed to use backticks, `&&`, or `||`.
* All files must be executable.
* Code should follow the **Betty** style.

## 📂 Repository Information
* **GitHub Repository:** holbertonschool-cyber_security
* **Project:** Linux Permissions
EOF
