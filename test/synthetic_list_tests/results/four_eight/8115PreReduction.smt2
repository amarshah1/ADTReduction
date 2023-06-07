
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
(assert (and (is-Cons l3) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l1 l0) (is-Cons l3)) )
(assert (and (= l2 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons l3) (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l1 l3) (is-Cons l2)) )
(assert (= l1 Nil) )
(check-sat)
