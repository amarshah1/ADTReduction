
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
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil l3) (is-Nil Nil)) )
(assert (not (= l3 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(check-sat)
