Find Uses Command line practice for beginner

1. Find and list all files in current and sub directories
   find | head
   find /root -name FindCommandExamples.txt


2. Search and list specific directory or path
   find /tmp | head


3. Find Files Using Name and Ignoring Case
   find / -iname findcommandexamples.txt


4. Find Directories Using Name
   find / -type d -name root


5. Use find to limit depth of directory search
   find /etc -maxdepth 1 -name "*.conf" | tail
   find /etc -maxdepth 2 -name "*.conf" | tail

6. Find all PHP Files in Directory
   find . -type f -name "*.php"

7. Find Files With 777 Permissions
   find . -type f -perm 0777 -print

8. Find Files Without 777 Permissions
   find . -type f ! -perm 777 | head

9. Find SGID Files with 644 Permissions
   find . -perm 0644 | head

10. Find Sticky Bit Files with 551 Permissions
   find / -perm 0551

11. Find SUID Files
   find . -perm /u=s | head

12. Find SGID Files
   find . -perm /g+s | head


13. Find Read Only Files
   find / -perm /u=r | head

14. Find Executable Files
   find . -perm /a=x | head

15. Find Files with 777 permissions and change permissions to 644
   find / -type f -perm 0777 -print -exec chmod 644 {} \;

16. Find Directories with 777 permissions and permissions to 755
   find . -type d -perm 777 -print -exec chmod 755 {} \;

17. Find and remove single File
   find . -type f -name "FindCommandExamples.txt" -exec rm -f {} \;

18. Find and remove Multiple File
   find . -type f -name "*.txt" -exec rm -f {} \;
      OR
   find . -type f -name "*.mp3" -exec rm -f {} \;

19. Find all Empty Files and directories
   find /tmp -type f -empty


20. File all Hidden Files
   find /tmp -type f -name ".*"

21. Find Single File Based on User
   find / -user root -name FindCommandExamples.txt


22. Find all Files Based on User
   find / -user root | head


23. Find all Files Based on Group
   find / -group root | head

24. Find Particular Files of User
   find / -user root -iname "*.txt" | head


25. Find Last 50 Days Modified or Accessed Files
   find / -mtime 50
   find / -atime 50

26. Find Last 50-100 Days Modified Files
   find / -mtime +50 -mtime -100 | head


27. Find Changed Files in Last 1 Hour
   find / -cmin -60 | head


28. Find Modified or Accessed Files in Last 1 Hour
   find / -mmin -60
   find / -amin -60

29. Find 15MB Files
   find / -size 15M

30. Find Size between 50MB – 100MB
   find / -size +50M -size -100M



31. Find and Delete 100MB Files
   find / -size +100M -exec rm -rf {} \;

32. Find Specific Files and Delete
   find / -type f -name *.mp3 -size +10M -exec rm {} \;
