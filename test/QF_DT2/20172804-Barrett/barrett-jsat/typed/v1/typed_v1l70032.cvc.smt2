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

(assert (and (and (and (and (and (and (not (= (ite ((_ is cons) (cons (node (ite ((_ is cons) null) (cdr null) null)) (cons (node (ite ((_ is node) (node (cons x3 null))) (children (node (cons x3 null))) null)) null))) (car (cons (node (ite ((_ is cons) null) (cdr null) null)) (cons (node (ite ((_ is node) (node (cons x3 null))) (children (node (cons x3 null))) null)) null))) (leaf zero)) (node (ite ((_ is node) x3) (children x3) null)))) (= (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (leaf zero)) null)) null)) (cdr (ite ((_ is cons) (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (car (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (car (ite ((_ is node) (node (cons x3 x2))) (children (node (cons x3 x2))) null)) (leaf zero))) null))) (leaf zero)) null)) null)) null) null)) (is-leaf (ite ((_ is cons) null) (car null) (leaf zero)))) (not (= x2 (ite ((_ is node) (node x2)) (children (node x2)) null)))) ((_ is zero) (ite ((_ is succ) x1) (pred x1) zero))) (= (node (ite ((_ is node) (node (ite ((_ is node) (leaf (succ (ite (is-leaf (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) (data (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) zero)))) (children (leaf (succ (ite (is-leaf (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) (data (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) zero)))) null))) (children (node (ite ((_ is node) (leaf (succ (ite (is-leaf (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) (data (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) zero)))) (children (leaf (succ (ite (is-leaf (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) (data (leaf (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) zero)))) null))) null)) x3)) (not (= x2 null))))
(check-sat)
(exit)


