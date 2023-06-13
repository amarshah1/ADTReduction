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

(assert (and (and (and (and (and (and (= (ite ((_ is succ) (ite (is-leaf (node (ite ((_ is cons) null) (cdr null) null))) (data (node (ite ((_ is cons) null) (cdr null) null))) zero)) (pred (ite (is-leaf (node (ite ((_ is cons) null) (cdr null) null))) (data (node (ite ((_ is cons) null) (cdr null) null))) zero)) zero) zero) (= x3 (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (car (ite ((_ is node) (node null)) (children (node null)) null)) (leaf zero)))) (not (= (cons (leaf (succ (ite ((_ is succ) x1) (pred x1) zero))) (cons x3 null)) (cons (leaf x1) x2)))) (not (is-leaf (leaf (succ zero))))) (is-leaf (ite ((_ is cons) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (cdr (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (cdr (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) null)) (leaf zero)) (cons x3 (cons (leaf (ite ((_ is succ) x1) (pred x1) zero)) null)))) (car (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (cdr (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) (cdr (ite ((_ is node) (leaf (succ (succ zero)))) (children (leaf (succ (succ zero)))) null)) null)) (leaf zero)) (cons x3 (cons (leaf (ite ((_ is succ) x1) (pred x1) zero)) null)))) (leaf zero)))) (= (cons (leaf (succ zero)) (cons (ite ((_ is cons) (cons (leaf x1) (cons x3 x2))) (car (cons (leaf x1) (cons x3 x2))) (leaf zero)) x2)) x2)) ((_ is null) (ite ((_ is cons) (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) null)) (cdr (ite ((_ is node) (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) (children (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero))) null)) null))))
(check-sat)
(exit)

