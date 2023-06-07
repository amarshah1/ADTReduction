
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
(assert (and (= l3 Nil) (= l0 Nil) (is-Cons Nil) (= l0 l2)) )
(assert (and (= l3 l2) (is-Nil l3) (is-Cons Nil) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (or (is-Cons l3) (= l2 l0) (is-Nil l3)) )
(assert (is-Nil Nil) )
(check-sat)
