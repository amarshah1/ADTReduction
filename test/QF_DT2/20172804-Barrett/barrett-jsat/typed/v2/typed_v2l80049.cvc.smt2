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

(assert (and (and (and (and (and (and (and (is-cons (cons x6 x3)) (not (= (ite ((_ is node) (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) null)) (leaf zero))) (children (ite (is-cons (ite ((_ is node) (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) (children (ite (is-cons (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (car (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (cdr (ite ((_ is node) x5) (children x5) null)) null)) (leaf zero))) null)) (leaf zero))) null) (cons (leaf (succ (ite ((_ is succ) zero) (pred zero) zero))) x3)))) (not ((_ is node) (ite (is-cons (ite ((_ is node) x6) (children x6) null)) (car (ite ((_ is node) x6) (children x6) null)) (leaf zero))))) (= x1 (ite (is-leaf (node (cons (ite (is-cons (ite ((_ is node) x6) (children x6) null)) (car (ite ((_ is node) x6) (children x6) null)) (leaf zero)) (ite ((_ is node) (node (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null))) (children (node (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null))) null)))) (data (node (cons (ite (is-cons (ite ((_ is node) x6) (children x6) null)) (car (ite ((_ is node) x6) (children x6) null)) (leaf zero)) (ite ((_ is node) (node (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null))) (children (node (ite ((_ is node) (ite (is-cons x3) (car x3) (leaf zero))) (children (ite (is-cons x3) (car x3) (leaf zero))) null))) null)))) zero))) ((_ is node) (leaf (ite (is-leaf x5) (data x5) zero)))) (= x4 (cons x6 (ite ((_ is node) (node null)) (children (node null)) null)))) (not (= (node (cons (ite (is-cons null) (car null) (leaf zero)) (ite ((_ is node) (node x3)) (children (node x3)) null))) x5))) (not (= x6 x5))))
(check-sat)
(exit)


