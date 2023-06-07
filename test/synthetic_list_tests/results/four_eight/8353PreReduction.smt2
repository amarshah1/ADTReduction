
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
(assert (= l1 l3) )
(assert (is-Cons l0) )
(assert (and (is-Nil l0) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l2 l2) (= l2 Nil)) )
(assert (= l2 l2) )
(assert (is-Nil l2) )
(assert (not (= l0 Nil)) )
(assert (= l3 l0) )
(check-sat)
