
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
(assert (and (= l0 l3) (= l3 Nil) (= l3 l2)) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons l0)) )
(assert (is-Cons l3) )
(assert (not (= l2 Nil)) )
(assert (and (= l2 l0) (is-Nil l0)) )
(assert (or (is-Nil l0) (= l3 Nil) (= l2 Nil)) )
(assert (not (= l1 l2)) )
(check-sat)
