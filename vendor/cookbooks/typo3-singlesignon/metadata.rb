name             "typo3-singlesignon"
version          "0.1.0"
maintainer       "Christopher Hlubek"
maintainer_email "hlubek@networkteam.com"
license          "Apache 2.0"
description      "TYPO3 SingleSignOn demo installation for TYPO3 Flow"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

supports         "ubuntu"
supports         "debian"

supports         "redhat"
supports         "centos"
supports         "scientific"
supports         "amazon"
supports         "fedora"

depends          "php"
depends          "application_php"
depends          "hostsfile"
