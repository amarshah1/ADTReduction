
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
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (= l3 l3) )
(assert (and (= l3 l0) (= l1 Nil) (= l1 l2)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l3) (is-Nil l0) (= l2 Nil) (= l3 l1)) )
(check-sat)
