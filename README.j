Process for tavmem/j.git

cd
git clone git@github.com:tavmem/j.git
cd j
bin/build_jconsole
bin/build_libj
bin/build_defs
bin/build_tsdll
make check		(runs test scripts)

./jconsole              to start
exit 0                  to end

note: on 32-bit-P4/Gentoo
      g300t (timing) usually fails
      g331ins (space-used) always fails

      on Cygwin
      4 tests always fail: g18x g410 gipht git   
      3 tests sometimes fail: g330t g530t g6x 
   

