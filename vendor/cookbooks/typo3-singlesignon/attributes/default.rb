# default['kibana']['home'] = "/home/kibana"


# More lightweight apache setup for the demo
include_attribute "apache2"
node.set['apache']['prefork']['startservers'] = 2
node.set['apache']['prefork']['minspareservers'] = 3
node.set['apache']['prefork']['maxspareservers'] = 3
node.set['apache']['prefork']['serverlimit'] = 75
node.set['apache']['prefork']['maxclients'] = 75

# More lightweight mysql setup for the demo
include_attribute "mysql::server"
node.set['mysql']['tunable']['key_buffer'] = "32M"
node.set['mysql']['tunable']['max_heap_table_size'] = "16M"
node.set['mysql']['tunable']['innodb_buffer_pool_size'] = "32M"
node.set['mysql']['tunable']['innodb_additional_mem_pool_size'] = "1M"
node.set['mysql']['tunable']['query_cache_size'] = "4M"
