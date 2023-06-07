
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
(assert (= l2 Nil) )
(assert (is-Cons l3) )
(assert (= l1 l0) )
(assert (or (= l2 l2) (is-Nil Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l1 l3)) )
(assert (not (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil)) )
(check-sat)