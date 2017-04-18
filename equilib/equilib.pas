(* Biologist Robert May (1976) at Princeton studied the simple logistical difference equation. *)
(* He noticed that as the growth factor increased beyond the value of three, equilibrium would *)
(* never be reached. The system would enter a chaotic state. Furthermore, if a system displays *)
(* a regular cycle of three, then the system will also display regular cycles of all other     *)
(* lengths.                                                                                    *)
(*                                                                                             *)
(* Running this program clearly demonstrates May's findings. When a value less than three is   *)
(* entered for the growth factor, the program achieves convergence. However, when a value of   *)
(* three of more is entered, the program never achieves stability. The computed value for the  *)
(* variable enters a state of stable chaos where it alternates between two or more values with *)
(* periods of apparent randomness.                                                             *)
(*                                                                                             *)
(* Original version in BASIC:                                                                  *)
(*                                                                                             *)
(* INPUT "Enter the growth factor: "; R                                                        *)
(* INPUT "Enter the initial population size: ";X                                               *)
(* LOOP:                                                                                       *)
(* XNEXT = R * X * (1-X) 'Logistic differential formula                                        *)
(* PRINT XNEXT                                                                                 *)
(* ITERATIONS = ITERATIONS + 1                                                                 *)
(* IF XNEXT = LASTX THEN GOTO FINISH                                                           *)
(* LASTX=X                                                                                     *)
(* X=XNEXT                                                                                     *)
(* GOTO LOOP                                                                                   *)
(* FINISH:                                                                                     *)
(* PRINT "Iterations to achieve stability = ";ITERATIONS                                       *)
(* END                                                                                         *)

Program Equilib;
Var
    R, X, XNext, LastX, I: Double;
Begin
    Write('Enter the growth factor: ');
    ReadLn(R);
    Write('Enter the initial population size: ');
    ReadLn(X);
    X := 0; R := 0; I := 0;
    XNext := 0; LastX := 0;
    repeat
        XNext := R * X * (1 - X); (* Logistic differential formula *)
        WriteLn(XNext);
        I := I + 1;
        LastX := X;
        X := XNext;
    until XNext = LastX;
    WriteLn('Iterations to achieve stability: ', I);
End.

