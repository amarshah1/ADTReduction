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

(assert (and (and (and (and (and (and (and (and (= (car (children (car (cdr (children x3))))) (leaf x1)) (= x2 x2)) (not (= (car null) (leaf (data x3))))) (not (= (cons (leaf (pred (data (node null)))) (children (node (cons (leaf (succ x1)) (cons (car null) null))))) (cdr (cdr null))))) (not (= x2 (cons (car x2) x2)))) (not (= (node (cons (node null) (cdr (children (car null))))) (car (cons (leaf x1) (children (node (cons x3 (cons (car (cons (car (cons x3 (cons (node null) (cons x3 null)))) (cdr (cons (node (cons (car (children (car x2))) x2)) (cons x3 (cdr x2)))))) null))))))))) (not ((_ is succ) (pred x1)))) (not ((_ is node) (node (children x3))))) (not (= (succ (pred zero)) (succ (data (car (cdr x2))))))))
(check-sat)
(exit)


