
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
(assert (not (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(check-sat)
