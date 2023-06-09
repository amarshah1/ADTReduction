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

(assert (and (and (and (and (and (and (and (and ((_ is succ) (succ x2)) (not (= (ite ((_ is leaf) (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (car (ite ((_ is node) x5) (children x5) null)) (leaf zero))) (data (ite (is-cons (ite ((_ is node) x5) (children x5) null)) (car (ite ((_ is node) x5) (children x5) null)) (leaf zero))) zero) zero))) (is-cons x4)) (not (= (ite ((_ is leaf) (ite (is-cons (cons x6 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null))) (car (cons x6 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null))) (leaf zero))) (data (ite (is-cons (cons x6 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null))) (car (cons x6 (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null))) (leaf zero))) zero) (ite ((_ is succ) (ite ((_ is leaf) (node (ite (is-cons null) (cdr null) null))) (data (node (ite (is-cons null) (cdr null) null))) zero)) (pred (ite ((_ is leaf) (node (ite (is-cons null) (cdr null) null))) (data (node (ite (is-cons null) (cdr null) null))) zero)) zero)))) (not (is-cons (cons x5 (ite ((_ is node) x6) (children x6) null))))) (= (succ x2) zero)) ((_ is zero) (ite ((_ is leaf) (leaf x2)) (data (leaf x2)) zero))) (= x2 (succ x2))) ((_ is leaf) (leaf (succ x1)))))
(check-sat)
(exit)


