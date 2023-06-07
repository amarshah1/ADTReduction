
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
(assert (and (is-Nil Nil) (= l0 Nil) (= l3 l3)) )
(assert (is-Cons l1) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(check-sat)
