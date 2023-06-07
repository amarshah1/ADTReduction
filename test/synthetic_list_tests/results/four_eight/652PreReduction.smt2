
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
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (or (= l3 Nil) (= l3 l0) (= l3 l1) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (= l1 l2) )
(assert (is-Cons l1) )
(assert (or (is-Nil l3) (is-Cons l2) (= l0 l3)) )
(assert (not (= l1 Nil)) )
(check-sat)
