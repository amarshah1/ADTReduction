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

(assert (and (and (and (and (and (and ((_ is node) (car x2)) ((_ is succ) (pred (pred zero)))) (= (car (cdr (cons (car (children (node null))) null))) (node (cons (car (cons (node null) (cdr (cdr (cdr x2))))) (children (car (cons (leaf zero) (cons (node (cdr (cdr null))) null)))))))) (= (children x3) (cons (car x2) null))) (= null (children (car x2)))) (not ((_ is zero) (pred (pred x1))))) (= zero (succ (data (node (cdr (children (leaf (data x3))))))))))
(check-sat)
(exit)


