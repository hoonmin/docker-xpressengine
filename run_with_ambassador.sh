#/bin/sh
docker run -d -t --link mariadb_ambassador:mariadb -p 8080:80 hoonmin/xpressengine
