
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
(assert (or (= l0 l2) (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Cons l1)) )
(assert (= l0 l1) )
(assert (not (= l0 l2)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
