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

(assert (and (and (and (and (not (is-leaf (node (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) x1) (pred x1) zero))) (pred (succ (ite ((_ is succ) x1) (pred x1) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) x1) (pred x1) zero))) (pred (succ (ite ((_ is succ) x1) (pred x1) zero))) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) x1) (pred x1) zero))) (pred (succ (ite ((_ is succ) x1) (pred x1) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) x1) (pred x1) zero))) (pred (succ (ite ((_ is succ) x1) (pred x1) zero))) zero))) null)) null)))) (not (= (ite ((_ is cons) (ite ((_ is cons) x2) (cdr x2) null)) (car (ite ((_ is cons) x2) (cdr x2) null)) (leaf zero)) (node x2)))) ((_ is succ) (ite (is-leaf (leaf x1)) (data (leaf x1)) zero))) (not (= zero zero))) (= zero (ite (is-leaf (leaf (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero))) (data (leaf (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero))) zero))))
(check-sat)
(exit)


