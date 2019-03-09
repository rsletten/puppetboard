docker run -it -p 8000:80 --network='pupperware_default' -v /home/rsletten/pupperware/volumes/puppetdb/ssl:/etc/puppetlabs/puppetdb/ssl \
  -e PUPPETDB_HOST=puppetdb \
  -e PUPPETDB_PORT=8081 \
  -e PUPPETDB_SSL_VERIFY=/etc/puppetlabs/puppetdb/ssl/certs/ca.pem \
  -e PUPPETDB_KEY=/etc/puppetlabs/puppetdb/ssl/private_keys/puppetdb.pem \
  -e PUPPETDB_CERT=/etc/puppetlabs/puppetdb/ssl/public_keys/puppetdb.pem \
  -e INVENTORY_FACTS='Hostname,fqdn, IP Address,ipaddress' \
  -e ENABLE_CATALOG=True \
  -e GRAPH_FACTS='architecture,puppetversion,osfamily' \
  puppetboard
