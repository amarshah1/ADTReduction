
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
(assert (and (is-Cons Nil) (= l1 l2) (= l2 Nil) (is-Nil l0)) )
(assert (and (= l2 Nil) (is-Cons l1) (= l2 l3)) )
(assert (and (= l3 l2) (is-Cons Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons l2) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
