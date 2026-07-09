#!/bin/bash


#Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

print_succes() {echo -e "${GREEN}✅ $1${NC}"; }
print_warning() {echo -e "${YELLOW⚠️ $1${NC}";}
print_error() {echo -e "${RED❌ $1${NC}";}

if [ -d ".git" ]; then
print_error "This folder has already a Git repository Exiting."
exit 1
fi

if [! -f ".gitignore" ]; then
echo "No .gitignore found Creating a basic one ..."
cat > .gitigonre << 'EOF'
#Python
--pycache--/
*.pyc
*.pyo
*.pyd
.Python
env/
venv/
*.so
*.egg
*.egg-info/
dist/
build/

#Java
*.class
*.jar
*.war
*.ear
target/
*.log

#C/C++
*.o
*.exe
*.out
*.app

#macOS
.DS_Store

#Linux
*.tmp
*.swp

#IDE
.vscode/
.ideal/
*.iml
EOF
 print_success ".gitignore created."
else
print_success ".gitignore already exists."
fi

#The repository URL
echo ""
echo -n "Enter your GitHub repository URL: "
read -r REPO_URL

if [ -z "$REPO_URL" ]; then
print_error "No URL provided.
Exiting."
exit 1
fi

#Initialize Git
git init
print_success "Git initialized."

#Add all the Files
git add .
print_success "Files added."

#Commit
echo -n "Commit message: "
read -r COMMIT_MSG
COMMIT_MSG-${COMMIT_MSG:-"Initial commit"}
git commit -m "$COMMIT_MSG"
print_success "Committed."

#Add remote
git remote add origin "$REPO_URL"
print_success "Rempte added."

#Push
git branch -M main
git push -u origin main
print_success " Pushed to GitHub"

echo""
print_success "Done; Your project is live at: $REPO_URL "
