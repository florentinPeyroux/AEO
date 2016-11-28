slave
start

master
:IP rdm $9010;
:IP rdm $9010;

:main
begin
0
>0
$10000
for
	rdm
	dup
	*
	>1
	dup
	*
	1>
	add
	$ffe001
	<=
	if
		0>
		$1
		add
		>0
	endif

next
0>
7seg
$1f
btn
again
;

start
	main
endprogram
