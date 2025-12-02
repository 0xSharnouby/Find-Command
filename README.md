# 📘 Linux `find` Command --- Practice Guide

A comprehensive collection of practical `find` command examples for
beginners and intermediate Linux users.\
This guide helps you search files, directories, permissions, timestamps,
sizes, and execute actions.

------------------------------------------------------------------------

## 🚀 Features

-   30+ practical `find` command examples\
-   Covers permissions, sizes, dates, ownership, recursion, deletion,
    and more\
-   Beginner-friendly and easy to understand\
-   Useful for Linux training, notes, or DevOps practice

------------------------------------------------------------------------

# 📂 Examples

## **1. Find all files in current & subdirectories**

``` bash
find | head
find /root -name "FindCommandExamples.txt"
```

## **2. Search inside a specific directory**

``` bash
find /tmp | head
```

## **3. Find files by name (case-insensitive)**

``` bash
find / -iname "findcommandexamples.txt"
```

## **4. Find directories**

``` bash
find / -type d -name "root"
```

## **5. Limit search depth**

``` bash
find /etc -maxdepth 1 -name "*.conf" | tail
find /etc -maxdepth 2 -name "*.conf" | tail
```

## **6. Find all PHP files**

``` bash
find . -type f -name "*.php"
```

## **7. Find files with 777 permissions**

``` bash
find . -type f -perm 0777 -print
```

## **8. Find files without 777 permissions**

``` bash
find . -type f ! -perm 0777 | head
```

## **9. Find SGID files**

``` bash
find . -perm 2644 | head
```

## **10. Find sticky-bit files**

``` bash
find / -perm 1551
```

## **11. Find SUID files**

``` bash
find . -perm /4000 | head
```

## **12. Find SGID files**

``` bash
find . -perm /2000 | head
```

## **13. Find read-only files**

``` bash
find / -perm /u=r | head
```

## **14. Find executable files**

``` bash
find . -perm /a=x | head
```

## **15. Change file permissions (777 → 644)**

``` bash
find / -type f -perm 0777 -print -exec chmod 644 {} \;
```

## **16. Change directory permissions (777 → 755)**

``` bash
find . -type d -perm 0777 -print -exec chmod 755 {} \;
```

## **17. Delete a single file**

``` bash
find . -type f -name "FindCommandExamples.txt" -exec rm -f {} \;
```

## **18. Delete multiple files**

``` bash
find . -type f -name "*.txt" -exec rm -f {} \;
find . -type f -name "*.mp3" -exec rm -f {} \;
```

## **19. Find empty files**

``` bash
find /tmp -type f -empty
```

## **20. Find hidden files**

``` bash
find /tmp -type f -name ".*"
```

## **21. Find file owned by a user**

``` bash
find / -user root -name "FindCommandExamples.txt"
```

## **22. Find all files of a user**

``` bash
find / -user root | head
```

## **23. Find files by group**

``` bash
find / -group root | head
```

## **24. Find user's text files**

``` bash
find / -user root -iname "*.txt" | head
```

## **25. Find files modified/accessed 50 days ago**

``` bash
find / -mtime 50
find / -atime 50
```

## **26. Find files modified between 50--100 days**

``` bash
find / -mtime +50 -mtime -100 | head
```

## **27. Find files changed in last hour**

``` bash
find / -cmin -60 | head
```

## **28. Find files modified or accessed in last hour**

``` bash
find / -mmin -60
find / -amin -60
```

## **29. Find 15MB files**

``` bash
find / -size 15M
```

## **30. Find files size 50--100MB**

``` bash
find / -size +50M -size -100M
```

## **31. Find & delete files \> 100MB**

``` bash
find / -size +100M -exec rm -rf {} \;
```

## **32. Find and delete large MP3 files**

``` bash
find / -type f -name "*.mp3" -size +10M -exec rm {} \;
```

------------------------------------------------------------------------

# 🤝 Contributing

Pull requests are welcome!\
If you'd like to add more examples, fix errors, or improve formatting,
feel free to contribute.

------------------------------------------------------------------------


