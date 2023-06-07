
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
(assert (and (= l3 l3) (is-Nil Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l3) (= l1 l2) (= l2 l1)) )
(assert (is-Cons l0) )
(check-sat)
