
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
(assert (and (= l3 Nil) (= l0 l3) (= l1 Nil) (is-Cons l2)) )
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (= l2 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l3) (= l0 Nil) (= l3 Nil) (= l0 l2)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 l2) (= l2 l3)) )
(check-sat)
