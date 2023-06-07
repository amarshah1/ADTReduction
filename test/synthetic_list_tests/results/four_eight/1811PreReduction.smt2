
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
(assert (not (= l0 l1)) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (= l3 Nil) )
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons l2) (= l2 l3)) )
(check-sat)
