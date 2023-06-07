
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
(assert (and (= l1 l2) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l2 l2)) )
(assert (not (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Cons l0) (= l3 Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(check-sat)
