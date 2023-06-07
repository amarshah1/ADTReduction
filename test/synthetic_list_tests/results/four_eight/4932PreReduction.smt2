
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
(assert (and (= l3 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (= l1 l3) (= l0 Nil)) )
(assert (not (is-Cons l0)) )
(assert (= l2 l3) )
(assert (= l2 l2) )
(assert (= l1 Nil) )
(assert (not (= l2 l0)) )
(assert (is-Nil l2) )
(check-sat)
