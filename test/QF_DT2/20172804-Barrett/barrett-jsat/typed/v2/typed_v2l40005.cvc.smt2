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

(assert (and (and (and (not (= x4 x4)) (not ((_ is null) x4))) (= (cons (node null) (cons (node x4) x3)) x3)) (not (= (ite (is-cons (ite (is-cons (cons (leaf x2) (ite ((_ is node) (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) (children (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) null))) (cdr (cons (leaf x2) (ite ((_ is node) (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) (children (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) null))) null)) (cdr (ite (is-cons (cons (leaf x2) (ite ((_ is node) (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) (children (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) null))) (cdr (cons (leaf x2) (ite ((_ is node) (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) (children (node (ite (is-cons (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) (cdr (cons (leaf x2) (ite ((_ is node) x6) (children x6) null))) null))) null))) null)) null) (cons (ite (is-cons null) (car null) (leaf zero)) x4)))))
(check-sat)
(exit)


