source ./.env

docker run --rm -it --rm -p 80:80 --name certbot \
        -v "$(pwd)/certificates:/etc/letsencrypt" \
        -v "$(pwd)/certificates/letsencrypt_volume:/var/lib/letsencrypt" \
        -e URL=$DUCKDNS_DOMAIN \
        -e EMAIL=$LETSENCRYPT_EMAIL \
        -e VALIDATION=http \
        -e DUCKDNSTOKEN=$DUCKDNS_TOKEN \
        certbot/certbot certonly --standalone -d $DUCKDNS_DOMAIN --preferred-challenges http-01 --force-renewal

docker stop home-assistant_nginx
docker rm home-assistant_nginx
docker-compose up -d