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

(assert (and (and (and (not (= (cons (ite ((_ is cons) null) (car null) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)) (cons x3 (cons (leaf (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (ite ((_ is node) (node (ite ((_ is node) (node (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null))) (children (node (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null))) null))) (children (node (ite ((_ is node) (node (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null))) (children (node (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null))) null))) null))))) (not ((_ is zero) zero))) (not ((_ is node) (node (ite ((_ is cons) null) (cdr null) null))))) (= (ite ((_ is cons) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (car (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (leaf zero)) x3)))
(check-sat)
(exit)


