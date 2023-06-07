
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
(assert (or (is-Nil l3) (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons l1) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (or (= l3 Nil) (= l3 l2) (= l1 Nil)) )
(assert (= l1 l2) )
(assert (not (is-Cons l1)) )
(check-sat)
