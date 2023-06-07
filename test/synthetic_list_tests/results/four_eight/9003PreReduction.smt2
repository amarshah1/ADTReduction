
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
(assert (= l3 l2) )
(assert (and (= l0 l3) (is-Cons Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l2 l3) (= l0 Nil) (is-Nil Nil) (= l0 l1)) )
(assert (or (= l1 l2) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l2 l3) (= l2 l3) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (and (is-Cons Nil) (= l2 Nil)) )
(check-sat)
