
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
(assert (not (= l3 l0)) )
(assert (is-Nil l2) )
(assert (or (= l3 l2) (is-Nil Nil) (= l0 l2)) )
(assert (and (= l3 Nil) (= l3 l2)) )
(assert (and (is-Cons Nil) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
