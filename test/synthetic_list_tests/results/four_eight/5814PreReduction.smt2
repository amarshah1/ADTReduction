
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
(assert (is-Nil Nil) )
(assert (or (= l2 l0) (= l2 l1)) )
(assert (or (is-Cons l3) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (= l3 l2) )
(assert (= l2 Nil) )
(check-sat)
