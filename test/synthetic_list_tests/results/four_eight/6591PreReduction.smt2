
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
(assert (not (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (= l0 Nil) (is-Nil l3) (= l0 Nil)) )
(check-sat)