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

(assert (and (and (and (and (and (and (and (not ((_ is cons) (cons (car (cdr (children (node x2)))) x2))) (is-leaf x3)) (= (leaf (succ (pred (data (node (cons (leaf (pred (pred zero))) (cdr (children (leaf (data x3)))))))))) (car null))) ((_ is zero) (succ x1))) (= (car (children (node (cons x3 (cdr (cons (car (cons (node (children (car null))) null)) null)))))) (node (cdr x2)))) ((_ is cons) null)) (= (cdr (children x3)) (cons x3 x2))) (not (= x3 (node null)))))
(check-sat)
(exit)


