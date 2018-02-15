user { "abc":
	uid => "2001",
	ensure => present,
	comment => "ABC",
	groups => ["dehus"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/abc",
	managehome => true, 
}
