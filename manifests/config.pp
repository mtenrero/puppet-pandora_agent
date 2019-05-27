# @summary Config class which dumps content into pandora_agent.conf file
#
# @example Basic installation
#   class { 'pandora_agent::config' : 
#       content => template('profile/pandora_agent.conf.erb')
#   }
#
# @param content Template config
#
# @author Marcos Tenrero <tenrero@aol.com>
#
class pandora_agent::config(
  String $content
) {

  file{'/usr/share/pandora_agent/pandora_agent.conf':
    ensure  => file,
    content => $content
  }
}
