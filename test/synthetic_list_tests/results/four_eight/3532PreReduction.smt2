
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
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l3 l3) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (and (= l3 l3) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 l0) (= l0 Nil) (is-Cons Nil)) )
(assert (and (is-Cons l2) (= l0 Nil)) )
(assert (and (= l0 l3) (is-Nil Nil) (= l1 Nil)) )
(check-sat)