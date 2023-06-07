
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
(assert (is-Nil l3) )
(assert (or (= l1 Nil) (= l2 l2)) )
(assert (or (is-Cons l2) (= l2 Nil) (= l3 l1) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l3 l2) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (or (is-Cons l2) (= l0 Nil)) )
(check-sat)
