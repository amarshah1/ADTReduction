
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
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l3 Nil) (= l3 l0)) )
(assert (and (is-Nil l1) (= l2 l0) (= l1 Nil) (= l1 Nil)) )
(check-sat)
