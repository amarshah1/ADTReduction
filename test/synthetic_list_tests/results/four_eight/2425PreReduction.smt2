
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
(assert (or (= l0 Nil) (= l3 l2) (is-Cons l0)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 l2) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (and (= l0 l0) (= l1 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (is-Cons l1) (= l1 Nil)) )
(check-sat)
