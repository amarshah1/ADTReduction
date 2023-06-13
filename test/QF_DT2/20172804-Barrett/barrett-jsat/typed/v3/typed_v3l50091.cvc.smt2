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
(set-info :status sat)


(declare-datatypes ((nat 0)(list 0)(tree 0)) (((succ (pred nat)) (zero))
((cons (car tree) (cdr list)) (null))
((node (children list)) (leaf (data nat)))
))
(declare-fun x1 () nat)
(declare-fun x2 () nat)
(declare-fun x3 () nat)
(declare-fun x4 () list)
(declare-fun x5 () list)
(declare-fun x6 () list)
(declare-fun x7 () tree)
(declare-fun x8 () tree)
(declare-fun x9 () tree)

(assert (and (and (and (and (= x9 x9) (= (ite ((_ is succ) (ite ((_ is succ) x2) (pred x2) zero)) (pred (ite ((_ is succ) x2) (pred x2) zero)) zero) (ite ((_ is succ) (ite (is-leaf x8) (data x8) zero)) (pred (ite (is-leaf x8) (data x8) zero)) zero))) (not (= (cons (node (ite (is-cons (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (cdr (ite (is-cons x4) (cdr x4) null)) null)) (cdr (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (cdr (ite (is-cons x4) (cdr x4) null)) null)) null)) (cons (node x6) x5)) (ite (is-cons x6) (cdr x6) null)))) (= (ite (is-leaf (node (cons x9 x4))) (data (node (cons x9 x4))) zero) zero)) (not (= null x4))))
(check-sat)
(exit)

