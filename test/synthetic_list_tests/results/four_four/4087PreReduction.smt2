
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
(assert (or (is-Nil Nil) (is-Cons l0) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l3) (= l1 l0) (= l3 Nil) (is-Cons l1)) )
(check-sat)