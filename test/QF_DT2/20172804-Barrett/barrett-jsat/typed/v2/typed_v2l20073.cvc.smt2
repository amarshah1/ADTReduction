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

(assert (and (not ((_ is node) (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (car (ite ((_ is node) x5) (children x5) null)) (leaf zero)))) (= x3 (cons (node x4) (cons (node (ite ((_ is node) (leaf (succ x2))) (children (leaf (succ x2))) null)) (ite (is-cons (ite ((_ is node) (leaf (ite ((_ is leaf) (node (ite ((_ is node) x5) (children x5) null))) (data (node (ite ((_ is node) x5) (children x5) null))) zero))) (children (leaf (ite ((_ is leaf) (node (ite ((_ is node) x5) (children x5) null))) (data (node (ite ((_ is node) x5) (children x5) null))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is leaf) (node (ite ((_ is node) x5) (children x5) null))) (data (node (ite ((_ is node) x5) (children x5) null))) zero))) (children (leaf (ite ((_ is leaf) (node (ite ((_ is node) x5) (children x5) null))) (data (node (ite ((_ is node) x5) (children x5) null))) zero))) null)) null))))))
(check-sat)
(exit)


