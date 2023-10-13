# Puppet configuration without password

file_line{'turn off password authentication':
path => '/etc/ssh/ssh_config',
line => 'PasswordAuthentication no'
}

file_line{'declare identity file':
path => '/etc/ssh/ssh_config',
line => 'IdentifyFile ~/.ssh/school'


}
