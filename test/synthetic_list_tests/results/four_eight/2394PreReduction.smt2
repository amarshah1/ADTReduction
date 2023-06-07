
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
(assert (and (= l0 l2) (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Nil l2) (= l1 Nil) (= l3 l0)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l1 l0) (= l1 Nil)) )
(assert (not (is-Cons l2)) )
(assert (is-Cons l2) )
(assert (and (is-Cons l3) (= l2 Nil) (is-Nil l1)) )
(assert (is-Nil Nil) )
(check-sat)