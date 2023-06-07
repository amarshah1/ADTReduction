
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
(assert (is-Nil l1) )
(assert (is-Cons l2) )
(assert (and (is-Nil l3) (= l1 l1) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l1 l2) (= l0 Nil) (= l0 l3) (= l3 Nil)) )
(assert (or (is-Cons l3) (= l2 Nil) (is-Cons l2) (= l3 Nil)) )
(check-sat)
