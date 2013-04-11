Process for tavmem/j.git

cd
git clone git@github.com:tavmem/j.git
cd j
touch *.c
bin/build_jconsole	(builds jconsole in ~/core, but does not install)
bin/build_libj		(builds libj in ~/core, but does not install)
bin/build_defs
bin/build_tsdll
make check		(runs test scripts on local version of jconsole and libj)
make install		(installs jconsole and libj.so to j/bin/)
make test		(runs test scripts on installed version of jconsole and libj)

./jconsole              to start
exit 0                  to end

note: test g331ins.ijs (space-used) always fails on P4/Gentoo


