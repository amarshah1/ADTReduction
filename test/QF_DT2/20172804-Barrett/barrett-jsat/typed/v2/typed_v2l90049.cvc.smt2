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

(assert (and (and (and (and (and (and (and (and (not (= x6 x5)) ((_ is zero) x2)) (not (= (ite (is-leaf x5) (data x5) zero) (ite (is-leaf x6) (data x6) zero)))) (not (= (leaf (succ (succ zero))) (ite (is-cons null) (car null) (leaf zero))))) (is-cons (cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (car (ite ((_ is node) x5) (children x5) null)) (leaf zero)) x4))) ((_ is null) x3)) (not ((_ is zero) (succ x1)))) (not (is-leaf x6))) (not (= null (ite (is-cons (ite ((_ is node) (node x3)) (children (node x3)) null)) (cdr (ite ((_ is node) (node x3)) (children (node x3)) null)) null)))))
(check-sat)
(exit)


