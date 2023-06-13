(set-info :smt-lib-version 2.6)
(set-logic QF_DT)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2017-04-28
Generator: Random, converted to v2.6 by CVC4
Application: Regressions for datatypes decision procedure.
Target solver: CVC3
Publications: "An Abstract Decision Procedure for Satisfiability in the Theory of Inductive Data Types" by Clark Barrett, Igor Shikanian, and Cesare Tinelli, Journal on Satisfiability, Boolean Modeling and Computation 2007.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "random")
(set-info :status unsat)


(declare-datatypes ((nat 0)(list 0)(tree 0)) (((succ (pred nat)) (zero))
((cons (car tree) (cdr list)) (null))
((node (children list)) (leaf (data nat)))
))
(declare-fun x1 () nat)
(declare-fun x2 () list)
(declare-fun x3 () tree)

(assert (and (and (and (and (and (not (is-leaf (node (cons (node x2) (children (car (children (leaf (pred (succ x1)))))))))) (= (succ (data (car (cdr null)))) zero)) (= (car (cons x3 (cons (node (cdr (cdr null))) (cdr (children (node (cons x3 x2))))))) x3)) (= x2 (cdr (children (node (cdr (children x3))))))) (not (= (node (cons (node (cons x3 (cons x3 x2))) (cons (leaf x1) null))) (node (cdr (cdr (cons (leaf (succ (pred x1))) (cdr (cons (car x2) null))))))))) (= null (cons (car (cdr x2)) (cdr (cons (node null) x2))))))
(check-sat)
(exit)

