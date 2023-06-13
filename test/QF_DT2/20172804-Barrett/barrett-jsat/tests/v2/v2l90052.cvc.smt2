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

(assert (and (and (and (and (and (and (and (and ((_ is node) (node (cons (leaf zero) (cons (node (cons x6 (cons (leaf zero) (cons x5 (cons x5 (children x6)))))) (cons (node (children x5)) x3))))) ((_ is node) (leaf (succ (succ (succ (data (leaf x1)))))))) (not (= (pred x1) x2))) ((_ is cons) x3)) (is-leaf x5)) (= (pred x2) x2)) (= (car x4) x5)) (not (= (data x5) x1))) (not ((_ is cons) (children (car (cons (node (children (leaf (succ zero)))) x4)))))))
(check-sat)
(exit)


