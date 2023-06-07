
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
(assert (and (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l3 l0) (is-Cons l3)) )
(assert (not (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 l0) (= l3 Nil) (= l3 Nil)) )
(check-sat)
