
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
(assert (= l2 l3) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l1) (is-Nil Nil) (= l3 Nil) (= l3 l3)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l1) (= l3 Nil)) )
(check-sat)
