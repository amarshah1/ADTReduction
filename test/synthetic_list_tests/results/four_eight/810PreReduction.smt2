
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
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (is-Cons l2) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l3 l1)) )
(check-sat)
