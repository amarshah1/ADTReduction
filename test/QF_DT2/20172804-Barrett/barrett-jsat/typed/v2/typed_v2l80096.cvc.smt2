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

(assert (and (and (and (and (and (and (and (is-cons (ite ((_ is node) (leaf x2)) (children (leaf x2)) null)) (not (is-cons (ite (is-cons (cons x5 (cons (ite (is-cons x3) (car x3) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))) (cdr (cons x5 (cons (ite (is-cons x3) (car x3) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))) null)))) ((_ is node) x6)) (not (= (node null) (ite (is-cons (ite (is-cons null) (cdr null) null)) (car (ite (is-cons null) (cdr null) null)) (leaf zero))))) (not (= (ite ((_ is node) (leaf x2)) (children (leaf x2)) null) (cons x5 (ite (is-cons x4) (cdr x4) null))))) (not (= (leaf zero) x6))) ((_ is leaf) (node (ite (is-cons x3) (cdr x3) null)))) (not (= zero (ite ((_ is succ) x2) (pred x2) zero)))))
(check-sat)
(exit)


