# shell

###图片切割去除水印 crop_image.sh
###备份脚本 backup.sh
备份脚本需要修改一下几个参数，需要配合crontab使用。

Backup_Home="/home/backup/" #####备份文件存放目录
MySQL_Dump="/usr/local/mysql/bin/mysqldump" ####mysqldump路径，如果是mariadb替换/usr/local/mysql为/usr/local/mariadb

Backup_Dir=("/home/wwwroot/vpser.net" "/home/wwwroot/lnmp.org") ##########要备份的目录，目录用双引号括起来，多个目录空格隔开，如前面的例子

Backup_Database=("lnmp" "vpser") ########要备份的数据库，前面有例子

MYSQL_UserName='root' ####不用说了，MySQL root账号
MYSQL_PassWord='yourrootpassword' ##### MySQL root密码

Enable_FTP=0 #####是否启用ftp备份，0 启用，非0 不启用

FTP_Host='1.2.3.4'
FTP_Username='vpser.net'
FTP_Password='yourftppassword'
FTP_Dir="backup" #########ftp服务器上存放备份的目录


###nginx日志切割脚本 cut_nginx_logs.sh
使用方法：<http://www.vpser.net/manage/cut-nginx-log-files.html>

###Denyhosts SSH防护安装脚本 denyhosts.sh
denyhosts安装脚本，保证SSH安全，自动屏蔽破解SSH的IP。安装方法直接运行 ./denyhosts.sh 回车自动安装，不需要干预，如想了解该程序的相关介绍可以看一下：<http://www.vpser.net/security/denyhosts.html>

###denyhosts_removeip.sh 
Denyhosts删除被屏蔽IP较麻烦，可以使用这个工具来删除被denyhosts屏蔽的ip的工具 ./denyhosts_removeip.sh 要删除的ip，不加ip的话会提示用法

###fail2ban SSH防护安装脚本 fail2ban.sh
fail2ban安装脚本，保证SSH安全，自动屏蔽破解SSH的IP。安装方法直接运行 ./fail2ban.sh 回车自动安装。

###PHP禁用函数删除工具 remove_disable_function.sh
运行 ./remove_disable_function.sh
作用：<http://bbs.vpser.net/thread-7649-1-1.html> 运行会有具体用法

###MySQL/MariaDB 重置root密码的工具 remove_disable_function.sh
MySQL/MariaDB 重置root密码的工具，直接运行 ./reset_mysql_root_password.sh

###PHP-FPM 502检查重启工具 check502.sh
该工具一般需要配合crontab进行使用，如没5分钟检测是否报502错误，并自动重启PHP-FPM，*/5 * * * * 文件所在全路径/check502.sh，[crontab教程](http://www.vpser.net/manage/crontab.html)