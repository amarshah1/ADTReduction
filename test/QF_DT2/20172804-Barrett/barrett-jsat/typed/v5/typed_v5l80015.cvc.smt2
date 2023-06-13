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

(assert (and (and (and (and (and (and (and (not ((_ is succ) (succ zero))) (not (= x6 (cons (node x6) x6)))) (not (is-leaf x14))) (not (= x8 x7))) (not (= x4 zero))) (= (ite (is-cons x8) (cdr x8) null) (ite (is-cons (ite (is-cons (ite ((_ is node) x11) (children x11) null)) (cdr (ite ((_ is node) x11) (children x11) null)) null)) (cdr (ite (is-cons (ite ((_ is node) x11) (children x11) null)) (cdr (ite ((_ is node) x11) (children x11) null)) null)) null))) (not (= (ite (is-cons x9) (car x9) (leaf zero)) (node x6)))) (= (ite (is-leaf (ite (is-cons (cons (ite (is-cons x6) (car x6) (leaf zero)) x7)) (car (cons (ite (is-cons x6) (car x6) (leaf zero)) x7)) (leaf zero))) (data (ite (is-cons (cons (ite (is-cons x6) (car x6) (leaf zero)) x7)) (car (cons (ite (is-cons x6) (car x6) (leaf zero)) x7)) (leaf zero))) zero) (ite (is-leaf x12) (data x12) zero))))
(check-sat)
(exit)


