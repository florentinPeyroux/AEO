// Calcul de la suite de fibonacci

slave
start

master

:IP fibo $AC03;
:attenteSaisie
  $1f
  btn
  switch
;

: main
begin
  0
  1
  attenteSaisie

  dup
  =0
  if
    7seg
  endif

  dup
  2
  <=
  if
    1
    7seg
  endif

  dup
  2
  >
  if

1
+
    fibo
    7seg
  endif
again
;

start
main
endprogram
