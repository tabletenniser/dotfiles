#!/bin/sh
echo BEGIN `date` >> /var/log/backup.log
# -a: archive mode - perserve timestamp, file permission, symlink and copy recursively; -H: perserve hard link
# -v: verbose mode; -n: dry run; -h: human readable
# --delete: remove file if it exists in destination but not in source, rsync will leave those files along o.w
/usr/bin/caffeinate -s /usr/bin/rsync -aHhv --progress /Volumes/ZW/ /Volumes/NTFS_RW_ZW/ZW_BACKUP >> /var/log/backup.log
echo END `date` >> /var/log/backup.log
