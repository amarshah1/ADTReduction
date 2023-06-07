
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
(assert (and (= l1 Nil) (is-Nil l1) (= l0 Nil)) )
(assert (or (is-Nil l2) (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l0 l2) (= l2 l1)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons l2)) )
(assert (or (= l0 l3) (is-Cons l2) (is-Cons l2) (= l0 l0)) )
(assert (or (is-Nil l3) (= l3 l0)) )
(assert (is-Cons Nil) )
(check-sat)
