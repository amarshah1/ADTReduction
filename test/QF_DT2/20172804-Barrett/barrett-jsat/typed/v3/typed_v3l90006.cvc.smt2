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

(assert (and (and (and (and (and (and (and (and ((_ is zero) (ite ((_ is succ) (ite (is-leaf x7) (data x7) zero)) (pred (ite (is-leaf x7) (data x7) zero)) zero)) (is-cons x4)) ((_ is null) (ite ((_ is node) x9) (children x9) null))) ((_ is null) x4)) (= (cons x8 (ite (is-cons x4) (cdr x4) null)) null)) (= x3 zero)) (not (= null x5))) (not ((_ is succ) (ite ((_ is succ) (ite (is-leaf (ite (is-cons x4) (car x4) (leaf zero))) (data (ite (is-cons x4) (car x4) (leaf zero))) zero)) (pred (ite (is-leaf (ite (is-cons x4) (car x4) (leaf zero))) (data (ite (is-cons x4) (car x4) (leaf zero))) zero)) zero)))) (= (cons (node (ite ((_ is node) x9) (children x9) null)) x6) (ite ((_ is node) (ite (is-cons x5) (car x5) (leaf zero))) (children (ite (is-cons x5) (car x5) (leaf zero))) null))))
(check-sat)
(exit)


