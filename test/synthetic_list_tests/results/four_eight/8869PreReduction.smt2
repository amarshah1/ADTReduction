
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
(assert (and (= l2 Nil) (= l3 Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (= l3 l2) )
(assert (or (is-Cons Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l3 l1)) )
(assert (and (= l2 l1) (is-Cons l2)) )
(assert (not (= l0 Nil)) )
(check-sat)
