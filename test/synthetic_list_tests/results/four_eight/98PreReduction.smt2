
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
(assert (and (= l0 l3) (= l1 l2)) )
(assert (or (is-Nil l3) (is-Cons l1) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Nil l1)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (or (is-Nil l1) (= l3 Nil) (= l2 l0) (is-Cons l2)) )
(check-sat)
