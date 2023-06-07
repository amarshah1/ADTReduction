
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
(assert (= l3 l2) )
(assert (or (= l1 l2) (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l0 l0)) )
(assert (and (is-Cons l0) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (or (= l1 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l2 l0) (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Nil l2) (= l0 Nil)) )
(check-sat)
