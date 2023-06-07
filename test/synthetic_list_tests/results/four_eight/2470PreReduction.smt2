
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
(assert (or (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil l0) (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (= l3 l3)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (or (= l3 Nil) (= l2 Nil)) )
(check-sat)
