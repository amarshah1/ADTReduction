
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
(assert (and (= l2 Nil) (is-Nil l3) (= l3 l3) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil) (= l3 l2)) )
(assert (and (= l3 l2) (= l0 Nil)) )
(assert (= l0 l2) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (= l3 l3) )
(assert (= l2 Nil) )
(check-sat)
