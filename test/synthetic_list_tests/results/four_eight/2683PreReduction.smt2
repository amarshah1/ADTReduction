
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
(assert (= l0 l0) )
(assert (and (is-Cons l2) (= l0 l1) (= l3 Nil)) )
(assert (and (= l3 l1) (is-Cons Nil) (= l1 Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l1 l2) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(check-sat)
