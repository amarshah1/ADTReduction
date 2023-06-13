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

(assert (and (and (and (and (and (and (and ((_ is succ) x1) (not (= x2 (succ (ite ((_ is leaf) (ite (is-cons null) (car null) (leaf zero))) (data (ite (is-cons null) (car null) (leaf zero))) zero))))) (not (is-cons x4))) ((_ is node) (node (cons (node (ite (is-cons x4) (cdr x4) null)) null)))) (= null (cons (node (ite (is-cons x3) (cdr x3) null)) (ite ((_ is node) (leaf (ite ((_ is succ) (succ (ite ((_ is succ) (succ x2)) (pred (succ x2)) zero))) (pred (succ (ite ((_ is succ) (succ x2)) (pred (succ x2)) zero))) zero))) (children (leaf (ite ((_ is succ) (succ (ite ((_ is succ) (succ x2)) (pred (succ x2)) zero))) (pred (succ (ite ((_ is succ) (succ x2)) (pred (succ x2)) zero))) zero))) null)))) ((_ is succ) (succ (succ zero)))) (not (= (ite ((_ is leaf) x6) (data x6) zero) (ite ((_ is leaf) (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (car (ite ((_ is node) x5) (children x5) null)) (leaf zero))) (data (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (car (ite ((_ is node) x5) (children x5) null)) (leaf zero))) zero)))) ((_ is null) x4)))
(check-sat)
(exit)


