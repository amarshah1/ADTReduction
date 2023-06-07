
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
(assert (= l1 l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (= l3 l3) (= l0 Nil) (= l1 l1)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l0) (= l0 l2) (= l3 l3) (is-Nil l2)) )
(assert (= l0 Nil) )
(check-sat)
