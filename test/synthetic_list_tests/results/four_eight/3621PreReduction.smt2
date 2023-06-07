
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
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l2 l1) (= l0 Nil) (is-Cons l1) (= l0 l1)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l2 l3) (is-Nil l2)) )
(assert (= l3 Nil) )
(check-sat)
