
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
(assert (not (= l3 Nil)) )
(assert (and (= l3 l1) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l3) (is-Nil Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 l3) (= l3 l3) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l3 l1) (= l3 Nil) (= l1 Nil)) )
(assert (and (is-Cons l3) (= l0 l3) (is-Cons l1)) )
(check-sat)