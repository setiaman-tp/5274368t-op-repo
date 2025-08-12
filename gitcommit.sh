
#!/bin/bash

# Check if commit message is passed
if [ -z "$1" ]; then
  echo "❌ Commit message required."
  echo "Usage: ./git-deploy.sh \"Your commit message here\""
  read -p "Press ENTER to exit..."
  exit 1
fi

# Git operations
git add .
git commit -m "$1"
git push
if [ $? -eq 0 ]; then
  echo "✅ Changes committed and pushed successfully."
else
  echo "❌ Failed to commit or push changes."
  
fi

# Pause at the end
echo "✅ Git operations complete."
read -p "Press ENTER to close..."
