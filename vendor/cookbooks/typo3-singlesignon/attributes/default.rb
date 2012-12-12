default['typo3-singlesignon']['demoinstance']['repository'] = "https://github.com/chlu/TYPO3.SingleSignOn.DemoInstance-Distribution.git"
default['typo3-singlesignon']['demoinstance']['revision'] = "6ca267f28ffa64c27e9159d60b36e4d236f60c95"

default['typo3-singlesignon']['demoserver']['repository'] = "https://github.com/chlu/TYPO3.SingleSignOn.DemoServer-Distribution.git"
default['typo3-singlesignon']['demoserver']['revision'] = "5af9921f5052df561a9ea4cba39083dc89abe2f9"

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
