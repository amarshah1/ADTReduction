
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
(assert (and (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l0) (is-Cons l1) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 l2) (= l2 Nil)) )
(assert (= l1 Nil) )
(check-sat)
