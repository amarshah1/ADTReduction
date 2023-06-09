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

(assert (and (and (and (and (and (and (= x2 (ite ((_ is node) x3) (children x3) null)) (not (is-leaf (ite ((_ is cons) null) (car null) (leaf zero))))) (is-leaf x3)) (not ((_ is succ) (succ (ite (is-leaf (ite ((_ is cons) (cons (node x2) (cons (ite ((_ is cons) (cons (node x2) x2)) (car (cons (node x2) x2)) (leaf zero)) null))) (car (cons (node x2) (cons (ite ((_ is cons) (cons (node x2) x2)) (car (cons (node x2) x2)) (leaf zero)) null))) (leaf zero))) (data (ite ((_ is cons) (cons (node x2) (cons (ite ((_ is cons) (cons (node x2) x2)) (car (cons (node x2) x2)) (leaf zero)) null))) (car (cons (node x2) (cons (ite ((_ is cons) (cons (node x2) x2)) (car (cons (node x2) x2)) (leaf zero)) null))) (leaf zero))) zero))))) (not ((_ is node) (node (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null))))) (not (= (leaf (ite (is-leaf x3) (data x3) zero)) (ite ((_ is cons) (cons x3 x2)) (car (cons x3 x2)) (leaf zero))))) (not (= (succ (succ (ite (is-leaf (leaf (succ (ite ((_ is succ) (succ (ite (is-leaf (node x2)) (data (node x2)) zero))) (pred (succ (ite (is-leaf (node x2)) (data (node x2)) zero))) zero)))) (data (leaf (succ (ite ((_ is succ) (succ (ite (is-leaf (node x2)) (data (node x2)) zero))) (pred (succ (ite (is-leaf (node x2)) (data (node x2)) zero))) zero)))) zero))) (ite ((_ is succ) zero) (pred zero) zero)))))
(check-sat)
(exit)


