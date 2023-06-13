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
(declare-fun x2 () list)
(declare-fun x3 () tree)

(assert (and (and (and (and (and (and (and (and (not (= x1 (succ x1))) (= (node (ite (is-cons null) (cdr null) null)) (node (ite (is-cons (cons (ite (is-cons x2) (car x2) (leaf zero)) (cons x3 (ite (is-cons x2) (cdr x2) null)))) (cdr (cons (ite (is-cons x2) (car x2) (leaf zero)) (cons x3 (ite (is-cons x2) (cdr x2) null)))) null)))) ((_ is node) x3)) (is-cons null)) (not (is-cons x2))) (= (node (cons (leaf (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero)) zero)) (ite ((_ is node) (leaf (succ (succ (succ (succ (ite (is-leaf x3) (data x3) zero))))))) (children (leaf (succ (succ (succ (succ (ite (is-leaf x3) (data x3) zero))))))) null))) (ite (is-cons x2) (car x2) (leaf zero)))) (is-cons null)) ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) x1) (pred x1) zero)) (pred (ite ((_ is succ) x1) (pred x1) zero)) zero))) (not (= (ite ((_ is succ) x1) (pred x1) zero) (ite (is-leaf (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))) (data (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))) zero)))))
(check-sat)
(exit)


