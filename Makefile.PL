use strict;
use inc::Module::Install;

name 'Catalyst-Plugin-Upload-SHA1';

all_from 'lib/Catalyst/Plugin/Upload/SHA1.pm';

# lib/
requires Catalyst => '5.2';
requires 'Digest::SHA1' => 0;

# t/
build_requires 'Test::More' => 0;

auto_install;
WriteAll;


