
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
(assert (and (= l1 l2) (is-Cons l3) (is-Cons Nil)) )
(assert (not (= l0 l2)) )
(assert (is-Cons l2) )
(assert (= l0 Nil) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l1 l1) (= l3 Nil) (= l3 l0)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l3 Nil)) )
(check-sat)
