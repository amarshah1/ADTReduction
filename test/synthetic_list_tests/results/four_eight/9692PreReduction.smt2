
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
(assert (and (= l0 l3) (= l3 Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (or (is-Cons l3) (= l2 l3) (is-Cons Nil)) )
(assert (or (= l1 l2) (= l1 l1) (= l1 l2) (is-Cons Nil)) )
(check-sat)
