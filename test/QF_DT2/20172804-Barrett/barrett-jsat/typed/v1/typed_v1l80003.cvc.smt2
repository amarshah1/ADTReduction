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

(assert (and (and (and (and (and (and (and (not (= (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero) (ite ((_ is succ) (ite ((_ is succ) x1) (pred x1) zero)) (pred (ite ((_ is succ) x1) (pred x1) zero)) zero))) (= (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero) (succ (succ (succ x1))))) (not ((_ is leaf) (leaf (succ (ite ((_ is succ) zero) (pred zero) zero)))))) (not ((_ is null) (ite ((_ is cons) (ite ((_ is cons) (cons (ite ((_ is cons) null) (car null) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) null) (car null) (leaf zero)) x2)) null)) (cdr (ite ((_ is cons) (cons (ite ((_ is cons) null) (car null) (leaf zero)) x2)) (cdr (cons (ite ((_ is cons) null) (car null) (leaf zero)) x2)) null)) null)))) (= x1 (ite ((_ is leaf) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null)) (car (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null)) (leaf zero))) (data (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null)) (car (ite ((_ is node) (node (ite ((_ is node) x3) (children x3) null))) (children (node (ite ((_ is node) x3) (children x3) null))) null)) (leaf zero))) zero))) (not (= (node x2) (node (ite ((_ is node) (node null)) (children (node null)) null))))) ((_ is node) x3)) (not ((_ is leaf) (leaf (succ x1))))))
(check-sat)
(exit)


