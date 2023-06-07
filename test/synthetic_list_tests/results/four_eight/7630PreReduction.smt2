
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
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (not (= l2 l2)) )
(assert (is-Cons l2) )
(assert (is-Cons l0) )
(assert (and (= l0 Nil) (is-Nil l2)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
