
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
(assert (= l1 Nil) )
(assert (or (= l2 l3) (= l3 Nil) (= l3 Nil)) )
(assert (is-Nil l3) )
(assert (or (is-Nil l1) (= l2 Nil) (is-Cons l3)) )
(assert (and (is-Cons Nil) (is-Cons l2) (= l2 Nil)) )
(assert (and (= l0 l0) (= l0 l0) (is-Cons l0)) )
(assert (is-Cons Nil) )
(check-sat)
