
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
(assert (not (is-Cons l0)) )
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (or (is-Nil l3) (is-Nil Nil)) )
(assert (and (= l0 l0) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (= l0 Nil) (= l3 l2)) )
(check-sat)
