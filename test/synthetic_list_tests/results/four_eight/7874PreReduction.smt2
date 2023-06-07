
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
(assert (= l1 l2) )
(assert (and (is-Cons l1) (is-Cons Nil)) )
(assert (or (is-Nil l2) (= l1 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l3 l2) (= l2 l3)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l3 l0) (is-Cons l2)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(check-sat)
