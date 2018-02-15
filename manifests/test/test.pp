group { 'managers':
	ensure		=> 'present',
	gid		=> '510',
}

group { 'accounting':
        ensure          => 'present',
        gid             => '511',
}

group { 'sales':
        ensure          => 'present',
        gid             => '512',
}


user { 'mscott':
	ensure		=> 'present',
	groups		=> ["managers"],
	home		=> '/home/mscott',
	password	=> '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
	shell		=> '/bin/bash',
	uid		=> '520',
	managehome	=> true,
}

user { 'dschrute':
        ensure          => 'present',
        groups          => ["managers"],
        home            => '/home/dschrute',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '521',
        managehome      => true,
}

user { 'jhalpert':
        ensure          => 'present',
        groups          => ["managers"],
        home            => '/home/jhalpert',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '522',
        managehome      => true,
}

user { 'tflenderson':
        ensure          => 'present',
        home            => '/home/tflenderson',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '523',
        managehome      => true,
}

user { 'dphilbin':
        ensure          => 'present',
        home            => '/home/dphilbin',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '524',
        managehome      => true,
}

user { 'cbratton':
        ensure          => 'present',
        home            => '/home/cbratton',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '525',
        managehome      => true,
}

user { 'mpalmer':
        ensure          => 'present',
        home            => '/home/mpalmer',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '526',
        managehome      => true,
}

user { 'pbeesly':
        ensure          => 'present',
        home            => '/home/pbeesly',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '527',
        managehome      => true,
}

user { 'kkapoor':
        ensure          => 'present',
        home            => '/home/kkapoor',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '528',
        managehome      => true,
}

user { 'amartin':
        ensure          => 'present',
        groups          => ["accounting"],
        home            => '/home/amartin',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '529',
        managehome      => true,
}

user { 'kmalone':
        ensure          => 'present',
        groups          => ["accounting"],
        home            => '/home/kmalone',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '530',
        managehome      => true,
}

user { 'omartinez':
        ensure          => 'present',
        groups          => ["accounting"],
        home            => '/home/omartinez',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '531',
        managehome      => true,
}

user { 'abernard':
        ensure          => 'present',
        groups          => ["sales"],
        home            => '/home/abernard',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '532',
        managehome      => true,
}

user { 'plapin':
        ensure          => 'present',
        groups          => ["sales"],
        home            => '/home/plapin',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '533',
        managehome      => true,
}

user { 'shudson':
        ensure          => 'present',
        groups          => ["sales"],
        home            => '/home/shudson',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '534',
        managehome      => true,
}

user { 'svaze':
        ensure          => 'present',
        home            => '/home/svaze',
        password        => '$6$grM0.QHz$TXI3/HRgYwOefq6zOSeSDNf2xr8iQapRhMjqcK5quNANTLvEzsI5WVxUn/ZGXf5uO5kl.EgL1NqQpUHPuICnz1',
        shell           => '/bin/bash',
        uid             => '535',
        managehome      => true,
}

file { '/home/managers':
	ensure		=> 'directory',
	group		=> 'managers',
	mode		=> 2770
}

file { '/home/accounting':
        ensure          => 'directory',
        group           => 'accounting',
        mode            => 2770
}

file { '/home/sales':
        ensure          => 'directory',
        group           => 'sales',
        mode            => 2770
}

