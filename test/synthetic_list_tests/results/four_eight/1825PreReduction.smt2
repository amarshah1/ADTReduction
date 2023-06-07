
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
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Cons l3)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)