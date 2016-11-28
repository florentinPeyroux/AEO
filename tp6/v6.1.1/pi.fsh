slave 
start

master 
:IP rdm $8810;
:main
0
>0
$10000
for
rdm
>1
$fff
1>
and
dup
*
1>
$fff000
and
$c
->
dup
*
add
$ffe001
<=
if 
	0>
	$1 
	add
	>0
endif
0>

next
7seg
$1f
btn
;

start 
	main
endprogram