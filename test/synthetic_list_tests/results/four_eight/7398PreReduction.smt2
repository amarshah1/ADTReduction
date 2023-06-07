
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
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (not (is-Nil l2)) )
(assert (and (= l2 l2) (= l3 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l1 l0) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons l3) (is-Nil Nil)) )
(assert (and (= l1 l3) (= l2 Nil) (is-Cons l1)) )
(assert (not (= l2 l3)) )
(check-sat)