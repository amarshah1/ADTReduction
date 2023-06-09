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

(assert (and (and (and (and (and (and (and ((_ is cons) null) (not (= (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null) (cons (leaf (succ (ite (is-leaf (node x2)) (data (node x2)) zero))) null)))) (not (= zero (succ x1)))) ((_ is null) null)) (is-leaf (node (ite ((_ is cons) x2) (cdr x2) null)))) (= (ite ((_ is node) x3) (children x3) null) x2)) ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (leaf zero))) null)) (car (ite ((_ is node) (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (car (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)) (leaf zero))) null)) (leaf zero)) (ite ((_ is node) (leaf (succ x1))) (children (leaf (succ x1))) null)))) (= (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)) null)) (leaf zero)) x3)))
(check-sat)
(exit)


