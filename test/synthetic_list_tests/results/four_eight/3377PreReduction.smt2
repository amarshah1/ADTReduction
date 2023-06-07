
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
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l1 l3) (= l0 l3)) )
(assert (or (= l2 Nil) (= l1 l1)) )
(assert (= l0 l1) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l2 l3)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l0 Nil) (is-Cons l0)) )
(assert (and (= l2 l2) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
