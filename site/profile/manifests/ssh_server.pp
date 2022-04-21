class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLlCuDiO+Wofns8JHgld1FCxOfMwF/Ejy8NeeK9sg4HmMUThqnqDf6ycQXtStvQGh+MTq5ZPtOJRMYoApUjiA5+woYwSZA5vleqhu+lElhIPWc1TJj4Ab0DV1VdwhJNctCixQlFO5VzdSCH8GeZMtzUbUbL6rB972RsZ+/+vmGw/aH9Dr20WVTx/z+qiDsB64r+mfWLrnWiiSr4kEEaf5K4z/J76UR6HGW7uj0qlVJUB0BWRJ8rcU40JIcnLKypV7Bg2q+upwpkuyRiSdqJjiAk1YMz68+hihX+shj0Ojk4epTmVlPsWTMaDxLzCs3EWpM1JW4gzmtqsNnOcszCP9P',
	}  
}
