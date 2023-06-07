
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
(assert (not (is-Cons l0)) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
