
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
(assert (or (= l0 Nil) (= l1 Nil) (= l3 l0) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l0 l0) (= l1 l3) (is-Nil l3)) )
(assert (= l0 l2) )
(assert (and (= l3 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l0 l3) )
(check-sat)
