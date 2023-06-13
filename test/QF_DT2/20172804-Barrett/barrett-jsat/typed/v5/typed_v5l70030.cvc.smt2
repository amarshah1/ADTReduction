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

(assert (and (and (and (and (and (and (is-cons (cons (leaf (ite (is-leaf (node (ite ((_ is node) x12) (children x12) null))) (data (node (ite ((_ is node) x12) (children x12) null))) zero)) null)) (not (is-leaf (ite (is-cons x9) (car x9) (leaf zero))))) (= (cons x13 (ite (is-cons null) (cdr null) null)) x10)) (not ((_ is zero) (ite ((_ is succ) (ite ((_ is succ) x2) (pred x2) zero)) (pred (ite ((_ is succ) x2) (pred x2) zero)) zero)))) (not (= x3 x4))) (= (ite (is-leaf (ite (is-cons (ite (is-cons (ite ((_ is node) x15) (children x15) null)) (cdr (ite ((_ is node) x15) (children x15) null)) null)) (car (ite (is-cons (ite ((_ is node) x15) (children x15) null)) (cdr (ite ((_ is node) x15) (children x15) null)) null)) (leaf zero))) (data (ite (is-cons (ite (is-cons (ite ((_ is node) x15) (children x15) null)) (cdr (ite ((_ is node) x15) (children x15) null)) null)) (car (ite (is-cons (ite ((_ is node) x15) (children x15) null)) (cdr (ite ((_ is node) x15) (children x15) null)) null)) (leaf zero))) zero) (ite ((_ is succ) x1) (pred x1) zero))) (= x8 x10)))
(check-sat)
(exit)


