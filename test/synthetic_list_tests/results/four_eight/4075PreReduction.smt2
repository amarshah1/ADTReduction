
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
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Cons l1) (= l3 Nil)) )
(assert (not (= l3 l2)) )
(assert (or (is-Cons l1) (is-Cons Nil)) )
(assert (and (= l0 l0) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l2 l2) (= l3 Nil) (= l1 Nil)) )
(check-sat)
