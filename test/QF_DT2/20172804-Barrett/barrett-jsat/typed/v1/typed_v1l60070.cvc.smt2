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

(assert (and (and (and (and (and (= (ite ((_ is cons) null) (cdr null) null) x2) (not ((_ is null) (ite ((_ is cons) null) (cdr null) null)))) (not (= (leaf (ite ((_ is succ) (ite ((_ is succ) (ite (is-leaf (leaf zero)) (data (leaf zero)) zero)) (pred (ite (is-leaf (leaf zero)) (data (leaf zero)) zero)) zero)) (pred (ite ((_ is succ) (ite (is-leaf (leaf zero)) (data (leaf zero)) zero)) (pred (ite (is-leaf (leaf zero)) (data (leaf zero)) zero)) zero)) zero)) (leaf (ite (is-leaf x3) (data x3) zero))))) (not ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)))) (not (= (node (cons (ite ((_ is cons) null) (car null) (leaf zero)) x2)) (leaf (ite ((_ is succ) zero) (pred zero) zero))))) (= (ite (is-leaf (leaf (succ x1))) (data (leaf (succ x1))) zero) (ite (is-leaf (node (cons x3 (cons x3 x2)))) (data (node (cons x3 (cons x3 x2)))) zero))))
(check-sat)
(exit)


