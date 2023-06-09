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

(assert (and (and (and (and ((_ is succ) (ite (is-leaf (ite ((_ is cons) null) (car null) (leaf zero))) (data (ite ((_ is cons) null) (car null) (leaf zero))) zero)) (= x3 (leaf (ite ((_ is succ) (ite ((_ is succ) (ite ((_ is succ) (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) (pred (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) zero)) (pred (ite ((_ is succ) (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) (pred (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) zero)) zero)) (pred (ite ((_ is succ) (ite ((_ is succ) (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) (pred (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) zero)) (pred (ite ((_ is succ) (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) (pred (succ (ite (is-leaf (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) (data (leaf (ite (is-leaf (leaf zero)) (data (leaf zero)) zero))) zero))) zero)) zero)) zero)))) (not (= x2 (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null)))) (not ((_ is succ) zero))) (not (= x3 x3))))
(check-sat)
(exit)


