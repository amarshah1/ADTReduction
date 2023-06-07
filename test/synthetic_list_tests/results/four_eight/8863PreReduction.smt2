
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
(assert (and (= l3 Nil) (is-Cons l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (= l1 l1) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l0 l1) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(check-sat)