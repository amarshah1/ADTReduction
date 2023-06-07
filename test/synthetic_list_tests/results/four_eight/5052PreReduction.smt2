
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
(assert (or (is-Nil Nil) (is-Cons Nil) (= l2 l1) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 Nil) (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l3 l2)) )
(check-sat)
