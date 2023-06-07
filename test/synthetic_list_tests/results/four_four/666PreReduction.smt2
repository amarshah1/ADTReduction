
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
(assert (and (is-Nil l3) (is-Nil Nil)) )
(assert (or (= l3 l3) (= l1 Nil) (= l2 Nil)) )
(assert (and (= l0 l3) (is-Cons Nil)) )
(assert (= l1 Nil) )
(check-sat)
