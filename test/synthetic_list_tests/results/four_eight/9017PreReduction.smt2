
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
(assert (is-Cons l3) )
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (= l2 Nil)) )
(assert (and (= l0 l3) (is-Cons Nil)) )
(assert (and (= l2 l3) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l0 l3) (is-Nil Nil)) )
(check-sat)
