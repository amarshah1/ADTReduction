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

(assert (and (and (and (and (and (and (and (is-leaf (leaf x1)) (not ((_ is succ) (succ (succ (ite ((_ is succ) (ite ((_ is succ) x3) (pred x3) zero)) (pred (ite ((_ is succ) x3) (pred x3) zero)) zero)))))) (is-cons null)) (not (is-cons null))) (= (ite (is-cons (ite (is-cons (ite (is-cons null) (cdr null) null)) (cdr (ite (is-cons null) (cdr null) null)) null)) (cdr (ite (is-cons (ite (is-cons null) (cdr null) null)) (cdr (ite (is-cons null) (cdr null) null)) null)) null) x4)) ((_ is succ) (ite ((_ is succ) (ite (is-leaf (leaf (ite ((_ is succ) x1) (pred x1) zero))) (data (leaf (ite ((_ is succ) x1) (pred x1) zero))) zero)) (pred (ite (is-leaf (leaf (ite ((_ is succ) x1) (pred x1) zero))) (data (leaf (ite ((_ is succ) x1) (pred x1) zero))) zero)) zero))) (not (= zero (succ (succ (ite (is-leaf x8) (data x8) zero)))))) (is-leaf (ite (is-cons (ite ((_ is node) (node x4)) (children (node x4)) null)) (car (ite ((_ is node) (node x4)) (children (node x4)) null)) (leaf zero)))))
(check-sat)
(exit)

