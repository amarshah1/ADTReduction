
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
(assert (not (= l0 Nil)) )
(assert (= l2 l3) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (or (= l3 l1) (= l1 l2) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l0 l0)) )
(check-sat)