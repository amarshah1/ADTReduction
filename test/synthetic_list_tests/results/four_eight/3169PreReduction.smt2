
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
(assert (and (= l3 Nil) (= l2 l0)) )
(assert (= l1 l0) )
(assert (not (is-Cons Nil)) )
(assert (not (= l3 l2)) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(check-sat)
