name              'packer_fx'
maintainer        'fxinnovation'
maintainer_email  'cloudsquad@fxinnovation.com'
license           'MIT'
description       'Provides a resource for (un)installing consul'
version           '0.1.0'
source_url        'https://bitbucket.org/fxadmin/'
issues_url        'https://bitbucket.org/fxadmin/'
chef_version      '>=12.14' if respond_to?(:chef_version)
supports          'redhat'
supports          'centos'
supports          'ubuntu'
supports          'debian'
depends           'unzip_fx', '~> 0.1.0'