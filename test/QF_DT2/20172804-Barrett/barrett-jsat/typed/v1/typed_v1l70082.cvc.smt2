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

(assert (and (and (and (and (and (and ((_ is zero) (ite (is-leaf (node x2)) (data (node x2)) zero)) (not (= (node x2) (leaf (ite ((_ is succ) (succ (succ (ite (is-leaf x3) (data x3) zero)))) (pred (succ (succ (ite (is-leaf x3) (data x3) zero)))) zero))))) (not ((_ is zero) zero))) (= (ite (is-leaf (node (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (cdr (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) null))) (data (node (ite ((_ is cons) (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) (cdr (ite ((_ is node) (leaf x1)) (children (leaf x1)) null)) null))) zero) (ite (is-leaf (leaf (ite ((_ is succ) x1) (pred x1) zero))) (data (leaf (ite ((_ is succ) x1) (pred x1) zero))) zero))) ((_ is cons) null)) (not ((_ is succ) (succ (succ (ite (is-leaf (ite ((_ is cons) (cons (node null) (ite ((_ is cons) null) (cdr null) null))) (car (cons (node null) (ite ((_ is cons) null) (cdr null) null))) (leaf zero))) (data (ite ((_ is cons) (cons (node null) (ite ((_ is cons) null) (cdr null) null))) (car (cons (node null) (ite ((_ is cons) null) (cdr null) null))) (leaf zero))) zero)))))) (not (is-leaf (leaf (succ (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero)))))))
(check-sat)
(exit)


