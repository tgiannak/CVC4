; COMMAND-LINE:
; EXPECT: (not (>= (+ a (* (- 1) b)) 1))
(set-logic LIA)
(declare-fun a () Int)
(declare-fun b () Int)
(get-qe (exists ((x Int)) (and (<= a x) (<= x b))))
