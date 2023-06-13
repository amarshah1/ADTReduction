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

(assert (and (and (and (and (and (and (= (ite ((_ is cons) x2) (car x2) (leaf zero)) (node null)) (= null null)) (not (= (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) (cons (leaf zero) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null))) (ite ((_ is cons) x2) (cdr x2) null)))) (= (ite ((_ is cons) null) (cdr null) null) (ite ((_ is node) (ite ((_ is cons) x2) (car x2) (leaf zero))) (children (ite ((_ is cons) x2) (car x2) (leaf zero))) null))) ((_ is succ) zero)) ((_ is succ) (succ (succ (succ (ite ((_ is succ) (ite (is-leaf (node x2)) (data (node x2)) zero)) (pred (ite (is-leaf (node x2)) (data (node x2)) zero)) zero)))))) (not (= (ite (is-leaf (node (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) (cons (node x2) x2)))) (data (node (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) (cons (node x2) x2)))) zero) (succ x1)))))
(check-sat)
(exit)

