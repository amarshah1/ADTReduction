
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
(assert (= l3 Nil) )
(assert (and (is-Cons l1) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l0 l2) (is-Cons l0) (= l1 l1)) )
(assert (or (= l1 l3) (is-Cons l1) (is-Nil l3)) )
(assert (is-Nil l3) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(check-sat)
