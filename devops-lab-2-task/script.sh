#!/bin/bash
# 8.  Update your bash script to delete fol_1, fol_2, fol_2 when it starts
rm -r fol_1/ fol_2/
#1.  Make a folder to contain this week's lab called "devops-lab-2-task"
mkdir devops-lab-2-task
# 2.  Use the cd command to navigate to this folder in your terminal (subsequent steps should be completed in this folder)
cd devops-lab-2-task
# 3.  Create a bash script called "script.sh" that will create 2 folders called fol_1, fol_2. (Don't forget your shebang at the top of the script.sh)
mkdir fol_1 fol_2
# 4.  Update your script to create the following files in fol_1: 1_1.txt, 1_2.txt, 1_3.txt
touch fol_1/1_1.txt fol_1/1_2.txt fol_1/1_3.txt
# 5.  Update your script to create the following files in fol_2: 2_1.txt, 2_2.txt, 2_3.txt
touch fol_2/2_1.txt fol_2/2_2.txt fol_2/2_3.txt
# 6.  Create a .gitignore file to ignore fol_1, fol_2
touch .gitignore && echo fol_1/ >> .gitignore && echo fol_2/ >> .gitignore
# 7.  Create a new git project on GitHub and commit and push your files to GitHub from your terminal
# The following is commented because it shouldn't be part of the script, but added to demonstrate completion.
# git init
# git add *
# git commit -m "first commit"
# git branch -M main
# git remote add origin https://github.com/lmartins18/devops_week2_lab.git
# git push -u origin main
# 9.  Commit the newly updated bash script and push your new script to GitHub
git add script.sh && git commit -m "updated bash script: " && git push
# 10.  Update the job so all the files ending with _1.txt and _3.txt have only read and write permissions by the you (being the user who created the file) in each of the folders
chmod 600 fol_1/*_1.txt fol_1/*_3.txt fol_2/*_1.txt fol_2/*_3.txt
# 11.  Update the job so all the files ending with _2.txt have read, write, and executed permissions by any user on your computer (being the user who created the file) in each of the folders
chmod 777 fol_1/*_2.txt fol_2/*_2.txt
# 12.  Create a file called README.md root directory of the GitHub repository and add a heading to the README.md by adding the following it # Week 2 Lab – Bash & Git
echo "# Week 2 Lab – Bash & Git" >> ../README.md
# 13.  On a new line add your name and student number to the README.MD file
echo "Luis Martins - x23194456" >> ../README.md
# 14.  Add a link to your GitHub repository using: [title](https://www.example.com) (replace title with a title for the link and https://www.example.com with the link to your GitHub repository.
echo "[Luis's Github Repository](https://github.com/lmartins18/devops_week2_lab)" >> ../README.md
# 15.  Add two new lines one with --- and the other with: To run the script.sh run: `bash script.sh`
echo "---" >> ../README.md
echo "To run the script.sh run: \`bash script.sh\`" >> ../README.md
# 16.  Commit the readme file and push your readme.md file to GitHub
git add README.md && git commit -m "new README.md" && git push
# 17.  Update the job to show a message in the terminal saying "Job completed" when the job has finished running
echo "Job completed"
# 18.  Commit the newly updated bash script and push your new script to GitHub
git add script.sh && git commit -m "updated script.sh" && git push
# 19.  Now roll the git repository back to step 18 and update the repository on github.
git reset --hard HEAD^ && git push