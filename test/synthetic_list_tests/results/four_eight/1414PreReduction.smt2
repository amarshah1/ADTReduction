
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
(assert (or (is-Cons l0) (= l1 Nil) (is-Cons Nil) (is-Cons l2)) )
(assert (= l1 l1) )
(assert (not (= l1 l2)) )
(assert (is-Cons l2) )
(assert (or (= l0 l0) (= l2 Nil)) )
(assert (and (= l2 l1) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
