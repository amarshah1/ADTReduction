
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
(assert (and (is-Nil Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (and (is-Cons l3) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 l2) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(assert (or (= l0 l1) (= l3 Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
