
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
(assert (= l1 Nil) )
(assert (not (is-Nil l0)) )
(assert (= l0 l1) )
(assert (not (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l3) )
(check-sat)
