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

(assert (and (and (and (and (and (and (= (succ (ite ((_ is succ) (ite (is-leaf (node (ite (is-cons null) (cdr null) null))) (data (node (ite (is-cons null) (cdr null) null))) zero)) (pred (ite (is-leaf (node (ite (is-cons null) (cdr null) null))) (data (node (ite (is-cons null) (cdr null) null))) zero)) zero)) (succ (ite ((_ is succ) zero) (pred zero) zero))) (= (ite (is-cons x4) (car x4) (leaf zero)) (leaf (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) (data (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) zero)) (pred (ite (is-leaf (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) (data (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) (data (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) zero)) (pred (ite (is-leaf (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) (data (ite (is-cons (cons x9 x5)) (car (cons x9 x5)) (leaf zero))) zero)) zero)) zero)))) (is-cons x6)) (= x5 (cons x7 (ite (is-cons x4) (cdr x4) null)))) (= null null)) (= (leaf x3) x7)) (= (cons (leaf x3) x6) x6)))
(check-sat)
(exit)


