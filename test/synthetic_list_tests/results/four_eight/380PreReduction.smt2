
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
(assert (and (= l2 l0) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil l3) )
(assert (= l2 Nil) )
(assert (not (is-Cons l3)) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 l0) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil l0) )
(check-sat)
