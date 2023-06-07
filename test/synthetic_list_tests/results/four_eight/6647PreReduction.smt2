
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
(assert (not (= l1 l0)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l2 l3) (= l0 l0)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Cons l1) (is-Nil Nil) (= l0 Nil) (= l3 l3)) )
(assert (is-Cons l3) )
(assert (= l2 l3) )
(assert (= l1 Nil) )
(assert (or (= l3 Nil) (= l1 l1) (= l2 Nil) (= l3 Nil)) )
(check-sat)
