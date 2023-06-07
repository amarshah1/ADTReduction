
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
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l1 l1) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l3 l3) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
