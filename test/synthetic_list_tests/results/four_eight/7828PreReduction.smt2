
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
(assert (and (= l1 l1) (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons l2) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l3 l3)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l2 l3) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l3 l0) (= l3 Nil) (= l3 l2)) )
(check-sat)
