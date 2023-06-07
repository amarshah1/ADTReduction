
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
(assert (or (= l2 Nil) (is-Cons l0) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l2 l3) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (and (= l0 l0) (= l2 l2) (is-Nil l2) (= l1 Nil)) )
(assert (is-Cons l3) )
(check-sat)
