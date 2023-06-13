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

(assert (and (and (and (and (and (and (and (and (not (= (cons (ite ((_ is cons) x2) (car x2) (leaf zero)) (ite ((_ is node) x3) (children x3) null)) null)) (not ((_ is zero) zero))) (= zero (succ zero))) (not (= (ite (is-leaf (ite ((_ is cons) x2) (car x2) (leaf zero))) (data (ite ((_ is cons) x2) (car x2) (leaf zero))) zero) (ite ((_ is succ) zero) (pred zero) zero)))) (not (= (leaf x1) x3))) (not (= null x2))) (= x2 (ite ((_ is node) x3) (children x3) null))) (not (= x1 (succ (ite ((_ is succ) x1) (pred x1) zero))))) ((_ is cons) (cons x3 (ite ((_ is cons) x2) (cdr x2) null)))))
(check-sat)
(exit)


