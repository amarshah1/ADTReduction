
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
(assert (or (= l3 Nil) (= l3 l2) (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 l3) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Cons l0)) )
(assert (is-Nil Nil) )
(check-sat)
