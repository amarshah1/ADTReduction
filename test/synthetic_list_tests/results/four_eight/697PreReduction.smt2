
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
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (is-Cons l0) (= l0 l2)) )
(assert (is-Cons l1) )
(assert (or (= l0 l3) (= l1 Nil) (= l0 Nil) (= l3 l2)) )
(assert (= l0 l0) )
(assert (is-Cons l1) )
(assert (is-Cons l0) )
(assert (is-Nil l0) )
(check-sat)
