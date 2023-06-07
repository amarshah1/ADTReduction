
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
(assert (and (= l1 l2) (= l3 l0) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (= l3 l2) )
(assert (or (= l0 l3) (= l1 l3)) )
(assert (not (= l0 Nil)) )
(check-sat)
