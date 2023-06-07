
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
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 Nil) (= l3 l0) (= l3 l3) (= l1 l3)) )
(assert (or (= l2 Nil) (= l0 l0) (= l3 Nil)) )
(assert (is-Cons l3) )
(assert (or (= l0 l2) (= l0 l3) (= l2 l2)) )
(assert (not (= l1 l3)) )
(assert (is-Cons l0) )
(check-sat)
