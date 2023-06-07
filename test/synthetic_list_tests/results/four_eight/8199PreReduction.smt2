
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
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (not (is-Nil Nil)) )
(assert (= l1 l3) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 l1) (is-Cons Nil)) )
(check-sat)
