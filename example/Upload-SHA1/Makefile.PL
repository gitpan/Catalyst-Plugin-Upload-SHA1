use strict;
use inc::Module::Install;

name 'Upload-SHA1';

all_from 'lib/Upload/SHA1.pm';

# lib/
requires Catalyst => '5.7006';
requires 'Catalyst::View::TT' => '0.24';
requires 'Catalyst::Plugin::Upload::SHA1' => '0.01';

# t/
build_requires 'Test::More' => 0;

install_script $_ for glob 'script/*.pl';

auto_install;
WriteAll;


