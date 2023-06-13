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

(assert (and (and (and (= (succ (ite ((_ is succ) zero) (pred zero) zero)) x1) (not ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (leaf (succ (ite (is-leaf (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) (data (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) zero)))) (children (leaf (succ (ite (is-leaf (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) (data (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) zero)))) null)) (car (ite ((_ is node) (leaf (succ (ite (is-leaf (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) (data (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) zero)))) (children (leaf (succ (ite (is-leaf (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) (data (leaf (succ (succ (ite ((_ is succ) (succ (ite (is-leaf x3) (data x3) zero))) (pred (succ (ite (is-leaf x3) (data x3) zero))) zero))))) zero)))) null)) (leaf zero)) (cons (leaf (ite (is-leaf x3) (data x3) zero)) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) null))) (children (node (ite ((_ is cons) (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) null))) (children (node (ite ((_ is cons) (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) null)) null))) null)) null)))))) (not (= (leaf (succ (succ (succ (ite ((_ is succ) zero) (pred zero) zero))))) (ite ((_ is cons) (ite ((_ is cons) (cons x3 (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (cdr (cons x3 (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) null)) (car (ite ((_ is cons) (cons x3 (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (cdr (cons x3 (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) null)) (leaf zero))))) (= (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) null)) (leaf zero)) (node (cons x3 null)))))
(check-sat)
(exit)


