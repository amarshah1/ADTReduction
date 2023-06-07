
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
(assert (not (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (is-Cons l0) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l0 l2)) )
(assert (or (= l0 l2) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons l3) )
(assert (is-Nil l2) )
(check-sat)
