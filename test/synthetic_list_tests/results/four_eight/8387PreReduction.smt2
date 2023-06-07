
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
(assert (is-Cons l2) )
(assert (and (= l0 l2) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l1 l3) (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l0 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons l0) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (= l2 l1)) )
(check-sat)
