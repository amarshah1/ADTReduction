
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
(assert (or (= l2 l2) (= l3 l3) (is-Cons Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (or (is-Cons l2) (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l2) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
