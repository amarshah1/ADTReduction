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

(assert (and (and (and (and (and (and (and (not (is-leaf (ite (is-cons (cons (ite (is-cons (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (car (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (leaf zero)) x3)) (car (cons (ite (is-cons (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (car (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (leaf zero)) x3)) (leaf zero)))) (= x4 (ite ((_ is node) (node null)) (children (node null)) null))) ((_ is succ) (ite ((_ is succ) (ite (is-leaf (leaf (succ zero))) (data (leaf (succ zero))) zero)) (pred (ite (is-leaf (leaf (succ zero))) (data (leaf (succ zero))) zero)) zero))) (not (= (ite (is-cons x4) (car x4) (leaf zero)) (node null)))) (= x2 zero)) (= (leaf (succ (ite ((_ is succ) x1) (pred x1) zero))) (node x4))) (not ((_ is succ) zero))) ((_ is null) x3)))
(check-sat)
(exit)


