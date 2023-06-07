
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
(assert (and (= l3 Nil) (= l0 Nil) (is-Cons l1)) )
(assert (or (is-Cons Nil) (is-Cons l3) (= l1 l1)) )
(assert (not (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l0 Nil) (= l0 l1) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
