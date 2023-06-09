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

(assert (and (and (and (and (and (and (not (= null (children (car null)))) (not ((_ is succ) zero))) (not (= (node (cons (node (children (leaf (pred zero)))) null)) x3))) ((_ is node) (node (cons (node (cons x3 (cdr (cdr (cdr (children (car (cdr (cdr (cdr x2)))))))))) (cons (leaf x1) null))))) ((_ is cons) (cons (car (cons (node (cons (car (cons x3 null)) null)) (cdr null))) null))) (= (children (car (children (node (cons (node x2) x2))))) (cdr (cons (node x2) x2)))) (not (= (pred x1) x1))))
(check-sat)
(exit)


