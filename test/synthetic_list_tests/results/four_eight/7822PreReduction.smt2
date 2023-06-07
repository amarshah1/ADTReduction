
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
(assert (or (= l2 Nil) (= l3 Nil) (= l2 Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 l1) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(check-sat)
