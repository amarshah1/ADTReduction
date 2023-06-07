
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
(assert (is-Cons l2) )
(assert (not (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l3 l2)) )
(assert (is-Cons l0) )
(assert (not (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l3 Nil)) )
(check-sat)
