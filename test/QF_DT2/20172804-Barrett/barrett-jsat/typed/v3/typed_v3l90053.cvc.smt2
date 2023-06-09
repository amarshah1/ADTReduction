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
(declare-fun x3 () nat)
(declare-fun x4 () list)
(declare-fun x5 () list)
(declare-fun x6 () list)
(declare-fun x7 () tree)
(declare-fun x8 () tree)
(declare-fun x9 () tree)

(assert (and (and (and (and (and (and (and (and (= (node x4) (node (ite (is-cons (ite ((_ is node) x9) (children x9) null)) (cdr (ite ((_ is node) x9) (children x9) null)) null))) (not ((_ is null) x5))) ((_ is zero) (succ zero))) (= x8 (leaf (succ x1)))) ((_ is node) x8)) (not ((_ is zero) (ite (is-leaf x9) (data x9) zero)))) (= (ite (is-leaf (ite (is-cons (ite ((_ is node) (node null)) (children (node null)) null)) (car (ite ((_ is node) (node null)) (children (node null)) null)) (leaf zero))) (data (ite (is-cons (ite ((_ is node) (node null)) (children (node null)) null)) (car (ite ((_ is node) (node null)) (children (node null)) null)) (leaf zero))) zero) (ite (is-leaf x8) (data x8) zero))) ((_ is succ) (succ zero))) (= x3 x3)))
(check-sat)
(exit)


