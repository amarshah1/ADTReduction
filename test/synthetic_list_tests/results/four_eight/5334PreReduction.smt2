
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
(assert (not (= l3 l1)) )
(assert (and (= l1 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l0 Nil) (= l0 Nil)) )
(assert (or (is-Cons l0) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(check-sat)
