
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
(assert (= l1 Nil) )
(assert (not (is-Cons l3)) )
(assert (or (is-Nil Nil) (= l1 l0)) )
(assert (or (is-Cons Nil) (= l2 l3) (= l1 Nil) (is-Cons l2)) )
(assert (is-Cons l0) )
(assert (and (= l2 l3) (= l3 l1) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
