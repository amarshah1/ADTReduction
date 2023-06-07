
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
(assert (not (= l3 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (is-Cons l3) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l0) (= l0 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l2 l0) (is-Cons Nil) (= l1 l3)) )
(check-sat)
