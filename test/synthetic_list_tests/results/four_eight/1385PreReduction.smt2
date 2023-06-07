
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
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l3 l2) (= l0 Nil) (= l0 l3) (= l0 Nil)) )
(assert (and (= l2 l0) (is-Cons l3) (is-Cons l0)) )
(assert (= l1 Nil) )
(assert (is-Cons l2) )
(assert (not (= l3 l3)) )
(assert (or (is-Nil l0) (is-Cons l1)) )
(check-sat)
