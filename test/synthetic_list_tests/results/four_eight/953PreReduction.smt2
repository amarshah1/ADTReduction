
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
(assert (and (= l3 l2) (is-Cons l1) (= l3 l3)) )
(assert (or (is-Nil Nil) (= l3 l0) (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l1) (is-Cons Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 l3) (= l1 Nil) (= l2 Nil)) )
(check-sat)
