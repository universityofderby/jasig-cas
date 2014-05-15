name 'jasig-cas'
maintainer 'University of Derby'
maintainer_email 'ai@derby.ac.uk'
license 'Apache 2.0'
description 'Installs & configures Jasig Client Authentication Service'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1' # rubocop:disable RescueModifier

depends 'tomcat'
depends 'simple_iptables'
