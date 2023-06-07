
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
(assert (or (= l2 Nil) (is-Cons l2) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (is-Cons l3) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(check-sat)
