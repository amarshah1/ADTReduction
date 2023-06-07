
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 Nil) (= l3 l0) (is-Cons Nil) (= l3 l0)) )
(assert (and (= l2 l1) (is-Nil l0) (is-Nil Nil)) )
(assert (not (= l1 l1)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l3 l0) (is-Nil Nil)) )
(check-sat)
