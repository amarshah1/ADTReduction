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

(assert (and (and (and (and (not (= (cons (ite (is-cons (ite ((_ is node) (node (cons x3 (ite ((_ is node) (ite (is-cons x2) (car x2) (leaf zero))) (children (ite (is-cons x2) (car x2) (leaf zero))) null)))) (children (node (cons x3 (ite ((_ is node) (ite (is-cons x2) (car x2) (leaf zero))) (children (ite (is-cons x2) (car x2) (leaf zero))) null)))) null)) (car (ite ((_ is node) (node (cons x3 (ite ((_ is node) (ite (is-cons x2) (car x2) (leaf zero))) (children (ite (is-cons x2) (car x2) (leaf zero))) null)))) (children (node (cons x3 (ite ((_ is node) (ite (is-cons x2) (car x2) (leaf zero))) (children (ite (is-cons x2) (car x2) (leaf zero))) null)))) null)) (leaf zero)) (ite (is-cons (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) (cdr (ite ((_ is node) (ite (is-cons null) (car null) (leaf zero))) (children (ite (is-cons null) (car null) (leaf zero))) null)) null)) null)) (= x3 (node (ite (is-cons (ite (is-cons (ite ((_ is node) (node x2)) (children (node x2)) null)) (cdr (ite ((_ is node) (node x2)) (children (node x2)) null)) null)) (cdr (ite (is-cons (ite ((_ is node) (node x2)) (children (node x2)) null)) (cdr (ite ((_ is node) (node x2)) (children (node x2)) null)) null)) null)))) (= (ite (is-cons null) (car null) (leaf zero)) (node x2))) (not (= (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero) zero))) ((_ is leaf) (leaf (succ zero)))))
(check-sat)
(exit)


