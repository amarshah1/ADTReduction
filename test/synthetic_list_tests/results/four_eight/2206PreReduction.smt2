
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
(assert (or (= l2 l3) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l0 Nil) (= l3 l2)) )
(assert (and (= l3 Nil) (= l1 l0) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
