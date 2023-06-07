
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
(assert (= l2 l0) )
(assert (or (= l2 Nil) (= l2 l0) (= l1 l3)) )
(assert (= l3 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)
