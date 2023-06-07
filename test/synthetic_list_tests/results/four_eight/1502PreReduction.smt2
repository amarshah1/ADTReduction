
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
(assert (or (= l1 Nil) (is-Cons l0)) )
(assert (not (= l2 l0)) )
(assert (= l1 Nil) )
(assert (= l3 Nil) )
(assert (and (= l3 l2) (= l2 Nil) (= l1 Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l3) (= l0 Nil) (is-Nil Nil) (is-Cons l0)) )
(assert (= l0 Nil) )
(check-sat)