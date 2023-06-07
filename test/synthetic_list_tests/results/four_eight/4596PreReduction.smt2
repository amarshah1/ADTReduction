
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
(assert (and (is-Cons Nil) (= l3 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l1 l2) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l1 l3) (is-Nil l1)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l1 l3) (is-Nil l0) (is-Cons Nil)) )
(assert (not (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(check-sat)
