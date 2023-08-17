cleaner(C):-

(   (C==a)->(write("What happened in location A"),
    read(A));true),
    (   (C==b)->(
    write("What happened in location B"),
    read(B));true),
    (   (C==a,A==clean)->(write("Right"),nl,cleaner(b));true),
    (   (C==b,B==clean)->(write("Left"),nl,cleaner(a));true),
    (   (C==a,A==dirty)->(write("Suck"),nl,cleaner(a));true),
    (   (C==b,B==dirty)->(write("Suck"),nl,cleaner(b));true)


        .
vacuumcleaner():-
    write("Where are in Vacuum"),
    read(C),
    cleaner(C)
    .



