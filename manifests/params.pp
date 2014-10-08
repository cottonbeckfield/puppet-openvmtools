class ovmtools::params {
  case $::osfamily {
    'RedHat', 'CentOS': {
      case $::operatingsystemrelease {
        /^5.*/: {
          notice("Unsupported $::operatingsystemrelease.")
        }
        /^6.*/: {
          $package = 'open-vm-tools'
        }
        default: {
          notice("Unsupported $::operatingsystemrelease.")
        }
      }
    }
    'debian', 'ubuntu': {
      $package = 'open-vm-tools'
    }
    default: {
      notice("Unsupported $::osfamily.")
    }
  }
}
