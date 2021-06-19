sudo docker run --rm -it --rm -p 80:80 --name certbot \
        -v "/home/robert/docker/homeassistant/certificates:/etc/letsencrypt" \
        -v "/home/robert/docker/homeassistant/volumes/letsencrypt:/var/lib/letsencrypt" \
        -e URL=robertnator.duckdns.org \
        -e EMAIL=rwaddell91@googlemail.com \
        -e VALIDATION=http \
        -e DUCKDNSTOKEN=06f592bf-6673-46a8-8b3a-c0a8951a5d67 \
	certbot/certbot certonly --standalone -d robertnator.duckdns.org --preferred-challenges http-01 
#        linuxserver/swag renew –agree-tos

