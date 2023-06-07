
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
(assert (= l3 l1) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 l3)) )
(assert (= l2 Nil) )
(assert (is-Cons l2) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 l3)) )
(assert (or (is-Cons Nil) (is-Cons l2) (is-Cons Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
