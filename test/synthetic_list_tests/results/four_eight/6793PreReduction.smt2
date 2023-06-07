
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
(assert (and (= l0 Nil) (= l3 Nil)) )
(assert (is-Nil l2) )
(assert (not (is-Cons l0)) )
(assert (and (= l0 l1) (is-Nil l0) (= l1 l1) (= l3 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons l1) )
(check-sat)
