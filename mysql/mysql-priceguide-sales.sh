docker run -d \
  --name mysql-priceguide-sales \
  --network mynet \
  --cpus="0.25" \
  --memory="512m" \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=priceguidedb \
  -p 3317:3306 \
  -v mysql_priceguide_data:/var/lib/mysql \
  mysql:8.0