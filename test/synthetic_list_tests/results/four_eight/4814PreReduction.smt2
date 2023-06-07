
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
(assert (and (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Cons l0) (= l1 l2) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l0) (= l3 Nil) (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (= l1 l0) )
(check-sat)
