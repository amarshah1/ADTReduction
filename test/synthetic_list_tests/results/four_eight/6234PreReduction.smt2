
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
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (not (= l2 l0)) )
(assert (or (= l0 Nil) (= l1 l1)) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(check-sat)
