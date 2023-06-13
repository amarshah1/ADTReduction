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

(assert (and (and (and (and (and (and ((_ is null) (ite ((_ is node) (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) (children (node (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) null)) (not (= x3 (ite ((_ is cons) (cons (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (car (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (car (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (leaf zero))) zero)) (cons (node null) x2))) (car (cons (leaf (ite (is-leaf (ite ((_ is cons) (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (car (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (car (ite ((_ is cons) (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) (cdr (cons (leaf (succ (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) zero))) (ite ((_ is node) x3) (children x3) null))) null)) (leaf zero))) zero)) (cons (node null) x2))) (leaf zero))))) ((_ is succ) zero)) (not ((_ is node) x3))) (not (= (ite (is-leaf (leaf (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero))) (data (leaf (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero))) zero) (ite ((_ is succ) (ite (is-leaf (node (ite ((_ is node) x3) (children x3) null))) (data (node (ite ((_ is node) x3) (children x3) null))) zero)) (pred (ite (is-leaf (node (ite ((_ is node) x3) (children x3) null))) (data (node (ite ((_ is node) x3) (children x3) null))) zero)) zero)))) (not (= (ite (is-leaf (node (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null))) (data (node (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null))) zero) zero))) ((_ is null) null)))
(check-sat)
(exit)

