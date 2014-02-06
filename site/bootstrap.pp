stage { 'foreman':
  before => Stage['main'],
}

class { 'foreman':
  stage => foreman,
}

class foreman {
  class { 'apt':
  }
  
  apt::key { 'foreman':
    key        => 'E775FF07',
    key_source => 'http://deb.theforeman.org/foreman.asc',
  }->
  apt::source { 'foreman':
    location    => 'http://deb.theforeman.org/',
    release     => 'wheezy',
    repos       => '1.4',
    include_src => false,
  }
  
  package { 'foreman-installer':
    ensure => present,
    require => Class['apt::update'],
  }~>
  exec { 'foreman-installer':
    path        => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
    logoutput   => true,
    refreshonly => true,
  }
}
