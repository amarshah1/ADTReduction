
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
(assert (not (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (= l0 l3) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (= l2 Nil) (= l2 l3) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(check-sat)
