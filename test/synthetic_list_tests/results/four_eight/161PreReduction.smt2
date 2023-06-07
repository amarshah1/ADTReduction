
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
(assert (and (= l1 l0) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Cons l2) (is-Cons Nil) (= l3 l1) (= l3 Nil)) )
(assert (or (is-Nil l1) (= l2 l0)) )
(assert (not (is-Cons l3)) )
(assert (is-Cons l0) )
(assert (is-Nil l0) )
(assert (= l2 l2) )
(assert (or (= l2 l3) (= l1 l1) (= l1 Nil)) )
(check-sat)
