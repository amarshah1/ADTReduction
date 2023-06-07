
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
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l2 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l3 Nil) (= l2 l2)) )
(assert (= l1 l3) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l3) )
(check-sat)
