slave
start

master
: saisie
	$1f
	btn
	switch
;

: main

begin
  4
  for
    saisie
  next
  ticraz
  >r
  8
  <-
  r>
  xor
  -rot
  >r
  8
  <-
  r>
  xor
  add
  tic
  7seg
  $1f
	btn
  7seg
again
;
start
	main
endprogram
