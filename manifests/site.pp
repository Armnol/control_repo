node default {
    file {'/root/README':
      ensure  => file,
      content => 'Bonjour Puppet',
      owner   => 'root',
    }
}