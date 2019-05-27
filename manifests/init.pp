# @summary The top-level pandora_agent class that declares child classes for managing Pandora Agent.
#
# @example Basic installation
#   class { 'pandora_agent' : }
#
# @example Module removal
#   class { 'pandora_agent' : ensure => absent }
#
# @example Keep latest version of Pandora FMS Agent installed
#   class { 'pandora_agent' : ensure => 'latest' }
#
# @param ensure State of Pandora Agent on the system (simple present/absent/latest
#   or version number).
#
# @author Marcos Tenrero <tenrero@aol.com>
#
class pandora_agent (
  Variant[Enum['present', 'absent', 'latest'], Pattern[/^\d([.]\d+)*(-[\d\w]+)?$/]] $ensure,
  Optional[String] $config_file = undef,
) {

  contain pandora_agent::install

  include pandora_agent::install
}
