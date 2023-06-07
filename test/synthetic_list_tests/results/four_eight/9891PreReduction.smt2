
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
(assert (= l2 l0) )
(assert (= l1 l0) )
(assert (and (= l0 Nil) (= l2 l3) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (and (= l2 l3) (is-Cons l0) (= l3 Nil)) )
(assert (not (is-Nil l3)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(check-sat)
