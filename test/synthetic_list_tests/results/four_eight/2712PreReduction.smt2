
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
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons l1) (= l1 l0)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)