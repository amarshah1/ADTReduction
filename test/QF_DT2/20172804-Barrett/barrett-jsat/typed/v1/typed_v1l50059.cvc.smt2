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
(set-info :status sat)


(declare-datatypes ((nat 0)(list 0)(tree 0)) (((succ (pred nat)) (zero))
((cons (car tree) (cdr list)) (null))
((node (children list)) (leaf (data nat)))
))
(declare-fun x1 () nat)
(declare-fun x2 () list)
(declare-fun x3 () tree)

(assert (and (and (and (and (is-leaf (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (car (ite ((_ is cons) null) (cdr null) null)) (leaf zero))) (not (= (ite ((_ is node) x3) (children x3) null) x2))) (= (ite ((_ is succ) (succ x1)) (pred (succ x1)) zero) (ite (is-leaf (node (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (car (ite ((_ is cons) null) (cdr null) null)) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (car (ite ((_ is cons) null) (cdr null) null)) (leaf zero)) null)) null))) (data (node (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (car (ite ((_ is cons) null) (cdr null) null)) (leaf zero)) null)) (cdr (cons (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (car (ite ((_ is cons) null) (cdr null) null)) (leaf zero)) null)) null))) zero))) (= (node x2) (node (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)))) (= x2 (ite ((_ is cons) x2) (cdr x2) null))))
(check-sat)
(exit)

