
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
(assert (not (= l0 Nil)) )
(assert (not (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (= l2 l1) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l2 l2)) )
(assert (= l1 l2) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(check-sat)
