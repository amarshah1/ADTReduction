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
(set-info :status sat)


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

(assert (and (and (and (and (not ((_ is succ) x2)) (not (is-cons (ite ((_ is node) (ite (is-cons x4) (car x4) (leaf zero))) (children (ite (is-cons x4) (car x4) (leaf zero))) null)))) (is-leaf (ite (is-cons (ite (is-cons (ite ((_ is node) (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (children (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (children (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) null)) null)) (car (ite (is-cons (ite ((_ is node) (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (children (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (children (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) null)) null)) (leaf zero)))) (not (is-leaf (node x4)))) (not (= x4 (ite ((_ is node) (node (cons (leaf x1) null))) (children (node (cons (leaf x1) null))) null)))))
(check-sat)
(exit)


