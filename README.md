# 👥 User Management Automation Script

A simple yet powerful Bash script to automate **bulk user creation** on Linux systems like Amazon Linux AMI, CentOS, Ubuntu, etc. Ideal for system administrators and DevOps learners.

---

## 📂 Project Files

- `user_management.sh` → Main automation script
- `userlist.txt` → Sample file containing usernames (one per line)

---

## ✨ Features

- ✅ Bulk user creation from a text file
- 🔒 Secure random password generation using OpenSSL
- 🏠 Automatic home directory creation
- 🔄 Forces password change on first login
- 📝 Logs user creation details to `user_creation.log`
- 🐧 Tested on Amazon Linux 2 EC2 instance

---

## 🛠️ Requirements

- Linux system (tested on Amazon Linux AMI)
- `bash` shell
- `openssl` package
- `sudo` privileges

---

## 🚀 How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/user-management-automation.git
cd user-management-automation
```

### 2. Prepare the Username List
- Edit userlist.txt and add one username per line:
```
arjun
meera
rohan
sneha
...
```
- ⚠️ Use lowercase usernames only (no spaces or special characters).

### 3. Run the Script
- Make it executable:
```
chmod +x user_management.sh
```
- Then run:
```
./user_management.sh
```

### 4. Check Logs
- After execution, check user_creation.log for results:
```
cat user_creation.log
```
- Each log entry contains the username and generated password.
---

## 🔐 Security Tip
- After initial password delivery, consider deleting user_creation.log to avoid leaking credentials.
- Or modify the script to store encrypted password hashes only.

---

## 📚 Learnings & Use Cases
- Linux system administration

- Bash scripting

- EC2 user provisioning

- DevOps automation basics
---

## 👨‍💻 Author

Aniruddha Kharve

[GitHub](https://github.com/Aniruddhakharve) • [LinkedIn](https://linkedin.com/in/aniruddhakharve)

---

## 📜 License

This project is licensed under the MIT License.

---
