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

(assert (and (and (and (and (and (and (and (not (= (ite (is-cons null) (car null) (leaf zero)) (node (ite (is-cons (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) null)))) (is-cons null)) (= x2 (ite ((_ is succ) x1) (pred x1) zero))) (not (= (ite ((_ is node) (leaf (succ (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero))))) (children (leaf (succ (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero))))) null) x3))) (not ((_ is succ) x2))) (not (= (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero) x1))) (not (= (cons x5 x3) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)))) (not (= (cons (ite (is-cons null) (car null) (leaf zero)) x4) (ite ((_ is node) x6) (children x6) null)))))
(check-sat)
(exit)


