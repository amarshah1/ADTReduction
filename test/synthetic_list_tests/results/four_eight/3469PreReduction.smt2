
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
(assert (or (= l2 Nil) (is-Cons Nil) (= l2 Nil) (= l3 l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l1 l3) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (= l0 Nil)) )
(check-sat)
