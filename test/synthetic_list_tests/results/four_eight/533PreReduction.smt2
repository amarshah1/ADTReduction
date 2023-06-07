
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
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 l3) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (= l3 l3) (= l1 l1) (= l3 l1) (= l1 Nil)) )
(assert (not (= l1 l3)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(check-sat)
