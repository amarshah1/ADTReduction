
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
(assert (not (= l1 l3)) )
(assert (or (= l1 Nil) (= l1 l1) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (= l0 l3) (= l2 l0) (= l2 Nil)) )
(assert (or (is-Cons l1) (= l2 Nil) (= l3 l2)) )
(assert (and (= l3 Nil) (is-Nil l1) (= l3 Nil)) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(check-sat)