
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
(assert (is-Nil Nil) )
(assert (or (= l3 l1) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (or (is-Nil l3) (= l2 l2)) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (= l2 l0)) )
(assert (and (is-Nil l3) (= l0 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
