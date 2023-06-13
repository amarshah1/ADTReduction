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

(assert (and (and (and (and (and (and (= (ite ((_ is node) x6) (children x6) null) null) (not (= x1 (ite (is-leaf (node (ite (is-cons null) (cdr null) null))) (data (node (ite (is-cons null) (cdr null) null))) zero)))) (not (= zero x1))) (= null (ite ((_ is node) (ite (is-cons (cons x6 x3)) (car (cons x6 x3)) (leaf zero))) (children (ite (is-cons (cons x6 x3)) (car (cons x6 x3)) (leaf zero))) null))) ((_ is node) (leaf x1))) (not (is-cons (ite (is-cons null) (cdr null) null)))) (not (= x6 x6))))
(check-sat)
(exit)


