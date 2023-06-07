
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
(assert (= l0 Nil) )
(assert (or (is-Cons l2) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Cons l2) )
(assert (not (= l2 Nil)) )
(assert (or (= l3 l3) (is-Cons Nil) (is-Cons Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(check-sat)
