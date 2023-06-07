
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
(assert (is-Cons Nil) )
(assert (or (= l3 l3) (= l0 l3) (= l3 l2) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Cons l3)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons l0)) )
(assert (and (is-Nil Nil) (is-Cons l1)) )
(assert (= l0 Nil) )
(check-sat)
