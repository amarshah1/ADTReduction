
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
(assert (or (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l2 l3) (= l0 Nil) (is-Nil l1)) )
(assert (and (= l0 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
