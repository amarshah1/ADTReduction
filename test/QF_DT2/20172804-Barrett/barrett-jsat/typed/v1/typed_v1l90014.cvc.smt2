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

(assert (and (and (and (and (and (and (and (and (not (= (cons (leaf x1) x2) (ite ((_ is cons) null) (cdr null) null))) (not (= (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is cons) (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) (cdr (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) null)) (cdr (ite ((_ is cons) (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) (cdr (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) null)) null)) (cdr (ite ((_ is cons) (ite ((_ is cons) (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) (cdr (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) null)) (cdr (ite ((_ is cons) (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) (cdr (cons (leaf (succ (ite ((_ is leaf) (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) (data (ite ((_ is cons) (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (car (cons (leaf zero) (ite ((_ is cons) x2) (cdr x2) null))) (leaf zero))) zero))) (cons (ite ((_ is cons) (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (car (ite ((_ is cons) (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) (cdr (ite ((_ is node) (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) (children (node (ite ((_ is cons) (ite ((_ is node) (node null)) (children (node null)) null)) (cdr (ite ((_ is node) (node null)) (children (node null)) null)) null))) null)) null)) (leaf zero)) (ite ((_ is cons) (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) (cdr (ite ((_ is node) (leaf (ite ((_ is succ) x1) (pred x1) zero))) (children (leaf (ite ((_ is succ) x1) (pred x1) zero))) null)) null)))) null)) null)) null) (ite ((_ is node) (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) (leaf (ite ((_ is leaf) x3) (data x3) zero))) (data (leaf (ite ((_ is leaf) x3) (data x3) zero))) zero)) (pred (ite ((_ is leaf) (leaf (ite ((_ is leaf) x3) (data x3) zero))) (data (leaf (ite ((_ is leaf) x3) (data x3) zero))) zero)) zero)))) (children (leaf (succ (ite ((_ is succ) (ite ((_ is leaf) (leaf (ite ((_ is leaf) x3) (data x3) zero))) (data (leaf (ite ((_ is leaf) x3) (data x3) zero))) zero)) (pred (ite ((_ is leaf) (leaf (ite ((_ is leaf) x3) (data x3) zero))) (data (leaf (ite ((_ is leaf) x3) (data x3) zero))) zero)) zero)))) null)))) (= (node (ite ((_ is node) x3) (children x3) null)) (node (ite ((_ is cons) (ite ((_ is cons) null) (cdr null) null)) (cdr (ite ((_ is cons) null) (cdr null) null)) null)))) (not ((_ is node) (leaf (ite ((_ is leaf) x3) (data x3) zero))))) (not (= (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (cdr (ite ((_ is node) x3) (children x3) null)) null) null))) (not (= (cons (ite ((_ is cons) (ite ((_ is node) x3) (children x3) null)) (car (ite ((_ is node) x3) (children x3) null)) (leaf zero)) (ite ((_ is node) (leaf zero)) (children (leaf zero)) null)) (ite ((_ is node) (ite ((_ is cons) null) (car null) (leaf zero))) (children (ite ((_ is cons) null) (car null) (leaf zero))) null)))) (= (ite ((_ is succ) (ite ((_ is succ) zero) (pred zero) zero)) (pred (ite ((_ is succ) zero) (pred zero) zero)) zero) x1)) (not (= (ite ((_ is succ) (succ zero)) (pred (succ zero)) zero) (ite ((_ is leaf) (node null)) (data (node null)) zero)))) ((_ is null) null)))
(check-sat)
(exit)


