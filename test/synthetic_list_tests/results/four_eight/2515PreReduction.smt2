
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
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l2) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l3 l1) (is-Cons Nil)) )
(check-sat)
