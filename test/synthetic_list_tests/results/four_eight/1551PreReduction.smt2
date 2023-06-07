
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
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons l3)) )
(assert (= l3 Nil) )
(assert (is-Nil l3) )
(assert (not (= l1 l0)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (= l1 l3) )
(assert (= l2 Nil) )
(check-sat)
