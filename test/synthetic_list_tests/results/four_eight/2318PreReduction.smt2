
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
(assert (not (= l2 Nil)) )
(assert (= l3 l3) )
(assert (and (= l1 Nil) (is-Nil l0) (= l2 l3) (= l0 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons l3) (= l1 Nil) (= l1 l3)) )
(assert (= l0 Nil) )
(assert (or (= l3 l2) (= l2 Nil) (= l1 Nil) (= l0 l1)) )
(assert (not (= l3 Nil)) )
(check-sat)
