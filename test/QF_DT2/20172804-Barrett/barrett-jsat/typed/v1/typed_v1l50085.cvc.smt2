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

(assert (and (and (and (and (= (ite ((_ is succ) (succ (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (leaf zero))) zero))) (pred (succ (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null)) (leaf zero))) zero))) zero) (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero))) (= (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (car (ite ((_ is node) (node null)) (children (node null)) null)) (leaf zero)) x3)) (not (= x2 x2))) (= (node (cons (leaf (ite (is-leaf (node (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) null)) (cdr (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) null)) null))) (data (node (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) null)) (cdr (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (car (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null)) (leaf zero))) null)) null))) zero)) (cons (node (cons (node null) (ite ((_ is node) (leaf (succ zero))) (children (leaf (succ zero))) null))) (cons x3 (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (cdr (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (cdr (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) null))) null))))) (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (car (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (leaf zero)))) (= null (ite ((_ is node) x3) (children x3) null))))
(check-sat)
(exit)


