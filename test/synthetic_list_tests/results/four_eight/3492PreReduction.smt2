
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
(assert (and (= l1 l0) (= l3 l3) (is-Nil Nil) (= l3 l2)) )
(assert (is-Cons l3) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(check-sat)
