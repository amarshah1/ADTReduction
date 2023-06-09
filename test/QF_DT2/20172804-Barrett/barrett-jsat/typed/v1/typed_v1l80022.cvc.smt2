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

(assert (and (and (and (and (and (and (and (not (= (node null) (leaf x1))) (not (= (ite (is-leaf (leaf zero)) (data (leaf zero)) zero) (succ zero)))) (not (= (succ (succ (succ (ite ((_ is succ) (ite (is-leaf (node null)) (data (node null)) zero)) (pred (ite (is-leaf (node null)) (data (node null)) zero)) zero)))) (succ (ite (is-leaf (node null)) (data (node null)) zero))))) ((_ is node) (leaf x1))) (not ((_ is cons) x2))) (not (= (cons (ite ((_ is cons) (cons (ite ((_ is cons) null) (car null) (leaf zero)) null)) (car (cons (ite ((_ is cons) null) (car null) (leaf zero)) null)) (leaf zero)) (cons (node x2) x2)) (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)))) (= (leaf zero) (ite ((_ is cons) null) (car null) (leaf zero)))) (not (= (ite ((_ is node) x3) (children x3) null) (ite ((_ is cons) (cons (node (cons (leaf x1) x2)) null)) (cdr (cons (node (cons (leaf x1) x2)) null)) null)))))
(check-sat)
(exit)


