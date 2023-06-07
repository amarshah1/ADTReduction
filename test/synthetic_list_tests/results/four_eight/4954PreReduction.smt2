
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
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons l0) (is-Nil l3)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (or (= l2 Nil) (is-Nil l3) (is-Nil l1)) )
(assert (or (is-Cons l2) (= l1 Nil) (= l2 Nil)) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(check-sat)
