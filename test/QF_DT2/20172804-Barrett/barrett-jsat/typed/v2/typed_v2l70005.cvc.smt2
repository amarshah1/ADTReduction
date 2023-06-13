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
(declare-fun x2 () nat)
(declare-fun x3 () list)
(declare-fun x4 () list)
(declare-fun x5 () tree)
(declare-fun x6 () tree)

(assert (and (and (and (and (and (and (not (= (ite (is-leaf (ite (is-cons (ite ((_ is node) x6) (children x6) null)) (car (ite ((_ is node) x6) (children x6) null)) (leaf zero))) (data (ite (is-cons (ite ((_ is node) x6) (children x6) null)) (car (ite ((_ is node) x6) (children x6) null)) (leaf zero))) zero) x2)) ((_ is zero) x2)) (= (leaf (ite (is-leaf x5) (data x5) zero)) (ite (is-cons x4) (car x4) (leaf zero)))) (not (= (node (ite ((_ is node) x6) (children x6) null)) x5))) (not ((_ is node) (leaf (succ (ite (is-leaf x6) (data x6) zero)))))) ((_ is zero) x2)) (= x6 x5)))
(check-sat)
(exit)

