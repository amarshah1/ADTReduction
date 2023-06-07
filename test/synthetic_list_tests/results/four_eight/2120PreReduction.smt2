
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
(assert (or (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (or (is-Cons l1) (= l0 l2) (is-Nil l2) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(check-sat)
