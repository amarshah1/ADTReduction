
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
(assert (and (= l2 Nil) (= l1 Nil) (= l1 Nil) (is-Cons l2)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l0 l3)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (is-Cons Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(check-sat)
