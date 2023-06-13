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

(assert (and (and (and (and (and (and (and (and (not (= x3 (ite (is-cons null) (cdr null) null))) (not (is-leaf x6))) (not (= x4 (ite (is-cons x3) (cdr x3) null)))) (= zero (ite ((_ is succ) (ite ((_ is succ) x2) (pred x2) zero)) (pred (ite ((_ is succ) x2) (pred x2) zero)) zero))) ((_ is null) (ite ((_ is node) x5) (children x5) null))) (not (= x1 (ite (is-leaf x5) (data x5) zero)))) (= zero x1)) ((_ is succ) x1)) (not (= null (cons (node (ite (is-cons (cons x5 x4)) (cdr (cons x5 x4)) null)) x4)))))
(check-sat)
(exit)


