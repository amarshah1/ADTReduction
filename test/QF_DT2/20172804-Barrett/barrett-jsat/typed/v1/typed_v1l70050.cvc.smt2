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

(assert (and (and (and (and (and (and ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero)) zero)) zero)) (not (is-leaf (leaf x1)))) ((_ is zero) (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero))) (not (= null (cons (ite ((_ is cons) (cons (ite ((_ is cons) null) (car null) (leaf zero)) x2)) (car (cons (ite ((_ is cons) null) (car null) (leaf zero)) x2)) (leaf zero)) x2)))) (not (= (leaf x1) x3))) (= (node null) (leaf (ite (is-leaf (node (cons x3 (ite ((_ is cons) (cons (node x2) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (leaf zero)) (ite ((_ is cons) (cons (leaf zero) x2)) (cdr (cons (leaf zero) x2)) null)))) (cdr (cons (node x2) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (leaf zero)) (ite ((_ is cons) (cons (leaf zero) x2)) (cdr (cons (leaf zero) x2)) null)))) null)))) (data (node (cons x3 (ite ((_ is cons) (cons (node x2) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (leaf zero)) (ite ((_ is cons) (cons (leaf zero) x2)) (cdr (cons (leaf zero) x2)) null)))) (cdr (cons (node x2) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null)) (leaf zero)) (ite ((_ is cons) (cons (leaf zero) x2)) (cdr (cons (leaf zero) x2)) null)))) null)))) zero)))) (= (ite (is-leaf x3) (data x3) zero) (ite (is-leaf (leaf (ite ((_ is succ) (succ (ite (is-leaf (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) (data (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) zero))) (pred (succ (ite (is-leaf (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) (data (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) zero))) zero))) (data (leaf (ite ((_ is succ) (succ (ite (is-leaf (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) (data (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) zero))) (pred (succ (ite (is-leaf (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) (data (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) zero))) zero))) zero))))
(check-sat)
(exit)


