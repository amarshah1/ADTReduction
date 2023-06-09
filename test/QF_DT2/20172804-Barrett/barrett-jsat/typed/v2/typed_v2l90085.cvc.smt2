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

(assert (and (and (and (and (and (and (and (and (not (= (cons x5 x4) x3)) (= (ite ((_ is succ) x1) (pred x1) zero) (succ x1))) (not ((_ is null) (ite (is-cons (ite (is-cons x3) (cdr x3) null)) (cdr (ite (is-cons x3) (cdr x3) null)) null)))) (not ((_ is succ) x2))) ((_ is zero) (succ (succ (ite ((_ is succ) x2) (pred x2) zero))))) (not (= x2 zero))) (= x1 (ite (is-leaf x5) (data x5) zero))) ((_ is null) (ite (is-cons (ite ((_ is node) (node (ite (is-cons (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) (cdr (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) null))) (children (node (ite (is-cons (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) (cdr (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) null))) null)) (cdr (ite ((_ is node) (node (ite (is-cons (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) (cdr (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) null))) (children (node (ite (is-cons (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) (cdr (cons (leaf x1) (cons (leaf zero) (cons (leaf zero) (cons (ite (is-cons (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (car (cons (node (cons x5 (ite (is-cons null) (cdr null) null))) (ite ((_ is node) x6) (children x6) null))) (leaf zero)) (ite ((_ is node) x6) (children x6) null)))))) null))) null)) null))) (is-leaf (leaf x1))))
(check-sat)
(exit)


