docker run -it -p 8000:80 -v  /home/rsletten/pupperware/volumes/puppetdb/ssl:/etc/puppetlabs/puppet/ssl \
  -e PUPPETDB_HOST=localhost \
  -e PUPPETDB_PORT=8081 \
  -e PUPPETDB_SSL_VERIFY=/home/rsletten/pupperware/volumes/puppetdb/ssl/certs/ca.pem \
  -e PUPPETDB_KEY=/home/rsletten/pupperware/volumes/puppetdb/ssl/private_keys/puppetdb.pem \
  -e PUPPETDB_CERT=/home/rsletten/pupperware/volumes/puppetdb/ssl/public_keys/puppetdb.pem \
  -e INVENTORY_FACTS='Hostname,fqdn, IP Address,ipaddress' \
  -e ENABLE_CATALOG=True \
  -e GRAPH_FACTS='architecture,puppetversion,osfamily' \
  puppetboard
