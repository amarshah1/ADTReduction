
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
(assert (= l0 l0) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l3 l3) (= l3 l2)) )
(assert (not (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
