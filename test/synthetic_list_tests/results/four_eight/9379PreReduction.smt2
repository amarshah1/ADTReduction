
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
(assert (not (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l0 l3) )
(assert (is-Cons l0) )
(assert (and (= l2 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (and (is-Nil l0) (= l1 l2)) )
(assert (not (= l2 Nil)) )
(check-sat)
