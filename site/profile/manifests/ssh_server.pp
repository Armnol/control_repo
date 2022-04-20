class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQC5qV+ht8PVEg41a0UZolKLp69+CH3dsWJTaeGVpWhkGd/MJqDqrc70ndXwqQrYSpi7OHvmErWD30aVXCKjKNn0lOwvkkrNm9nf3AW3SvM7OJlx58FezTfqGqJ52GFepw5cVoRRb1yTimw9a9nk9aVRU0F1ly7YfCEMqm2T+CJWDAGdhQUe3oUXCZ1W/CDc5LKgHnRFsFkek4uNdj5Ex0gDDVPciiZFCrE3BPYbu2r5fv7FKeDT4tLD+hdT+twTf9mwcniBGTrP6eOhOmvjaT+mZcQHTXWmQMOcCpHnj9PeBXThVCFxaU1UuutP1HlVOkJntic9wTOVnu/41rrMU+ou+43QCRsFkdrwWOzi5JT4JgwQvER3kviHxkRKDKDapAjkpx2/PD1a97ia3NhVgy3f+4sEnTjcLinvROzW1F80vcmAjTYu9+4QI7vjVTHwvZ91h6N2maeoHUXdUFl9qN8gOh8hoC7dkMMcA+BNANc/vwCmnusvJ1Omeu+rRy619UEHoYnTuDV8U3l9JQCaVYVhf77MEEbiot/elwWUlmqzSfjJAAEYfjEGmpmujFDsBRBzCwvfN5vZBEsYCXO7+0dmhgi3YdmhINhEqA812XiTUJYBNBfE8uXXACLxR3fEp4QlPxJWUbOoliytntoPmNad2TCrrvPU4mqLt1YG812cwQ==',
	}  
}
