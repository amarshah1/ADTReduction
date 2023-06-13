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

(assert (and (and (and (and (and (and (and (and (not (= null null)) (not ((_ is null) (ite ((_ is node) (leaf (succ (ite ((_ is succ) zero) (pred zero) zero)))) (children (leaf (succ (ite ((_ is succ) zero) (pred zero) zero)))) null)))) (= (leaf x2) x5)) (= (leaf (ite ((_ is succ) x2) (pred x2) zero)) (leaf (ite (is-leaf (leaf (ite (is-leaf (node (ite ((_ is node) x5) (children x5) null))) (data (node (ite ((_ is node) x5) (children x5) null))) zero))) (data (leaf (ite (is-leaf (node (ite ((_ is node) x5) (children x5) null))) (data (node (ite ((_ is node) x5) (children x5) null))) zero))) zero)))) (= (cons x5 null) x3)) (= (ite ((_ is succ) x1) (pred x1) zero) x1)) (not (= (ite (is-cons (cons x5 null)) (car (cons x5 null)) (leaf zero)) x5))) (not ((_ is succ) x1))) ((_ is zero) zero)))
(check-sat)
(exit)


