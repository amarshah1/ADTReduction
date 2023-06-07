
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
(assert (and (is-Cons l1) (= l1 l1) (= l2 l2)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (= l2 l0) (is-Cons Nil) (= l1 l3)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
