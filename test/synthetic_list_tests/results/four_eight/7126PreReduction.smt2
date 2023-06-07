
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
(assert (or (is-Cons l3) (= l3 Nil) (= l2 l3)) )
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l0)) )
(assert (= l3 Nil) )
(check-sat)
