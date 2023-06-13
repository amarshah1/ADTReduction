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
(declare-fun x2 () nat)
(declare-fun x3 () list)
(declare-fun x4 () list)
(declare-fun x5 () tree)
(declare-fun x6 () tree)

(assert (and (and (and (and (and (and (and (and (is-leaf x6) ((_ is succ) x1)) ((_ is succ) (succ (succ (pred x2))))) (= (cons x5 null) (cons x6 x3))) (= (car (cdr x3)) (car (children (leaf zero))))) (not (= x6 (node null)))) (not (is-leaf x6))) (not (= (cons x5 (children (node (cons (node (cons (leaf (succ zero)) (children x5))) x4)))) (cons (node x3) x3)))) ((_ is zero) x1)))
(check-sat)
(exit)


