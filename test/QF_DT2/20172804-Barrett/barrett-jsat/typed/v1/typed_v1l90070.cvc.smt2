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

(assert (and (and (and (and (and (and (and (and (is-cons x2) (not (= (ite ((_ is succ) (succ (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) (pred (succ (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) zero) (succ x1)))) (not (= (node (ite (is-cons x2) (cdr x2) null)) (node (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))))) (is-leaf (node (ite (is-cons (cons (ite (is-cons null) (car null) (leaf zero)) x2)) (cdr (cons (ite (is-cons null) (car null) (leaf zero)) x2)) null)))) (is-leaf (node null))) (is-cons (ite (is-cons (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) null))) (= (ite (is-cons x2) (car x2) (leaf zero)) (ite (is-cons (cons (node (ite (is-cons (cons (node (ite ((_ is node) x3) (children x3) null)) (ite (is-cons (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) null))) (cdr (cons (node (ite ((_ is node) x3) (children x3) null)) (ite (is-cons (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) null))) null)) (ite ((_ is node) x3) (children x3) null))) (car (cons (node (ite (is-cons (cons (node (ite ((_ is node) x3) (children x3) null)) (ite (is-cons (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) null))) (cdr (cons (node (ite ((_ is node) x3) (children x3) null)) (ite (is-cons (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons x2) (cdr x2) null))) (children (node (ite (is-cons x2) (cdr x2) null))) null)) null)) null))) null)) (ite ((_ is node) x3) (children x3) null))) (leaf zero)))) (is-leaf x3)) (= (succ zero) zero)))
(check-sat)
(exit)

