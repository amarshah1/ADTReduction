
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
(assert (not (= l0 Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l2 l0) (= l0 Nil)) )
(assert (and (= l3 l3) (= l3 Nil) (is-Cons Nil) (= l0 l0)) )
(assert (or (is-Nil Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (or (= l3 l3) (is-Cons Nil) (is-Cons l2)) )
(check-sat)
