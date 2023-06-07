
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
(assert (or (= l3 l3) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l0 l3)) )
(assert (is-Cons l2) )
(assert (= l1 l1) )
(assert (and (is-Cons l3) (is-Nil l2) (= l3 Nil) (= l3 Nil)) )
(assert (is-Nil l0) )
(check-sat)
