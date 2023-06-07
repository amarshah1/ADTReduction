
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
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 l1)) )
(assert (or (= l1 Nil) (= l0 Nil) (= l2 l0)) )
(assert (= l1 l3) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (is-Nil l2) (= l1 l3) (= l3 l1)) )
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (= l3 l3)) )
(check-sat)