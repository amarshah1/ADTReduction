
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
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l3 l2) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(check-sat)
