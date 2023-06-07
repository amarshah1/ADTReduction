
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
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (= l0 Nil) )
(assert (is-Cons l0) )
(assert (not (is-Cons l3)) )
(assert (and (= l0 l0) (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil l1)) )
(check-sat)
