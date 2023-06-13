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
(declare-fun x4 () nat)
(declare-fun x5 () nat)
(declare-fun x6 () list)
(declare-fun x7 () list)
(declare-fun x8 () list)
(declare-fun x9 () list)
(declare-fun x10 () list)
(declare-fun x11 () tree)
(declare-fun x12 () tree)
(declare-fun x13 () tree)
(declare-fun x14 () tree)
(declare-fun x15 () tree)

(assert (and (and (and (and (and (and (and (and (not (= x12 x13)) (is-leaf (node (cons (ite (is-cons x10) (car x10) (leaf zero)) (ite ((_ is node) x15) (children x15) null))))) ((_ is succ) x5)) (not (= (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null) x10))) (= (ite ((_ is node) x15) (children x15) null) (ite (is-cons x10) (cdr x10) null))) (not (= (node x10) (leaf x5)))) ((_ is succ) (ite (is-leaf x11) (data x11) zero))) ((_ is node) x15)) (not (= x13 x14))))
(check-sat)
(exit)


