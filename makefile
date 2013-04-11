CFLAGS=$(COMP)

libj : $(LIBJ_OBJS)
	cc  $(LIBJ_OBJS) $(SOLINK)

jconsole : jconsole.o jeload.o
	cc  jconsole.o jeload.o $(M32) $(LIBREADLINE) $(JCONLINK) -ldl -o jconsole

tsdll : tsdll.o
	cc tsdll.o $(SOLINK)

.PHONY : check
check  :
	sed -e "s_(bin i: '/'){.bin_bin,'/j'_g" <~/j/j/bin/profile.ijs >~/j/profile.ijs
	./jconsole 'test/tstBLD.ijs'

.PHONY  : install
install :
	./bin/install

.PHONY : test
test   : 
	j/bin/jconsole 'test/tstBLD.ijs'

.PHONY : clean
clean  :
	rm *.o *.jmf *.so jconsole esum.txt make.txt
	rm defs/hostdefs.ijs defs/netdefs.ijs j/bin/jconsole j/bin/libj.so
	rm j/system/defs/ -r
