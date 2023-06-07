
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
(assert (is-Cons l3) )
(assert (and (= l2 Nil) (= l0 l1) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l0 Nil) (is-Nil l2)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (and (= l2 Nil) (= l1 l3)) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
