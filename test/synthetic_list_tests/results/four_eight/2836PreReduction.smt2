
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
(assert (= l0 Nil) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Cons l2) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l2 l3) (= l3 l0)) )
(assert (is-Nil l0) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l0 Nil) (is-Nil l1)) )
(check-sat)
