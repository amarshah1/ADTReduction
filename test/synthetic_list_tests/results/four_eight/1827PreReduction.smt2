
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
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 l3) (= l0 Nil) (is-Cons Nil) (is-Cons l3)) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (and (= l0 Nil) (= l2 l2) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
