
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
(assert (not (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 l2) (= l2 Nil) (is-Cons Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
