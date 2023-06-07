
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
(assert (and (= l3 l3) (is-Nil Nil) (is-Cons l0) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Cons l1)) )
(assert (= l3 Nil) )
(assert (and (is-Cons l0) (= l2 Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (or (= l1 l2) (= l0 Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(check-sat)
