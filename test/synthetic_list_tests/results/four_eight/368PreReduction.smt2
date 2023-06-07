
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
(assert (= l2 l0) )
(assert (and (is-Cons l2) (is-Cons l3) (= l3 l0) (is-Cons l3)) )
(assert (= l1 l3) )
(assert (= l2 Nil) )
(assert (not (is-Cons l3)) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l2 l3)) )
(assert (= l3 l1) )
(check-sat)
