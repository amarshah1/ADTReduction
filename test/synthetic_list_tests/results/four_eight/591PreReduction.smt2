
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
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l3 Nil) (= l3 l3) (= l2 l3) (= l0 Nil)) )
(assert (or (is-Nil l2) (= l1 l2)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l2 Nil) (= l3 l3)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(check-sat)
