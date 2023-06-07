
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
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil l3) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (not (= l3 l0)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l2) (= l0 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l3 l2)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l2 l3)) )
(check-sat)
