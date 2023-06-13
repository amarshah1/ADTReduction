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

(assert (and (and (and (and (and (and (and (= (children (node (cdr x2))) null) ((_ is cons) (children (car null)))) (= x2 (children (node (cons (leaf (succ (succ (pred x1)))) (cdr (cons (node null) (children (node (cdr (cons x3 (cons (node x2) (children x3))))))))))))) (not (is-leaf (leaf zero)))) (not ((_ is cons) x2))) (= x3 (node (cons (node (cdr (cons (car null) x2))) (children (node x2)))))) (not ((_ is succ) (data (node null))))) (not (= (children (car (cdr null))) (cdr (cons x3 x2))))))
(check-sat)
(exit)

