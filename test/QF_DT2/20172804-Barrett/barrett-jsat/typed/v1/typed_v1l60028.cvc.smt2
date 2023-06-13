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

(assert (and (and (and (and (and (= (node (ite ((_ is node) (ite ((_ is cons) (cons (leaf (succ zero)) (ite ((_ is node) (node (ite ((_ is node) (node null)) (children (node null)) null))) (children (node (ite ((_ is node) (node null)) (children (node null)) null))) null))) (car (cons (leaf (succ zero)) (ite ((_ is node) (node (ite ((_ is node) (node null)) (children (node null)) null))) (children (node (ite ((_ is node) (node null)) (children (node null)) null))) null))) (leaf zero))) (children (ite ((_ is cons) (cons (leaf (succ zero)) (ite ((_ is node) (node (ite ((_ is node) (node null)) (children (node null)) null))) (children (node (ite ((_ is node) (node null)) (children (node null)) null))) null))) (car (cons (leaf (succ zero)) (ite ((_ is node) (node (ite ((_ is node) (node null)) (children (node null)) null))) (children (node (ite ((_ is node) (node null)) (children (node null)) null))) null))) (leaf zero))) null)) (node null)) (not ((_ is null) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)))) (not ((_ is null) (ite ((_ is node) (leaf (ite ((_ is succ) zero) (pred zero) zero))) (children (leaf (ite ((_ is succ) zero) (pred zero) zero))) null)))) (not ((_ is succ) x1))) (not (= (succ x1) x1))) (= (node x2) (node (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) null)) (car (ite ((_ is node) (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) null)) (car (ite ((_ is node) (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) x3) (data x3) zero)) (pred (ite ((_ is leaf) x3) (data x3) zero)) zero)))) null)) (leaf zero))) null)))))
(check-sat)
(exit)


