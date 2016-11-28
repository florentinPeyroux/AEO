// random
slave 
start
master 
IP rdm $9010
;
: main
begin 
	0 // Compteur PI
	0 // Compteur boucle
	ticraz
	begin
		swap //Compteur PI
		rdm
		dup
		mul16
		swap
		dup
		mul16
		add
		$FFE001
		<=
		if
			inc
		endif
		swap //Compteur boucle
		inc
		dup
		$10000
		=	
	until
	swap
	tic
	31
	btn
	dup
	7seg
	31
	btn
	16
	->
	7seg
	31
	btn
	//calcul de pi
	7seg

again
;
start 
main

endprogram
