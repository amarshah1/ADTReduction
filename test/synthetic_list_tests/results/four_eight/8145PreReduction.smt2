
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
(assert (is-Cons Nil) )
(assert (and (= l3 l1) (= l0 Nil) (= l1 l0) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (= l0 l2) )
(assert (is-Nil l1) )
(check-sat)
