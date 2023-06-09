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

(assert (and (and (and (and (and (and (and (and (not ((_ is null) (children x3))) (is-leaf x3)) (= (car (cdr (children (node (cdr null))))) x3)) ((_ is cons) x2)) (= (cons (car (cdr null)) (cons (car (cdr (children (node null)))) x2)) (cdr (cdr (cdr (cons (leaf (pred (succ (pred zero)))) (cdr (children (car x2))))))))) (not (= (leaf x1) (car null)))) ((_ is node) (car (cdr null)))) (not ((_ is cons) (cons x3 (cons (car (cons (node (cdr (cons (node (children (car (cdr (cdr (children (leaf x1))))))) (cons x3 (children (node (children (car (cdr (cdr (cdr (children (car (cons (leaf (data (leaf zero))) (cdr (cdr (children (leaf (succ (pred (data (car null)))))))))))))))))))))) (cdr (cdr (cdr (cdr (children (leaf zero)))))))) x2))))) (not ((_ is node) (car (children (car (children (node null)))))))))
(check-sat)
(exit)


