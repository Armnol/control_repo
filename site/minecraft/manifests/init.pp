class minecraft (
  $url = 'https://launcher.mojang.com/v1/objects/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar',
  $install_dir = '/opt/minecraft',
  ){
  file {$install_dir:
    ensure => directory,
  }
  file {"${install_dir}/minecraft_server.jar":
    ensure => file,
    source => $url,
    before => Service['minecraft'],
    }
    package {'java':
      ensure => present,
  
    }
    file {"${install_dir}/eula.txt":
      ensure => file,
      content => 'eula=true',
    }
    file {'/etc/systemd/system/minecraft.service':
      ensure => file,
      content => epp('minecraft/minecraft.service', {
        install_dir => $install_dir,
      })
    }
    service {'minecraft':
      ensure => running,
      enable => true,
      require => [Package['java'],File["${install_dir}/eula.txt"],File['/etc/systemd/system/minecraft.service']]
    }
}
