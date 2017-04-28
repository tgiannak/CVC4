; COMMAND-LINE: --nl-ext --simplification=none
; EXPECT: sat
(set-logic QF_UFNRA)
(set-info :status unsat)
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun f (Real) Real)

(assert (= (f x) 0.2))
(assert (= (f y) 0.4)) 
(assert (= (/ (f x) (f y)) 0.5))

(check-sat)
