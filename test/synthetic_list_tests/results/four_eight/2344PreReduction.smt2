
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
(assert (or (= l2 Nil) (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (and (= l0 l0) (= l2 Nil)) )
(assert (and (is-Cons l2) (= l2 Nil) (is-Cons l1) (is-Nil l0)) )
(assert (and (= l0 Nil) (= l2 l2)) )
(assert (and (= l2 Nil) (is-Cons l3) (= l0 l3)) )
(assert (= l0 Nil) )
(assert (not (= l3 l1)) )
(assert (= l1 Nil) )
(check-sat)
