
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
(assert (= l2 l0) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (or (= l0 l3) (= l2 l2)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil) (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (= l3 Nil) )
(check-sat)
