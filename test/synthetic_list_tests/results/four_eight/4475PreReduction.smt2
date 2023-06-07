
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
(assert (= l2 l2) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (= l3 l1) )
(check-sat)