
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
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 l2)) )
(assert (or (= l1 Nil) (is-Cons l0) (= l2 l1) (is-Cons l2)) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Nil l0) (= l1 l0)) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(assert (and (= l1 l1) (= l3 Nil)) )
(assert (= l1 l0) )
(assert (and (is-Cons l3) (= l2 l1) (= l0 l0)) )
(check-sat)
