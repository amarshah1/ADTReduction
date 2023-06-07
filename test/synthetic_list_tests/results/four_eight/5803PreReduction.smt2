
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
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l1 l2) (is-Cons Nil) (= l3 l2)) )
(assert (and (= l1 l3) (= l1 Nil) (= l1 Nil) (is-Cons l1)) )
(assert (is-Nil l0) )
(assert (and (= l1 Nil) (= l1 Nil) (= l3 l2) (is-Cons l2)) )
(assert (or (= l2 Nil) (= l0 l3)) )
(check-sat)