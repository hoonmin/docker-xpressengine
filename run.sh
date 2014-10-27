#/bin/sh
docker run -d -t --link mariadb:mariadb -p 8080:80 hoonmin/xpressengine
