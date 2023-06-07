
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
(assert (and (= l3 Nil) (is-Nil l0) (is-Cons l1) (= l1 Nil)) )
(assert (or (= l3 l2) (= l0 Nil)) )
(assert (and (= l2 l1) (= l2 Nil)) )
(assert (or (= l0 l1) (= l0 l0) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil l1) )
(check-sat)
