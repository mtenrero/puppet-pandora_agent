class pandora_agent::module(
  Enum['present', 'absent'] $ensure,
  String $module_name,
  Optional[String] $description,
  Enum['generic_data', 'generic_proc'] $type,
  Optional[Integer] $interval,
  String $module_exec,
  Optional[Integer] $min,
  Optional[Integer] $max,
  Optional[Integer] $min_warning,
  Optional[Integer] $max_warning,
  Optional[String] $unit,
  Optional[String] $group
) {

}
