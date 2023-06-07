
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
(assert (and (= l1 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Nil l2)) )
(assert (or (= l0 l2) (= l3 Nil) (= l2 l3)) )
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (is-Nil l3)) )
(assert (and (= l2 l0) (= l1 Nil) (is-Nil Nil)) )
(check-sat)