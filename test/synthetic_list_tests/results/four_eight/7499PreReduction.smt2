
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
(assert (and (= l2 Nil) (= l3 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (or (is-Cons l3) (= l2 Nil) (= l1 l1) (= l2 Nil)) )
(assert (not (is-Cons l2)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (is-Cons l0)) )
(assert (= l3 l0) )
(assert (is-Cons Nil) )
(check-sat)
