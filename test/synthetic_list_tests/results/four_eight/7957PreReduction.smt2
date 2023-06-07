
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
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(assert (= l0 l2) )
(assert (or (is-Cons l3) (= l2 l3) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l0 l0)) )
(check-sat)
