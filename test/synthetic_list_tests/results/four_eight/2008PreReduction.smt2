
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
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l2) (= l1 l1) (= l1 Nil) (is-Nil l2)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Cons l2)) )
(assert (= l3 Nil) )
(assert (and (= l0 l3) (is-Cons Nil) (= l3 l1) (is-Nil Nil)) )
(check-sat)
