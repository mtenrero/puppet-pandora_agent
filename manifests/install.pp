# This class is called from the pandora_agent class to manage installation.
# It is not meant to be called directly.
#
# @author Marcos Tenrero <tenrero@aol.com>
#
class pandora_agent::install (
) {

  case $osfamily {
    'RedHat': {
      include yum
      $package = 'pandorafms_agent_unix'
      Package[$package] { provider => 'yum' }
      yumrepo { 'pandora':
        baseurl    => 'http://firefly.artica.es/centos7',
        descr      => 'CentOS7 - PandoraFMS official repo',
        enabled    => '1',
        gpgcheck   => '0'
      }

      package { $package:
        ensure => $pandora_agent::ensure
      }

    }
    'Debian': {
    }

    default: {
      fail("The operatng system ${osfamily} is not supported by this module")
    }
  }
}
