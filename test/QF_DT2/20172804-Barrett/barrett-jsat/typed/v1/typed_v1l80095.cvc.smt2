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

(assert (and (and (and (and (and (and (and (not ((_ is cons) x2)) ((_ is cons) (cons (leaf (succ (ite (is-leaf (node x2)) (data (node x2)) zero))) null))) (not (= (ite (is-leaf x3) (data x3) zero) x1))) (not (= null x2))) (not ((_ is cons) null))) (= (ite ((_ is succ) x1) (pred x1) zero) (ite ((_ is succ) zero) (pred zero) zero))) (not ((_ is succ) (succ x1)))) (not ((_ is node) (node (ite ((_ is cons) (cons x3 (cons (node (cons (ite ((_ is cons) null) (car null) (leaf zero)) (cons x3 (ite ((_ is node) (ite ((_ is cons) (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (car (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (leaf zero))) (children (ite ((_ is cons) (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (car (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (leaf zero))) null)))) x2))) (cdr (cons x3 (cons (node (cons (ite ((_ is cons) null) (car null) (leaf zero)) (cons x3 (ite ((_ is node) (ite ((_ is cons) (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (car (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (leaf zero))) (children (ite ((_ is cons) (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (car (cons (ite ((_ is cons) (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (car (cons (leaf x1) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null))) (leaf zero)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null))) (leaf zero))) null)))) x2))) null))))))
(check-sat)
(exit)


