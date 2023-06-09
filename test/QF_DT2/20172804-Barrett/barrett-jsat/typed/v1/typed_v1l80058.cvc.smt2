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

(assert (and (and (and (and (and (and (and (not (= (ite ((_ is succ) (succ (ite ((_ is succ) (succ (succ zero))) (pred (succ (succ zero))) zero))) (pred (succ (ite ((_ is succ) (succ (succ zero))) (pred (succ (succ zero))) zero))) zero) (ite ((_ is succ) zero) (pred zero) zero))) (= x3 (leaf (succ (ite ((_ is succ) x1) (pred x1) zero))))) (not ((_ is node) (ite (is-cons null) (car null) (leaf zero))))) (not (is-cons (ite (is-cons (ite (is-cons null) (cdr null) null)) (cdr (ite (is-cons null) (cdr null) null)) null)))) (not (= x2 x2))) (not ((_ is zero) zero))) (is-cons (ite ((_ is node) x3) (children x3) null))) (not (= (ite (is-cons (ite (is-cons (ite (is-cons (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) (cdr (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) null)) (cdr (ite (is-cons (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) (cdr (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) null)) null)) (car (ite (is-cons (ite (is-cons (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) (cdr (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) null)) (cdr (ite (is-cons (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) (cdr (ite (is-cons (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) (cdr (cons x3 (ite (is-cons (ite (is-cons x2) (cdr x2) null)) (cdr (ite (is-cons x2) (cdr x2) null)) null))) null)) null)) null)) (leaf zero)) (leaf x1)))))
(check-sat)
(exit)


