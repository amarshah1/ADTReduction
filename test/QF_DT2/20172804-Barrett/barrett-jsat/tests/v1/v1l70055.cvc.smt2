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

(assert (and (and (and (and (and (and (= (cons x3 (cdr (cons (node (cons (car x2) (cons (car null) (cdr (children (node (cdr x2))))))) (cdr (children (car null)))))) (cdr null)) (is-leaf (node (cons (car (cdr null)) null)))) (not ((_ is cons) (cdr x2)))) (not ((_ is node) (node (children (car (cdr (children (leaf x1))))))))) ((_ is zero) (succ (data (node x2))))) (= (node (cons (car (cdr (children (car (cons (leaf (pred (succ (pred x1)))) (cons (leaf x1) (children x3))))))) null)) (node x2))) (not ((_ is cons) (cons (leaf (data (node (cons (car x2) null)))) x2)))))
(check-sat)
(exit)


