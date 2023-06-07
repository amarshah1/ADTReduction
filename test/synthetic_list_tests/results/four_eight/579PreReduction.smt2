
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
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l0 l1) (is-Nil Nil)) )
(assert (and (is-Cons l2) (= l1 l3) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(check-sat)
