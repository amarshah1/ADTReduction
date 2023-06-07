
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
(assert (= l1 Nil) )
(assert (= l2 Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 l1) (= l3 l2) (is-Cons l1)) )
(assert (not (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l1 l0) (= l3 Nil)) )
(check-sat)
