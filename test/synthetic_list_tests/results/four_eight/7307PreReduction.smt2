
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
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (= l3 Nil)) )
(assert (and (= l1 l2) (= l1 Nil) (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (or (= l0 l3) (= l1 l0) (= l1 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Cons l2) (= l1 Nil)) )
(check-sat)
