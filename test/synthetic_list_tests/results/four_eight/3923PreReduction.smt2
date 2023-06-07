
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
(assert (is-Cons l1) )
(assert (and (= l2 Nil) (= l3 l2)) )
(assert (= l0 l1) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Cons l3)) )
(assert (or (= l1 l3) (= l0 Nil) (= l2 Nil) (is-Nil l3)) )
(assert (= l1 Nil) )
(check-sat)
