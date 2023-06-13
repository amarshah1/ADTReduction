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

(assert (and (and (and (and (and (and (and (and ((_ is zero) x2) (not (is-cons (ite ((_ is node) (node null)) (children (node null)) null)))) (= zero x1)) (= (ite (is-cons x4) (car x4) (leaf zero)) x5)) ((_ is succ) x1)) (= zero (ite (is-leaf (leaf x2)) (data (leaf x2)) zero))) (not (= (ite (is-cons (ite ((_ is node) x6) (children x6) null)) (car (ite ((_ is node) x6) (children x6) null)) (leaf zero)) (ite (is-cons (cons x5 (ite ((_ is node) x6) (children x6) null))) (car (cons x5 (ite ((_ is node) x6) (children x6) null))) (leaf zero))))) (not (= (ite ((_ is node) x6) (children x6) null) (ite (is-cons (ite (is-cons x3) (cdr x3) null)) (cdr (ite (is-cons x3) (cdr x3) null)) null)))) (not (= (ite ((_ is node) (node (ite (is-cons (cons (ite (is-cons (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (car (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (leaf zero)) (ite (is-cons (ite ((_ is node) (node x4)) (children (node x4)) null)) (cdr (ite ((_ is node) (node x4)) (children (node x4)) null)) null))) (cdr (cons (ite (is-cons (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (car (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (leaf zero)) (ite (is-cons (ite ((_ is node) (node x4)) (children (node x4)) null)) (cdr (ite ((_ is node) (node x4)) (children (node x4)) null)) null))) null))) (children (node (ite (is-cons (cons (ite (is-cons (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (car (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (leaf zero)) (ite (is-cons (ite ((_ is node) (node x4)) (children (node x4)) null)) (cdr (ite ((_ is node) (node x4)) (children (node x4)) null)) null))) (cdr (cons (ite (is-cons (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (car (cons x6 (ite ((_ is node) (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (car (ite ((_ is node) (node (ite (is-cons x3) (cdr x3) null))) (children (node (ite (is-cons x3) (cdr x3) null))) null)) (leaf zero))) null))) (leaf zero)) (ite (is-cons (ite ((_ is node) (node x4)) (children (node x4)) null)) (cdr (ite ((_ is node) (node x4)) (children (node x4)) null)) null))) null))) null) (ite (is-cons (cons (ite (is-cons null) (car null) (leaf zero)) (ite ((_ is node) (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))) null))) (cdr (cons (ite (is-cons null) (car null) (leaf zero)) (ite ((_ is node) (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))) null))) null)))))
(check-sat)
(exit)

