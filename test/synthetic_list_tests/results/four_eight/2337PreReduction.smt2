
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
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(assert (and (= l0 l0) (is-Cons l3) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (= l0 l0) )
(assert (not (= l0 l2)) )
(check-sat)
