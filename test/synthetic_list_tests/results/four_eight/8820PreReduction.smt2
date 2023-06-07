
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
(assert (= l2 Nil) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (and (= l2 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (is-Cons l1) )
(assert (or (= l2 l3) (is-Nil Nil) (= l1 Nil)) )
(check-sat)