
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
(assert (and (= l3 l0) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l3 l0)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Cons l1) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l3 l0) (= l2 l0)) )
(check-sat)
