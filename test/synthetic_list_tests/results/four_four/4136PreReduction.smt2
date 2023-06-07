
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
(assert (= l2 Nil) )
(assert (and (= l2 Nil) (is-Nil l1) (= l3 l0)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(check-sat)