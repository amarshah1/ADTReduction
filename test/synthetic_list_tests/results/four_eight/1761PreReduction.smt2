
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
(assert (or (= l3 Nil) (is-Nil Nil) (= l3 l2) (= l0 l2)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l0 l1)) )
(assert (= l2 Nil) )
(assert (= l2 l3) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 Nil) (is-Cons l3)) )
(assert (and (= l3 Nil) (= l0 l3)) )
(check-sat)
