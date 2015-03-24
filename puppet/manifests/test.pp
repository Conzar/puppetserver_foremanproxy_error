notice('=== Testing ===')

  ## setup puppet server
  package{'puppetserver':}

  ## setup foreman
  package {'wget':
    require => Package['puppetserver'],
  }
  class { 'apt':
    always_apt_update => true,
    require           => Package['wget'],
  }
  apt::key { 'theforeman':
    key        => 'E775FF07',
    key_source => 'http://deb.theforeman.org/pubkey.gpg',
  }
  apt::source { 'theforeman':
    location    => 'http://deb.theforeman.org/',
    release     => $lsbrelease,
    repos       => '1.7',
    include_src => false,
    key         => 'E775FF07',
  }

  package { 'foreman-proxy' :
    ensure  => present,
    require => Apt::Source['theforeman'],
  }