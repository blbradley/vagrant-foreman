class { 'apt':
  always_apt_update => true,
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
}->
package { 'foreman-installer':
  ensure => present,
}~>
exec { 'foreman-installer':
  path        => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  logoutput   => true,
  refreshonly => true,
}
