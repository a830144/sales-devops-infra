docker run -d \
  --name mysql-order-sales \
  --network mynet \
  --cpus="0.25" \
  --memory="512m" \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=orderdb \
  -p 3319:3306 \
  -v mysql_order_data:/var/lib/mysql \
  mysql:8.0