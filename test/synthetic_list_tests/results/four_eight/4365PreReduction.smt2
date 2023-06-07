
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
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l0 l3) )
(assert (= l1 Nil) )
(assert (and (= l1 l2) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (not (= l3 Nil)) )
(assert (and (is-Nil l2) (= l1 Nil)) )
(check-sat)
