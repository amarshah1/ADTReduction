
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
(assert (= l0 l1) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (and (= l2 Nil) (= l0 l3) (= l0 Nil) (= l0 l1)) )
(assert (= l0 Nil) )
(assert (and (= l2 l3) (= l1 l2) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l0 l2) (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l0 Nil) (= l0 Nil)) )
(check-sat)
