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

(assert (and (and (and (and ((_ is zero) (ite ((_ is succ) (ite (is-leaf x3) (data x3) zero)) (pred (ite (is-leaf x3) (data x3) zero)) zero)) (= (ite (is-leaf (ite ((_ is cons) null) (car null) (leaf zero))) (data (ite ((_ is cons) null) (car null) (leaf zero))) zero) (succ (succ (succ (ite (is-leaf (leaf (ite (is-leaf (node (ite ((_ is node) x3) (children x3) null))) (data (node (ite ((_ is node) x3) (children x3) null))) zero))) (data (leaf (ite (is-leaf (node (ite ((_ is node) x3) (children x3) null))) (data (node (ite ((_ is node) x3) (children x3) null))) zero))) zero)))))) (= (node x2) (node (cons (node x2) null)))) (= (cons (leaf (ite (is-leaf x3) (data x3) zero)) null) (ite ((_ is node) (leaf (ite (is-leaf x3) (data x3) zero))) (children (leaf (ite (is-leaf x3) (data x3) zero))) null))) (not (= (leaf (succ x1)) (node null)))))
(check-sat)
(exit)


