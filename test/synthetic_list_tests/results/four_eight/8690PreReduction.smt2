
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
(assert (and (is-Cons l3) (= l2 Nil)) )
(assert (or (= l3 l2) (= l2 Nil) (= l3 Nil) (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil l1) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons l2)) )
(assert (= l0 Nil) )
(assert (or (= l3 l1) (is-Cons l1)) )
(assert (or (= l1 Nil) (= l3 l1)) )
(check-sat)
