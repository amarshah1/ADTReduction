
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
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l2 l2) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l1 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 l3) (= l1 Nil) (is-Cons l1) (= l3 l1)) )
(assert (is-Cons l2) )
(check-sat)
