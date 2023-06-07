
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
(assert (or (= l1 Nil) (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l1 l2) (is-Nil Nil) (= l1 l2)) )
(assert (= l3 l1) )
(assert (is-Cons Nil) )
(assert (= l3 l1) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l1 l1) (= l1 Nil)) )
(check-sat)
