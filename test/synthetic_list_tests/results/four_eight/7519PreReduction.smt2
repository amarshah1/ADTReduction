
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
(assert (= l3 Nil) )
(assert (or (= l2 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (= l3 l2) (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l2 l3) (= l0 l1) (is-Nil l0) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (not (= l3 Nil)) )
(check-sat)
