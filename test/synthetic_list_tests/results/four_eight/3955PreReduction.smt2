
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
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Nil l1) (= l3 l1) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 l0)) )
(assert (is-Nil Nil) )
(assert (= l3 l3) )
(check-sat)
