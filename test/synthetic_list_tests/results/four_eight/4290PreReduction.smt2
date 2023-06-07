
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
(assert (and (is-Cons l3) (= l0 l3) (= l2 Nil) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil l3) (= l2 Nil) (= l0 l2) (is-Nil Nil)) )
(assert (or (= l3 l3) (= l2 l3) (= l0 Nil) (= l2 l2)) )
(check-sat)
