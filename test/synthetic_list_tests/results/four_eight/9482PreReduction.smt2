
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
(assert (and (= l3 Nil) (is-Cons Nil) (= l1 l1) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (is-Cons l0) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (= l0 l2) )
(check-sat)
