// random
slave
start
master
:IP fibo $ac03

: saisie
	$1f
	btn
	switch
;

: main
begin
ticraz
saisie
>0
0>
2
<=
if
  drop
  drop
  drop
  1

endif
0>
0
=
if
  drop
  0

else

0
1
0>
for
	fibo
next

endif
tic
7seg
$1f
btn
7seg
$1f
btn
again
;
start
main
endprogram
