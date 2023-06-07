
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
(assert (and (= l3 Nil) (is-Cons l1) (= l2 Nil) (is-Cons l2)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Nil l2) (= l3 l2)) )
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (= l0 l0) )
(assert (and (= l2 Nil) (= l1 Nil) (= l0 Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
