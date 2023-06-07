
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
(assert (= l3 l0) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (= l1 l0) )
(assert (= l0 Nil) )
(assert (= l1 l0) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(check-sat)
