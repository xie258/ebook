use mysql;
select host, user from user ;
-- 因为mysql版本是5.7，因此新建用户为如下命令：
-- create user root identified by '123456' ;
-- 将docker_mysql数据库的权限授权给创建的docker用户，密码为123456：
-- grant all on docker_mysql.* to root@localhost identified by '123456' with grant option ;
grant all privileges on *.* to root@'%' identified by "123456";
-- update mysql.user set authentication_string=password('123456') where user='root' and Host = 'localhost' ;
-- 这一条命令一定要有：
flush privileges ;