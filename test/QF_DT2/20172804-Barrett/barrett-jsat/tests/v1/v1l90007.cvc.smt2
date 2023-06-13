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

(assert (and (and (and (and (and (and (and (and ((_ is cons) (cons (node (children (node (cons (node (cdr (cdr null))) x2)))) null)) (not (= (cdr (cons x3 (cons (node null) (cdr (children (node x2)))))) null))) ((_ is cons) (children (car null)))) (is-leaf (leaf (data (car (children (car x2))))))) (not (= (children (node (children (leaf (succ (data (leaf (succ (succ zero))))))))) (cons (node (cons (leaf (succ (succ (pred x1)))) x2)) null)))) (not ((_ is null) x2))) (= (car null) x3)) (= (leaf (data x3)) (car (children x3)))) ((_ is cons) (cdr (cons x3 (cdr (cdr x2)))))))
(check-sat)
(exit)


