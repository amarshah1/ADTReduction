
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
(assert (or (= l1 Nil) (= l2 Nil) (= l2 Nil) (= l1 l3)) )
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil l1)) )
(assert (is-Cons l0) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l2 l1) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(check-sat)
