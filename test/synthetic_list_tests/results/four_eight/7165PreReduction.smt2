
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
(assert (and (= l0 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (= l3 l1) (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (not (is-Cons l2)) )
(assert (or (is-Nil Nil) (= l0 l3)) )
(assert (and (= l0 Nil) (is-Cons l3)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l1 l3) (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(check-sat)
