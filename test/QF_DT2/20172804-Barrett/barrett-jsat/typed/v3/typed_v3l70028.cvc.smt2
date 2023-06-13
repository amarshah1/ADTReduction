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
(declare-fun x3 () nat)
(declare-fun x4 () list)
(declare-fun x5 () list)
(declare-fun x6 () list)
(declare-fun x7 () tree)
(declare-fun x8 () tree)
(declare-fun x9 () tree)

(assert (and (and (and (and (and (and (= (leaf x3) (node x4)) (not ((_ is null) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)))) (not (= (succ x3) x3))) ((_ is node) (ite (is-cons x4) (car x4) (leaf zero)))) ((_ is null) x4)) ((_ is null) (cons x9 (ite (is-cons x5) (cdr x5) null)))) (not (= (succ (ite (is-leaf x9) (data x9) zero)) (ite ((_ is succ) x3) (pred x3) zero)))))
(check-sat)
(exit)


