
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
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (and (is-Cons l3) (= l2 l3) (= l0 Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(check-sat)
