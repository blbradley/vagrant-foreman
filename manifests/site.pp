stage { 'update':
  before => Stage['main'],
}

class { 'apt':
  always_apt_update => true,
  stage => update,
}
