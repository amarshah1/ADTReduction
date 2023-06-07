
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
(assert (and (is-Cons l3) (= l0 l2) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)