
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
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 l0)) )
(assert (is-Cons l0) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l1 Nil) (= l2 l1)) )
(assert (and (= l0 l3) (= l3 Nil) (= l2 Nil) (= l0 l2)) )
(assert (not (= l0 Nil)) )
(assert (= l2 l0) )
(assert (is-Nil Nil) )
(check-sat)
