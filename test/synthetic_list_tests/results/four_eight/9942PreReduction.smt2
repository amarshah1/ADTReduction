
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
(assert (or (= l2 Nil) (= l2 Nil) (is-Nil Nil) (is-Cons l1)) )
(assert (and (= l1 Nil) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l3 l0)) )
(assert (is-Cons l2) )
(assert (or (is-Cons l2) (= l1 Nil) (= l2 l2)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l0 l3) (= l3 l2)) )
(assert (is-Cons l3) )
(assert (or (= l3 l2) (is-Cons l3)) )
(check-sat)
