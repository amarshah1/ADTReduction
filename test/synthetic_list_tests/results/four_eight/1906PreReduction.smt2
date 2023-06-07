
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
(assert (is-Nil l0) )
(assert (is-Cons l0) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l0 l2)) )
(assert (not (= l0 Nil)) )
(check-sat)
