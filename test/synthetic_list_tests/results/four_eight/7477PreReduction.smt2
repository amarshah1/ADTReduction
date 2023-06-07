
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
(assert (is-Cons l3) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (or (= l3 Nil) (= l2 Nil) (= l3 l0) (= l3 Nil)) )
(assert (= l0 l1) )
(assert (= l1 l2) )
(check-sat)