
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
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (and (= l3 Nil) (= l3 l3)) )
(assert (is-Cons l1) )
(assert (or (= l2 l1) (= l2 l1) (is-Cons Nil) (is-Cons l3)) )
(assert (not (= l3 l1)) )
(assert (= l0 Nil) )
(assert (= l3 Nil) )
(check-sat)
