
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
(assert (and (= l3 l2) (= l3 Nil) (= l0 l3) (is-Cons l0)) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l2 l0) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(check-sat)
