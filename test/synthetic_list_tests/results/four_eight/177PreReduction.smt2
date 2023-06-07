
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
(assert (and (is-Nil l1) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l3 l1) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l0 l2) (= l0 Nil) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Cons l2)) )
(assert (and (= l2 Nil) (= l1 Nil)) )
(check-sat)
