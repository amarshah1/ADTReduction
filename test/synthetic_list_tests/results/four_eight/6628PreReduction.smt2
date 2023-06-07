
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
(assert (or (is-Cons Nil) (= l1 l1)) )
(assert (not (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l3 l1) (= l0 Nil) (is-Cons l3) (is-Cons l3)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l2 l0) (= l3 l1)) )
(check-sat)
