
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
(assert (is-Cons l2) )
(assert (and (= l3 l0) (= l1 l1)) )
(assert (= l1 Nil) )
(assert (and (= l2 l3) (= l0 Nil) (= l2 Nil) (is-Nil l0)) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 l3) (= l2 l3)) )
(check-sat)
