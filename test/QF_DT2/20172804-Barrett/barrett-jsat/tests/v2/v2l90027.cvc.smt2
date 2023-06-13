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
(declare-fun x2 () nat)
(declare-fun x3 () list)
(declare-fun x4 () list)
(declare-fun x5 () tree)
(declare-fun x6 () tree)

(assert (and (and (and (and (and (and (and (and (= (car (cdr (cons (leaf zero) x4))) (car (children (leaf x2)))) (not (= x4 (cons x5 (children x5))))) (= x3 (children (car x4)))) ((_ is zero) x1)) (not ((_ is cons) x4))) ((_ is succ) (data (car (cons (leaf (succ (data (node (cdr x4))))) null))))) ((_ is null) (cons (leaf (data (leaf zero))) (cons (node (cons x6 (children x5))) (cdr null))))) (= x6 (node (cons x5 (cons (node (cdr (cons (car x3) (cons (car (children x5)) (cons (leaf x1) x4))))) (cdr null)))))) (not (= (children (car (children x6))) (cdr (children (car x3)))))))
(check-sat)
(exit)


