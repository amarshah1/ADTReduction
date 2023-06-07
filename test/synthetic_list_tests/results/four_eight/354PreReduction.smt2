
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
(assert (or (= l2 Nil) (= l3 Nil) (= l3 l3) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 l3) (= l1 l1)) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil l3) (= l2 Nil) (= l3 Nil)) )
(assert (and (= l1 l3) (= l3 Nil) (= l2 Nil)) )
(check-sat)
