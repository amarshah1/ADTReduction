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

(assert (and (and (and (and (and (and (and (and (not (= (succ (succ (ite ((_ is succ) x2) (pred x2) zero))) zero)) (= (ite (is-leaf x6) (data x6) zero) x1)) (= (succ zero) (succ (ite (is-leaf (leaf zero)) (data (leaf zero)) zero)))) (= (ite ((_ is node) (node (ite ((_ is node) (ite (is-cons (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (car (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (leaf zero))) (children (ite (is-cons (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (car (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (leaf zero))) null))) (children (node (ite ((_ is node) (ite (is-cons (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (car (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (leaf zero))) (children (ite (is-cons (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (car (cons (ite (is-cons x4) (car x4) (leaf zero)) (cons (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) (children (node (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null))) null)) (ite (is-cons (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) (cdr (cons (node x3) (cons (node (ite ((_ is node) x5) (children x5) null)) (ite (is-cons x3) (cdr x3) null)))) null)))) (leaf zero))) null))) null) x4)) (= (ite (is-cons (cons x6 null)) (cdr (cons x6 null)) null) null)) (not ((_ is zero) x2))) (= x2 (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero))) (not (= (cons (ite (is-cons (ite (is-cons x4) (cdr x4) null)) (car (ite (is-cons x4) (cdr x4) null)) (leaf zero)) (cons (leaf x1) (cons x6 null))) x3))) (not ((_ is node) (node null)))))
(check-sat)
(exit)


