
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
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
