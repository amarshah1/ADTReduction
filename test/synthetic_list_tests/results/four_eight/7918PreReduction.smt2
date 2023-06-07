
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
(assert (and (= l1 Nil) (= l3 l3) (is-Nil l0)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Cons l0)) )
(assert (= l0 Nil) )
(assert (is-Nil l3) )
(assert (or (= l3 l3) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l2 l1) (= l1 Nil)) )
(assert (is-Cons l3) )
(check-sat)
