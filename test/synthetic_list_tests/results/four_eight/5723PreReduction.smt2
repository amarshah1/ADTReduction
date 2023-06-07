
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
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Cons Nil) (= l1 l0)) )
(assert (= l2 l0) )
(assert (or (= l1 Nil) (= l1 Nil) (= l2 l0)) )
(assert (= l3 Nil) )
(assert (and (is-Cons l0) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
