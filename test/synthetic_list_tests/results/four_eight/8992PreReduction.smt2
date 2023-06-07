
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
(assert (is-Nil l3) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil) (= l2 l3)) )
(assert (and (= l3 l2) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l0 l2)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l2 l3)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 l1) (= l3 l3)) )
(assert (is-Cons Nil) )
(check-sat)
