# 🚀 Git Pusher

> **A simple Bash script that automates pushing new Git projects to GitHub with a single command.**

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Linux%20%7C%20macOS-lightgrey" alt="Platform"/>
  <img src="https://img.shields.io/badge/Shell-Bash-blue?logo=gnubash&logoColor=white" alt="Shell"/>
  <img src="https://img.shields.io/badge/Status-Working-brightgreen" alt="Status"/>
  <img src="https://img.shields.io/badge/License-MIT-lightgrey" alt="License"/>
</p>

---

## 📚 Table of Contents

- [📌 Overview](#-overview)
- [✨ Features](#-features)
- [🚀 Installation](#-installation)
- [💻 Usage](#-usage)
- [📁 Project Structure](#-project-structure)
- [🛠️ Customization](#️-customization)
- [📄 License](#-license)
- [🤝 Contributing](#-contributing)
- [⭐ Support](#-support)

---

## 📌 Overview

**Git Pusher** is a lightweight Bash script that automates the entire Git workflow for a new project.

Instead of manually running:

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin <repository-url>
git push -u origin main
```

Simply execute:

```bash
git.sh
```

The script will:

- 📄 Create a `.gitignore` if one doesn't exist.
- 🔗 Ask for your GitHub repository URL.
- 📝 Ask for an optional commit message.
- ⚙️ Initialize Git.
- 📦 Stage all files.
- ✅ Create the first commit.
- 🌐 Connect your GitHub repository.
- 🚀 Push everything to GitHub.

Everything is completed in less than a minute.

---

## ✨ Features

| Feature | Description |
|----------|-------------|
| 🚀 One Command | Push an entire project with a single command |
| 📄 Auto `.gitignore` | Creates a basic `.gitignore` automatically if missing |
| 💬 Interactive | Prompts for repository URL and commit message |
| 🛡️ Safe | Prevents overwriting existing Git repositories |
| 📦 Portable | Run from any project directory |
| ⚡ Fast | Saves time by automating repetitive Git commands |
| 🖥️ Cross-Shell | Works with Bash on Linux and macOS |

---

## 🚀 Installation

### 1. Clone the repository

```bash
git clone https://github.com/A7mad-PSE/Git-Pusher.git
cd Git-Pusher
```

---

### 2. Install the script

```bash
mkdir -p ~/bin
cp git.sh ~/bin/
chmod +x ~/bin/git.sh
```

---

### 3. Add `~/bin` to your PATH

#### Bash

```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

#### Zsh

```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

#### Fish

```bash
echo 'set -gx PATH $HOME/bin $PATH' >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```

---

### 4. Verify Installation

```bash
which git.sh
```

Expected output:

```text
/home/username/bin/git.sh
```

---

## 💻 Usage

Navigate to your project:

```bash
cd /path/to/your/project
```

Run:

```bash
git.sh
```

Example:

```text
📄 No .gitignore found. Creating a basic one...
✅ .gitignore created.

🔗 Enter your GitHub repository URL:
https://github.com/A7mad-PSE/MyProject.git

📝 Commit message (default: "Initial commit"):

✅ Git initialized.
✅ Files added.
✅ Commit created.
✅ Remote added.
✅ Pushed successfully!

🎉 Done! Your project is now available on GitHub.
```

---

## 📁 Project Structure

```text
Git-Pusher/
├── git.sh          # Main automation script
├── README.md       # Documentation
└── .gitignore      # Generated automatically if missing
```

---

## 🛠️ Customization

| Want to Change | Where |
|----------------|------|
| Default `.gitignore` template | Edit the `cat > .gitignore << 'EOF'` section |
| Default commit message | Change `COMMIT_MSG=${COMMIT_MSG:-"Initial commit"}` |
| Default branch (`main`) | Replace `git branch -M main` with `git branch -M master` |
| Add more ignored files | Update the `.gitignore` template |

---

## 📄 License

This project is licensed under the **MIT License**.

Feel free to use, modify, and distribute it.


---

## 🤝 Contributing

Contributions are welcome!

If you have ideas for improvements:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Commit your work.
5. Open a Pull Request.

Bug reports and feature requests are also appreciated.

---

## ⭐ Support

If you found this project useful:

- ⭐ Star this repository
- 🍴 Fork it
- 📢 Share it with others

Your support helps improve the project and motivates future development.

---

<p align="center">
Made with ❤️ by Ahmad Hasan
</p>
