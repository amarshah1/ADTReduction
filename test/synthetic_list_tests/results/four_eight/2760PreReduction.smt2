
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
(assert (and (is-Cons l3) (= l3 Nil) (is-Cons Nil) (= l2 l2)) )
(assert (and (= l3 Nil) (= l1 l0)) )
(assert (and (= l1 l0) (is-Cons Nil) (= l0 Nil) (= l1 l3)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (= l3 l1) )
(check-sat)