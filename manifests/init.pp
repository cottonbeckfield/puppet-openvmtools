class ovmtools (
) inherits ovmtools::params { 
  package { $package:
    ensure => installed,
  } ~>
  service { "vmtoolsd":
    ensure => "running",
  }
}
