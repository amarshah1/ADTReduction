
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
(assert (is-Nil l2) )
(assert (or (= l3 Nil) (= l0 l3) (= l1 Nil) (is-Cons l3)) )
(assert (or (is-Cons l2) (= l2 l1) (= l1 Nil)) )
(assert (or (is-Nil l0) (= l1 l1) (= l2 l0)) )
(assert (not (= l3 l2)) )
(assert (is-Cons l3) )
(assert (and (= l2 Nil) (is-Cons l2) (= l2 l0)) )
(check-sat)