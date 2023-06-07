
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
(assert (and (= l1 Nil) (= l1 Nil)) )
(assert (or (= l1 l0) (= l0 Nil) (= l1 Nil)) )
(assert (and (is-Cons l2) (is-Cons l2) (= l1 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (and (is-Nil l1) (= l0 Nil) (= l0 l0) (is-Nil l1)) )
(assert (is-Nil l2) )
(check-sat)
