
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
(assert (and (= l2 l1) (is-Cons l1)) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l1 l2) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(check-sat)
