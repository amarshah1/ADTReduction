
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
(assert (and (is-Cons Nil) (= l1 l1) (= l0 Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (= l2 Nil) )
(assert (= l1 l3) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
