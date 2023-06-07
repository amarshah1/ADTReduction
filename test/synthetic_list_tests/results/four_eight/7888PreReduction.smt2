
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
(assert (and (= l3 Nil) (= l2 l1) (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l0 l1) (= l3 l0) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 l3)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)