
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
(assert (or (= l1 l3) (is-Nil l0) (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (= l2 l2) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (= l3 Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Cons l1) (= l1 l3) (is-Nil Nil)) )
(check-sat)
