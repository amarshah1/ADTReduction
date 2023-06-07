
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
(assert (= l0 Nil) )
(assert (and (= l2 l0) (is-Cons l3) (= l2 l3)) )
(assert (= l2 Nil) )
(assert (not (is-Cons l0)) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(check-sat)
