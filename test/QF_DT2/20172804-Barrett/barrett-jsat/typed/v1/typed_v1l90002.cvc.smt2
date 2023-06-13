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

(assert (and (and (and (and (and (and (and (and (= null null) (not ((_ is node) (node null)))) (= (node null) x3)) ((_ is cons) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (not ((_ is leaf) x3))) (not (= x2 x2))) (= x1 (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero))) (not (= (ite ((_ is succ) (succ (succ x1))) (pred (succ (succ x1))) zero) (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero)))) (= zero (ite ((_ is leaf) (node (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null))) (data (node (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null))) zero))))
(check-sat)
(exit)


