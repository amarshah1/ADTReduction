
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
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 l0) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (and (= l2 l1) (= l1 l0)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)