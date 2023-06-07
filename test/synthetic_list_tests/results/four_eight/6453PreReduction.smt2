
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
(assert (and (= l3 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (= l1 Nil) (= l3 l3)) )
(assert (= l3 Nil) )
(assert (or (is-Cons l3) (is-Cons l0)) )
(check-sat)
