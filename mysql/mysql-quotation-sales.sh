docker run -d \
  --name mysql-quotation-sales \
  --network mynet \
  --cpus="0.25" \
  --memory="512m" \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=quotationdb \
  -p 3318:3306 \
  -v mysql_quotation_data:/var/lib/mysql \
  mysql:8.0