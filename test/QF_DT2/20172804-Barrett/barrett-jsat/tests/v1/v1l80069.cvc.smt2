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

(assert (and (and (and (and (and (and (and (not ((_ is node) x3)) (= x1 (pred (data (leaf (succ x1)))))) (not (= (cons (node null) (children (node (cons (node (cons (car (cons (leaf zero) (cdr x2))) (cdr (cdr (cdr (cdr x2)))))) (cons (leaf (pred (data (leaf zero)))) (cdr x2)))))) (cdr (cdr null))))) (not (= (car null) (car (cons (leaf (data (car (cdr (cons (car x2) (cons (car (children (leaf zero))) (cdr (children (car (cdr (cdr (children (car (cons (node (cons (leaf x1) (children (node (children (car null)))))) (cdr x2))))))))))))))) (cdr (cons x3 (cons x3 (cdr (cons x3 (children (leaf x1)))))))))))) (= (cons x3 x2) (cons (leaf (pred zero)) null))) (not (= null (cdr (cons x3 x2))))) (not (= zero (data (node null))))) ((_ is cons) null)))
(check-sat)
(exit)


