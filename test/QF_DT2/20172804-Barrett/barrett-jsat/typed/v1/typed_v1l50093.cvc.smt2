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
(declare-fun x2 () list)
(declare-fun x3 () tree)

(assert (and (and (and (and (= (ite ((_ is node) x3) (children x3) null) (ite ((_ is cons) (cons (ite ((_ is cons) null) (car null) (leaf zero)) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) (cdr (cons (ite ((_ is cons) null) (car null) (leaf zero)) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) null)) ((_ is null) null)) ((_ is succ) x1)) (not (= (ite ((_ is succ) (succ (ite (is-leaf (leaf (ite (is-leaf x3) (data x3) zero))) (data (leaf (ite (is-leaf x3) (data x3) zero))) zero))) (pred (succ (ite (is-leaf (leaf (ite (is-leaf x3) (data x3) zero))) (data (leaf (ite (is-leaf x3) (data x3) zero))) zero))) zero) (ite ((_ is succ) (ite (is-leaf (ite ((_ is cons) (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (car (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (car (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (leaf zero))) zero)) (pred (ite (is-leaf (ite ((_ is cons) (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (car (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (car (ite ((_ is node) (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) (children (node (cons x3 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)))) null)) (leaf zero))) zero)) zero)))) (= (ite ((_ is cons) (cons x3 (ite ((_ is cons) (cons (ite ((_ is cons) (cons x3 x2)) (car (cons x3 x2)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons (ite ((_ is cons) (cons x3 x2)) (car (cons x3 x2)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null))) null))) (cdr (cons x3 (ite ((_ is cons) (cons (ite ((_ is cons) (cons x3 x2)) (car (cons x3 x2)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null))) (cdr (cons (ite ((_ is cons) (cons x3 x2)) (car (cons x3 x2)) (leaf zero)) (ite ((_ is cons) x2) (cdr x2) null))) null))) null) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null))))
(check-sat)
(exit)


