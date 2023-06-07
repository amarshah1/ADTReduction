
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
(assert (or (is-Cons Nil) (= l2 Nil) (= l1 l1) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (not (= l0 l3)) )
(assert (not (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons l3) (= l3 l3)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l2 l2) (is-Nil Nil)) )
(check-sat)
