
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
(assert (= l3 l3) )
(assert (and (= l3 Nil) (= l0 l2) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (= l0 Nil) (= l0 l1)) )
(assert (= l3 l0) )
(assert (and (= l2 l2) (is-Nil Nil)) )
(assert (not (= l3 l2)) )
(check-sat)