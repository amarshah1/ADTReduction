
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
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (and (= l3 l0) (= l3 l1) (= l2 l2)) )
(assert (and (is-Nil Nil) (is-Cons l3) (is-Nil l0) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(check-sat)
