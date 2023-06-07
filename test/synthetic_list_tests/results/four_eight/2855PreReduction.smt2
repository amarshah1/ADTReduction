
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
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (not (is-Cons l0)) )
(assert (not (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 l1)) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l0) (is-Nil Nil) (is-Cons Nil) (= l3 l2)) )
(check-sat)
