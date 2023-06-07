
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
(assert (= l2 l1) )
(assert (and (is-Nil l3) (is-Cons l2) (= l2 Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 l2) (is-Nil l3) (= l3 Nil)) )
(check-sat)
