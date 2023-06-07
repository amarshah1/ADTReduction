
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
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l2 l2) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (not (= l0 l3)) )
(assert (= l3 Nil) )
(assert (or (= l1 l0) (is-Cons l1)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
