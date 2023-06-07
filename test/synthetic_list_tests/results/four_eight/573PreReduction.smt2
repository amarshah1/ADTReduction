
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
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 l1)) )
(assert (or (= l3 l3) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
