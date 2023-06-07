
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
(assert (= l2 Nil) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l2 l1)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l1) (= l2 l3) (= l2 Nil) (is-Nil Nil)) )
(check-sat)
