
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
(assert (not (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (= l3 l3) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l1 Nil) (is-Nil l3)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
