
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
(assert (not (= l3 l2)) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (= l0 l1) )
(check-sat)
