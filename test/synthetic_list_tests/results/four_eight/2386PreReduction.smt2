
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
(assert (and (= l3 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (= l0 l2)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l3 Nil) (is-Nil l0) (= l1 Nil) (= l2 Nil)) )
(check-sat)
