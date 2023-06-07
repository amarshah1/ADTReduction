
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
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l3 l2)) )
(assert (not (is-Cons l3)) )
(assert (= l2 l3) )
(assert (or (= l0 Nil) (is-Cons l2) (is-Cons Nil) (= l0 l0)) )
(assert (= l3 Nil) )
(assert (= l2 l3) )
(assert (= l0 Nil) )
(check-sat)
