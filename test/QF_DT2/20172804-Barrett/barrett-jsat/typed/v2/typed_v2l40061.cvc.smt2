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

(assert (and (and (and (= (ite (is-cons (ite (is-cons (ite (is-cons (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) null)) null)) (car (ite (is-cons (ite (is-cons (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) (children (leaf (ite ((_ is succ) (ite (is-leaf (node x3)) (data (node x3)) zero)) (pred (ite (is-leaf (node x3)) (data (node x3)) zero)) zero))) null)) null)) null)) (leaf zero)) (ite (is-cons (ite ((_ is node) x6) (children x6) null)) (car (ite ((_ is node) x6) (children x6) null)) (leaf zero))) (not ((_ is null) (cons (ite (is-cons x3) (car x3) (leaf zero)) x3)))) ((_ is node) (leaf (succ (succ (succ (ite ((_ is succ) (ite ((_ is succ) (succ (ite ((_ is succ) x2) (pred x2) zero))) (pred (succ (ite ((_ is succ) x2) (pred x2) zero))) zero)) (pred (ite ((_ is succ) (succ (ite ((_ is succ) x2) (pred x2) zero))) (pred (succ (ite ((_ is succ) x2) (pred x2) zero))) zero)) zero))))))) (= (succ (succ (succ (succ (ite ((_ is succ) (ite (is-leaf x5) (data x5) zero)) (pred (ite (is-leaf x5) (data x5) zero)) zero))))) (ite (is-leaf (ite (is-cons x4) (car x4) (leaf zero))) (data (ite (is-cons x4) (car x4) (leaf zero))) zero))))
(check-sat)
(exit)


