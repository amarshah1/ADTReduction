
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
(assert (or (= l2 Nil) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (= l1 l1) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 l1) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (not (is-Nil Nil)) )
(check-sat)
