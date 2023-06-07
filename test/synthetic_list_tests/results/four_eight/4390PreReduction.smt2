
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
(assert (= l3 Nil) )
(assert (and (= l0 l0) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons l1) )
(assert (not (= l1 l1)) )
(assert (or (is-Cons Nil) (= l2 l3) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(check-sat)
